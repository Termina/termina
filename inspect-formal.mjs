import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync} from 'node:fs';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const run=(exe,args)=>execFileSync(exe,args,{encoding:'utf8',maxBuffer:32e6,stdio:['pipe','pipe','pipe']});assert.equal(run('calcit',['-v']).trim(),'0.30.1');
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):k==='schema'&&Array.isArray(x)&&x[0]==='{}'?['{}',...x.slice(1).map(norm).sort((a,b)=>a[0].localeCompare(b[0]))]:norm(x)])):v;
const q=(...args)=>{const r=JSON.parse(run('calcit',['query',...args,'--format','json']));assert.ok(!r.diagnostics?.some(d=>d.severity==='error'));return norm(r.data);};
const p=JSON.parse(readFileSync('reviewed-source.json'));mkdirSync('acceptance',{recursive:true});
for(const [f,s]of Object.entries(p.reviewedManifests))assert.equal(readFileSync(f,'utf8'),s,'manifest changed: '+f);
if(process.argv[2]==='manifests')process.exit(0);
if(process.argv[2]==='targets'){
 const nodeNamespaces=p.before.namespaces.map(n=>n.namespace).filter(n=>n==='app.manager'||n==='app.runtime'||n==='app.server'||n.startsWith('app.twig.')||n==='app.updater'||n.startsWith('app.updater.'));
 const browserNamespaces=p.before.namespaces.map(n=>n.namespace).filter(n=>!nodeNamespaces.includes(n));
 const checked=new Set(),counts={};
 for(const [entry,namespaces]of [['default',nodeNamespaces],['page',browserNamespaces]]){
  assert.ok(namespaces.length>0);const raw=run('calcit',['--entry',entry,'--check-only',...namespaces.flatMap(ns=>['--ns',ns]),'--format','json']);writeFileSync('acceptance/'+entry+'-namespaces.json',raw);const report=JSON.parse(raw);const rows=report.data.definitions;assert.ok(Array.isArray(rows));
  const expected=p.before.defs.filter(d=>namespaces.includes(d.id.split('/')[0]));assert.deepEqual([...report.data.checked_definition_ids].sort(),expected.map(d=>d.id).sort());assert.ok(!report.diagnostics.some(d=>d.severity==='error'));for(const d of expected){const row=rows.find(r=>r.id===d.id);assert.ok(row,'missing '+d.id);assert.equal(row.status,'passed',d.id);checked.add(d.id);}counts[entry]={namespaces,rootDefinitions:expected.length};
 }
 assert.deepEqual([...checked].sort(),p.before.defs.map(d=>d.id).sort());writeFileSync('acceptance/target-coverage.json',JSON.stringify({rootDefinitions:checked.size,allOriginalDefinitionsChecked:true,counts}));process.exit(0);
}
const nonRuntime=s=>s.replace(/^"(?:@calcit\/(?:procs|finger-vec)|@cirru\/parser\.ts)@[^\n]+":\n(?:  [^\n]*\n|\n)*/gm,'').replace(/"@calcit\/procs": "npm:[^"]+"/g,'"@calcit/procs": "npm:RUNTIME"');
const oldNonRuntime=nonRuntime(p.originalLock),newLock=readFileSync('yarn.lock','utf8');
assert.ok(oldNonRuntime.length>1000);assert.equal(nonRuntime(newLock),oldNonRuntime,'unrelated lock change');assert.match(newLock,/"@calcit\/procs@npm:0\.30\.1":/);
const namespaces=[],defs=[];for(const ns of q('ns').namespaces){const info=q('ns',ns);namespaces.push(info);const names=run('calcit',['query','defs',ns]).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);assert.equal(names.length,info.definition_count);for(const n of names)defs.push(q('def',ns+'/'+n));}
const actual={config:q('config'),namespaces,defs};assert.deepEqual(actual,norm(p.before));assert.equal(run('git',['hash-object','calcit.cirru']).trim(),p.blob);for(const [f,h]of Object.entries(p.ordinaryBlobs))assert.equal(run('git',['hash-object',f]).trim(),h,f);
writeFileSync('acceptance/actual-source.json',JSON.stringify(actual));
writeFileSync('acceptance/source-evidence.json',JSON.stringify({blob:p.blob,definitions:defs.length,namespaces:namespaces.length,fullViewsUnchanged:true,originalOrdinaryFilesUnchanged:true,exactManifests:true,runtimeOnlyLock:true}));
