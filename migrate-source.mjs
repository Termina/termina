import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,readdirSync,statSync,mkdirSync,copyFileSync} from 'node:fs';
import {createHash} from 'node:crypto';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const run=(exe,args)=>execFileSync(exe,args,{encoding:'utf8',maxBuffer:32e6,stdio:['pipe','pipe','pipe']});assert.equal(run('calcit',['-v']).trim(),'0.30.1');
const p=JSON.parse(readFileSync('reviewed-source.json')),m=JSON.parse(readFileSync('reviewed-migration.json'));
const blob=()=>run('git',['hash-object','calcit.cirru']).trim();
const schema=n=>Array.isArray(n)?n[0]==='{}'?['{}',...n.slice(1).map(pair=>pair.map(schema)).sort((a,b)=>a[0].localeCompare(b[0]))]:n.map(schema):n;
assert.equal(readFileSync('yarn.lock','utf8'),p.originalLock);
const mode=process.argv[2];mkdirSync('acceptance',{recursive:true});
if(mode==='apply'){
 assert.equal(blob(),p.blob);run('node',['inspect-formal.mjs']);assert.equal(m.operations.length,1);
 for(const [name,expected]of Object.entries(m.core)){
  const raw=run('calcit',['query','def','calcit.core/'+name,'--format','json']),result=JSON.parse(raw);assert.deepEqual(result.diagnostics,[]);assert.deepEqual(result.data.code,expected.code);assert.deepEqual(schema(result.data.schema),schema(expected.schema));writeFileSync('acceptance/core-'+name+'.json',raw);
 }
 for(const [i,s]of m.sites.entries())writeFileSync('acceptance/before-subtree-'+i+'.json',run('calcit',['tree','show',s.id,'--path','@'+s.path.join('.'),'--format','json']));
 writeFileSync('acceptance/operations.json',JSON.stringify(m.operations));const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];const preview=JSON.parse(run('calcit',[...args,'--dry-run']));assert.ok(preview.scoped_revision);assert.equal(blob(),p.blob);writeFileSync('acceptance/preview.json',JSON.stringify(preview));writeFileSync('acceptance/applied.json',run('calcit',[...args,'--expect-revision',preview.scoped_revision]));writeFileSync('acceptance/modified-blob.txt',blob());assert.notEqual(blob(),p.blob);
 for(const [i,s]of m.sites.entries())writeFileSync('acceptance/after-subtree-'+i+'.json',run('calcit',['tree','show',s.id,'--path','@'+s.path.join('.'),'--format','json']));
 execFileSync('node',['inspect-formal.mjs'],{env:{...process.env,MIGRATION_PHASE:'after'},stdio:'inherit'});
}else if(['before-js','after-js'].includes(mode)){
 const files=[];function visit(dir){for(const name of readdirSync(dir).sort()){const path=dir+'/'+name;if(statSync(path).isDirectory())visit(path);else if(path.endsWith('.mjs'))files.push({path,sha256:createHash('sha256').update(readFileSync(path)).digest('hex')});}}visit('js-out');visit('out-page');assert.ok(files.length>0);writeFileSync('acceptance/'+mode+'.json',JSON.stringify(files));
 if(mode==='before-js')for(const f of files){const dest='/tmp/termina-final-before-js/'+f.path;mkdirSync(dest.slice(0,dest.lastIndexOf('/')),{recursive:true});copyFileSync(f.path,dest);}
 else{
  const before=JSON.parse(readFileSync('acceptance/before-js.json'));assert.deepEqual(files.map(f=>f.path),before.map(f=>f.path));const changed=files.filter((f,i)=>f.sha256!==before[i].sha256).map(f=>f.path);let diff='';for(const path of changed){try{run('diff',['-u','--label','before/'+path,'--label','after/'+path,'/tmp/termina-final-before-js/'+path,path]);}catch(error){assert.equal(error.status,1);diff+=error.stdout;}}
  writeFileSync('acceptance/generated-js.diff',diff);writeFileSync('acceptance/generated-js-evidence.json',JSON.stringify({files:files.length,changed,requiresIndependentReviewBeforeImport:true}));
 }
}else if(mode==='expect-red'){
 assert.equal(process.argv[3],'1');const log=readFileSync('acceptance/before/node-tests.log','utf8');
 for(const line of ['tests 25','pass 24','fail 1','skipped 0'])assert.match(log,new RegExp('^# '+line+'$','m'));
 assert.equal((log.match(/^not ok /gm)||[]).length,1);assert.match(log,/^not ok \d+ - clear shortcut operations retain wire payloads and omit absent process IDs$/m);
 writeFileSync('acceptance/shortcut-red.json',JSON.stringify({expectedRegressionOnly:true,test:'clear shortcut operations retain wire payloads and omit absent process IDs',tests:25,pass:24,fail:1,skipped:0}));
}else if(mode==='final-gates'){
 function extract(file){const text=readFileSync(file,'utf8');const marker='      - name: Validate source and both entry contracts\n        run: |\n';assert.equal(text.split(marker).length,2);const block=text.split(marker)[1].split('\n      - ')[0];return block.split('\n').map(l=>{assert.ok(!l||l.startsWith('          '));return l.slice(10);}).join('\n');}
 const upload=extract('.github/workflows/upload.yaml'),npm=extract('.github/workflows/npm-publish.yaml');const executable=s=>s.split('\n').filter(l=>l.trim()&&!l.trim().startsWith('#')).join('\n');assert.equal(executable(upload),executable(npm));writeFileSync('acceptance/final-validation.sh',upload);
 execFileSync('bash',['acceptance/final-validation.sh'],{stdio:'inherit',maxBuffer:32e6});
 assert.equal(blob(),readFileSync('acceptance/modified-blob.txt','utf8'));writeFileSync('acceptance/final-gates.json',JSON.stringify({bothWorkflowValidationBodiesEquivalent:true,executedExactFinalValidation:true,sourceUnchanged:true}));
}else throw Error('unknown mode');
