import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,readdirSync,statSync,mkdirSync} from 'node:fs';
import {createHash} from 'node:crypto';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const run=(exe,args)=>execFileSync(exe,args,{encoding:'utf8',maxBuffer:32e6,stdio:['pipe','pipe','pipe']});
assert.equal(run('calcit',['-v']).trim(),'0.30.1');
const p=JSON.parse(readFileSync('reviewed-source.json')),m=JSON.parse(readFileSync('reviewed-migration.json'));
const blob=()=>run('git',['hash-object','calcit.cirru']).trim();
mkdirSync('acceptance',{recursive:true});
const mode=process.argv[2];
if(mode==='apply'){
 assert.equal(blob(),p.blob);run('node',['inspect-formal.mjs']);assert.equal(m.operations.length,88);
 const sites=m.operations.filter(op=>op[0]==='tree');
 for(const [i,op]of sites.entries())writeFileSync('acceptance/before-subtree-'+i+'.json',run('calcit',['tree','show',op[2],'--path',op[4],'--format','json']));
 writeFileSync('acceptance/operations.json',JSON.stringify(m.operations));
 const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
 const preview=JSON.parse(run('calcit',[...args,'--dry-run']));assert.ok(preview.scoped_revision);assert.equal(blob(),p.blob);
 writeFileSync('acceptance/preview.json',JSON.stringify(preview));writeFileSync('acceptance/applied.json',run('calcit',[...args,'--expect-revision',preview.scoped_revision]));
 writeFileSync('acceptance/modified-blob.txt',blob());assert.notEqual(blob(),p.blob);
 // Literal match moves fallback positions; inspect complete changed definitions rather than reusing obsolete child paths.
 for(const [i,id]of [...new Set(sites.map(op=>op[2]))].entries())writeFileSync('acceptance/after-definition-'+i+'.json',run('calcit',['query','def',id,'--format','json']));
 execFileSync('node',['inspect-formal.mjs'],{env:{...process.env,MIGRATION_PHASE:'after'},stdio:'inherit'});
}else if(['before-js','after-js'].includes(mode)){
 const files=[];function visit(dir){for(const name of readdirSync(dir).sort()){const path=dir+'/'+name;if(statSync(path).isDirectory())visit(path);else if(path.endsWith('.mjs'))files.push({path,sha256:createHash('sha256').update(readFileSync(path)).digest('hex')});}}
 visit('js-out');visit('out-page');assert.ok(files.length>0);
 writeFileSync('acceptance/'+mode+'.json',JSON.stringify(files));
 if(mode==='after-js'){
  const before=JSON.parse(readFileSync('acceptance/before-js.json'));assert.deepEqual(files.map(f=>f.path),before.map(f=>f.path));
  const changed=files.filter((f,i)=>f.sha256!==before[i].sha256).map(f=>f.path);
  const allowed=new Set(['out-page/app.comp.process-detail.mjs']);
  assert.ok(changed.every(f=>allowed.has(f)),'unexpected generated changes: '+JSON.stringify(changed));
  writeFileSync('acceptance/generated-js-evidence.json',JSON.stringify({files:files.length,changed,unrelatedFilesIdentical:true}));
 }
}else throw Error('unknown mode');
