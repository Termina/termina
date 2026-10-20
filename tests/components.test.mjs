import assert from 'node:assert/strict';
import test from 'node:test';
import { execFileSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import * as c from '../out-page/calcit.core.mjs';
import { comp_command_button, comp_command_editor, comp_command_row } from '../out-page/app.comp.command.mjs';
import { comp_process, find_urls } from '../out-page/app.comp.process.mjs';
import { comp_process_detail, hide_thread_info } from '../out-page/app.comp.process-detail.mjs';
import { comp_profile } from '../out-page/app.comp.profile.mjs';
import { comp_home, lower_case } from '../out-page/app.comp.home.mjs';
import { comp_history, format_date_time } from '../out-page/app.comp.history.mjs';
import dayjs from 'dayjs';
import { comp_workflow_container, comp_workflow_editor } from '../out-page/app.comp.workflow.mjs';
import { comp_container, decode_view } from '../out-page/app.comp.container.mjs';
import { decode_changes } from '../out-page/app.schema.mjs';
import { patch_twig } from '../out-page/recollect.patch.mjs';

const tags = c.init_tags(['tree', 'children', 'node', 'key', 'name', 'attrs', 'event', 'input', 'click', 'value', 'inner-text', 'title', 'code', 'path', 'command', 'cwd', 'router', 'count', 'color']);
const read = (value, key) => c.option_$o_unwrap(c.get(value, tags[key]));
const part = (value, index) => c._$n_enum_$o_nth(value, index);
const parse = c.parse_cirru_edn;
function elements(component) {
  const found = [];
  function visit(node) {
    const value = part(node, 1);
    if (value.fields.some(tag => tag.value === 'tree')) {
      visit(c.option_$o_unwrap(read(value, 'tree')));
      return;
    }
    found.push(value);
    for (const child of c.listToArray(read(value, 'children'))) {
      const optional = read(child, 'node');
      if (c.option_$o_some_$q_(optional)) visit(c.option_$o_unwrap(optional));
    }
  }
  visit(c.option_$o_unwrap(read(component, 'tree')));
  return found;
}
const values = nodes => nodes.map(node => c.listToArray(read(node, 'attrs')).map(c.listToArray).find(([key]) => key.value === 'value')[1]);
const attr = (node, name) => c.listToArray(read(node, 'attrs')).map(c.listToArray).find(([key]) => key.value === name)?.[1];

test('workflow button preserves command paths and dispatches one Enum without running commands', () => {
  const workflow = parse(`{}
  :name |合成工作流
  :base-dir |/synthetic
  :commands $ {}
    |c1 $ {} (:id |c1) (:code |never-run-one) (:path |./one) (:title |一)
    |c2 $ {} (:id |c2) (:code |never-run-two) (:path |./two) (:title |二)`);
  const button = elements(comp_command_button(workflow))[0];
  const calls = [];
  read(read(button, 'event'), 'click')(parse('{}'), (...args) => calls.push(args));
  assert.equal(calls.length, 2);
  assert.ok(calls.every(args => args.length === 1 && part(args[0], 0).value === 'effect/run'));
  assert.deepEqual(calls.map(([op]) => [read(part(op, 1), 'command'), read(part(op, 1), 'cwd')]).sort(), [
    ['never-run-one', '/synthetic/one'], ['never-run-two', '/synthetic/two'],
  ]);
});

test('command editor preserves legacy draft values, edits each field and submits two arguments', () => {
  const cursor = parse('[] :editor 7');
  const state = parse('{} (:title |合成🐈) (:code |never-run) (:path |./sandbox)');
  const states = c.parse_cirru_edn('{} (:cursor $ [] :editor 7) (:data $ {} (:title |合成🐈) (:code |never-run) (:path |./sandbox))');
  const calls = [], submissions = [];
  const dispatch = (...args) => calls.push(args);
  const nodes = elements(comp_command_editor(states, parse(':: :none'), (...args) => submissions.push(args)));
  const inputs = nodes.filter(node => read(node, 'name').value === 'input');
  assert.deepEqual(values(inputs), ['合成🐈', 'never-run', './sandbox']);
  for (const [index, field] of ['title', 'code', 'path'].entries()) {
    read(read(inputs[index], 'event'), 'input')(parse('{} (:value |更新🌱)'), dispatch);
    const args = calls.at(-1);
    assert.equal(args.length, 1);
    assert.equal(part(args[0], 0).value, 'states');
    assert.ok(c._$n__$e_(part(args[0], 1), cursor));
    assert.equal(read(part(args[0], 2), field), '更新🌱');
  }
  const submit = nodes.find(node => read(node, 'name').value === 'button');
  read(read(submit, 'event'), 'click')(parse('{}'), dispatch);
  assert.equal(submissions.length, 1);
  assert.equal(submissions[0].length, 2);
  assert.ok(c._$n__$e_(submissions[0][0], state));
  assert.equal(submissions[0][1], dispatch);
  assert.equal(part(calls.at(-1)[0], 2), null);
});

test('editing a workflow command dispatches the original payload and closes the modal with dispatch', () => {
  const states = parse('{} (:cursor $ [] :commands |c1) (:data $ {} (:pop? true))');
  const command = parse('{} (:id |c1) (:title |合成) (:code |never-run) (:path |./sandbox)');
  const nodes = elements(comp_command_row(states, command, 'w1'));
  const submit = nodes.find(node => read(node, 'name').value === 'button');
  assert.ok(submit);
  const calls = [];
  read(read(submit, 'event'), 'click')(parse('{}'), (...args) => calls.push(args));
  assert.equal(calls.length, 3);
  assert.ok(calls.every(args => args.length === 1));
  assert.equal(part(calls[0][0], 0).value, 'workflow/edit-command');
  const [workflowId, commandId, draft] = c.listToArray(part(calls[0][0], 1));
  assert.equal(workflowId, 'w1');
  assert.equal(commandId, 'c1');
  assert.equal(read(draft, 'code'), 'never-run');
  assert.ok(c._$n__$e_(part(calls[1][0], 2), parse('{} (:pop? false)')));
  assert.equal(part(calls[2][0], 2), null);
});

const processFixture = () => parse(`{}
  :pid 42
  :title nil
  :command |never-run
  :cwd |/synthetic
  :alive? false
  :started-at 1000
  :content $ []
    {} (:type :stdout) (:data |重复日志)
    {} (:type :stderr) (:data |重复日志)
    {} (:type :stdout) (:data |other)`);

test('process summary keeps legacy title fallback and numeric PID in single-Enum events', () => {
  const nodes = elements(comp_process(processFixture()));
  assert.ok(nodes.some(node => attr(node, 'inner-text') === 'Task'));
  const enlarge = nodes.find(node => attr(node, 'inner-text') === 'Enlarge');
  const calls = [];
  read(read(enlarge, 'event'), 'click')(parse('{}'), (...args) => calls.push(args));
  assert.equal(calls.length, 1);
  assert.equal(calls[0].length, 1);
  assert.equal(part(calls[0][0], 0).value, 'session/enlarge');
  assert.equal(part(calls[0][0], 1), 42);
});

test('log HTTP links are matched and rendered without fetching them', () => {
  const text = '查看 https://example.com/test?x=1&y=2 和 http://example.org/log';
  const expected = ['https://example.com/test?x=1&y=2', 'http://example.org/log'];
  assert.deepEqual(c.listToArray(find_urls(text)), expected);
  assert.deepEqual(c.listToArray(find_urls('普通日志🐈')), []);
  const content = parse(`[] $ {} (:type :stdout) (:data "|${text}")`);
  const process = c.assoc(processFixture(), c.init_tags(['content']).content, content);
  const links = elements(comp_process(process)).map(node => attr(node, 'href')).filter(value => value !== undefined);
  assert.deepEqual(links, expected);
});

test('log detail preserves duplicate lines with distinct keys and restores typed filter state', () => {
  const process = processFixture();
  const states = parse('{} (:cursor $ [] :detail 42) (:data nil)');
  const nodes = elements(comp_process_detail(states, process));
  const repeated = nodes.filter(node => attr(node, 'inner-text') === '重复日志');
  assert.equal(repeated.length, 2);
  const repeatedKeys = nodes.flatMap(node => c.listToArray(read(node, 'children'))).filter(child => {
    const optional = read(child, 'node');
    if (!c.option_$o_some_$q_(optional)) return false;
    const value = part(c.option_$o_unwrap(optional), 1);
    return value.fields.some(tag => tag.value === 'attrs') && attr(value, 'inner-text') === '重复日志';
  }).map(child => read(child, 'key'));
  assert.deepEqual(repeatedKeys, [0, 1]);
  const filter = nodes.find(node => read(node, 'name').value === 'input' && attr(node, 'value') === '');
  const calls = [];
  read(read(filter, 'event'), 'input')(parse('{} (:value |重复)'), (...args) => calls.push(args));
  assert.equal(calls.length, 1);
  assert.equal(calls[0].length, 1);
  const operation = calls[0][0];
  assert.equal(part(operation, 0).value, 'states');
  assert.ok(c._$n__$e_(part(operation, 1), parse('[] :detail 42')));
  const updated = c.assoc(states, c.init_tags(['data']).data, part(operation, 2));
  const filtered = elements(comp_process_detail(updated, process));
  assert.equal(filtered.filter(node => attr(node, 'inner-text') === '重复日志').length, 2);
  assert.equal(filtered.filter(node => attr(node, 'inner-text') === 'other').length, 0);
});

test('profile renders typed member names without erasing the key/value relation', () => {
  const nodes = elements(comp_profile(parse('{} (:name |合成🐈)'), parse('{} (|s1 |甲) (|s2 |乙)')));
  const texts = nodes.map(node => attr(node, 'inner-text'));
  assert.ok(texts.includes('Hello! 合成🐈'));
  assert.ok(texts.includes('甲'));
  assert.ok(texts.includes('乙'));
});

test('String FFI boundaries retain colon-prefixed text, Unicode and the original local date format', () => {
  for (const text of ['ABC', ':READY', '中文🌱', 'İ']) {
    assert.equal(lower_case(text), text.toLowerCase());
  }
  assert.equal(hide_thread_info('2026-10-21 10:00:00 [INFO 42] 消息🌱'), '消息🌱');
  assert.equal(hide_thread_info(':READY'), ':READY');
  for (const timestamp of [0, Date.UTC(2026, 9, 21, 12, 34, 56)]) {
    assert.equal(format_date_time(timestamp), dayjs(timestamp).format('MM-DD HH:mm:ss'));
  }
});

function historyFixture() {
  return parse('[] $ {} (:id |h1) (:title nil) (:started-at 0) (:command |never-run) (:cwd |/synthetic)');
}

test('nonempty history renders its actual fields and clear retains the existing wire operation', () => {
  const nodes = elements(comp_history(historyFixture()));
  const texts = nodes.map(node => attr(node, 'inner-text'));
  assert.ok(texts.includes(dayjs(0).format('MM-DD HH:mm:ss')));
  assert.ok(texts.includes('Task'));
  assert.ok(texts.includes('never-run'));
  assert.ok(texts.includes('/synthetic'));
  const clear = nodes.find(node => attr(node, 'inner-text') === 'Clear');
  const calls = [];
  read(read(clear, 'event'), 'click')(parse('{}'), (...args) => calls.push(args));
  assert.equal(calls.length, 1);
  assert.equal(calls[0].length, 1);
  assert.ok(c._$n__$e_(calls[0][0], parse(':: :process/clear-history nil')));
});

function workflowsFixture() {
  return parse(`{}
  |w2 $ {} (:id |w2) (:name |Beta) (:base-dir |/synthetic/beta) (:commands $ {})
  |w1 $ {} (:id |w1) (:name |Alpha) (:base-dir |/synthetic/alpha) (:commands $ {})`);
}

test('home handles legacy absent enlargement, preserves process ordering and filters workflow names', () => {
  const extraTags = c.init_tags(['processes', 'workflows', 'enlarge-view', 'data']);
  let processes = parse('{}');
  for (const [pid, alive, time] of [[1, true, 100], [2, true, 200], [3, false, 300], [4, false, 50]]) {
    processes = c.assoc(processes, pid, parse(`{} (:pid ${pid}) (:title |P${pid}) (:command |never-run) (:cwd |/synthetic) (:alive? ${alive}) (:started-at ${time}) (:content $ [])`));
  }
  let router = c.assoc(parse('{} (:enlarge-view nil)'), extraTags.processes, processes);
  router = c.assoc(router, extraTags.workflows, workflowsFixture());
  const states = parse('{} (:cursor $ [] :home) (:data nil)');
  const enlargePids = nodes => nodes.filter(node => attr(node, 'inner-text') === 'Enlarge').map(node => {
    const calls = [];
    read(read(node, 'event'), 'click')(parse('{}'), (...args) => calls.push(args));
    assert.equal(calls.length, 1);
    assert.equal(calls[0].length, 1);
    return part(calls[0][0], 1);
  });
  const initial = elements(comp_home(states, router));
  assert.deepEqual(enlargePids(initial), [1, 2, 3, 4]);
  assert.deepEqual(enlargePids(elements(comp_home(states, c.assoc(router, extraTags['enlarge-view'], false)))), [1, 2, 3, 4]);
  assert.deepEqual(enlargePids(elements(comp_home(states, c.assoc(router, extraTags['enlarge-view'], 2)))), [1, 3, 4]);
  assert.deepEqual(initial.map(node => attr(node, 'inner-text')).filter(text => text === 'Alpha' || text === 'Beta'), ['Alpha', 'Beta']);
  const query = initial.find(node => read(node, 'name').value === 'input' && attr(node, 'placeholder') === 'filter...');
  const calls = [];
  read(read(query, 'event'), 'input')(parse('{} (:value |alp)'), (...args) => calls.push(args));
  assert.equal(calls[0].length, 1);
  const updated = c.assoc(states, extraTags.data, part(calls[0][0], 2));
  const filtered = elements(comp_home(updated, router)).map(node => attr(node, 'inner-text'));
  assert.ok(filtered.includes('Alpha'));
  assert.ok(!filtered.includes('Beta'));
});

test('workflow list restores a nil focus, then preserves typed selection across rerender', () => {
  const states = parse('{} (:cursor $ [] :workflows) (:data $ {} (:focused-id nil) (:base-workflow nil) (:pop? false))');
  const workflows = workflowsFixture();
  const initial = elements(comp_workflow_container(states, workflows));
  assert.ok(initial.some(node => attr(node, 'inner-text') === 'Nothing'));
  const entry = initial.find(node => c.listToArray(read(node, 'children')).some(child => {
    const optional = read(child, 'node');
    if (!c.option_$o_some_$q_(optional)) return false;
    const value = part(c.option_$o_unwrap(optional), 1);
    return value.fields.some(tag => tag.value === 'attrs') && attr(value, 'inner-text') === 'Alpha';
  }));
  assert.ok(entry);
  const calls = [];
  read(read(entry, 'event'), 'click')(parse('{}'), (...args) => calls.push(args));
  assert.equal(calls.length, 1);
  assert.equal(calls[0].length, 1);
  const updated = c.assoc(states, c.init_tags(['data']).data, part(calls[0][0], 2));
  assert.ok(elements(comp_workflow_container(updated, workflows)).some(node => attr(node, 'inner-text') === 'Commands'));
});

test('workflow editor preserves create/edit payloads and calls close with dispatch', () => {
  const states = parse('{} (:cursor $ [] :editor) (:data nil)');
  for (const [base, expectedTag] of [[parse(':: :none'), 'workflow/create'], [parse(':: :some $ {} (:id |w1) (:name |Alpha) (:base-dir |/synthetic/alpha)'), 'workflow/edit']]) {
    const calls = [], closes = [];
    const dispatch = (...args) => calls.push(args);
    const nodes = elements(comp_workflow_editor(states, base, (...args) => closes.push(args)));
    const submit = nodes.find(node => read(node, 'name').value === 'button');
    read(read(submit, 'event'), 'click')(parse('{}'), dispatch);
    assert.equal(part(calls[0][0], 0).value, expectedTag);
    assert.ok(calls.every(args => args.length === 1));
    const payload = part(calls[0][0], 1);
    const fieldTags = c.init_tags(['name', 'base-dir', 'id']);
    assert.equal(c.option_$o_unwrap(c.get(payload, fieldTags.name)), expectedTag === 'workflow/create' ? '' : 'Alpha');
    assert.equal(c.option_$o_unwrap(c.get(payload, fieldTags['base-dir'])), expectedTag === 'workflow/create' ? './' : '/synthetic/alpha');
    if (expectedTag === 'workflow/edit') assert.equal(c.option_$o_unwrap(c.get(payload, fieldTags.id)), 'w1');
    assert.deepEqual(closes, [[dispatch]]);
  }
});

function storeFixture(route, loggedIn = true) {
  let raw = parse(`{}
  :users $ {} $ |u1 $ {} (:name |Ada) (:password |synthetic)
  :sessions $ {}
    |s1 $ {} (:user-id |u1)
    |s2 $ {} (:user-id nil)
  :processes $ {}
  :histories $ []`);
  raw = c.assoc(raw, c.init_tags(['workflows']).workflows, workflowsFixture());
  if (route === 'history') raw = c.assoc(raw, c.init_tags(['histories']).histories, historyFixture());
  const session = parse(`{} (:user-id ${loggedIn ? '|u1' : 'nil'}) (:messages $ {}) (:enlarge-view nil)
  :router $ {} (:name :${route}) (:params $ {} (:id 42))`);
  const fieldTags = c.init_tags(['db', 'session']);
  const input = c.assoc(c.assoc(parse('{}'), fieldTags.db, raw), fieldTags.session, session);
  const script = `
    import * as c from './js-out/calcit.core.mjs';
    import { decode_database } from './js-out/app.schema.mjs';
    import { twig_container } from './js-out/app.twig.container.mjs';
    import { diff_twig } from './js-out/recollect.diff.mjs';
    const tags = c.init_tags(['db', 'session']);
    const fixture = c.parse_cirru_edn(process.argv[1]);
    const db = decode_database(c.option_$o_unwrap(c.get(fixture, tags.db)));
    const session = c.option_$o_unwrap(c.get(fixture, tags.session));
    const store = twig_container(db, session, c.parse_cirru_edn('[]'));
    const old = c.assoc(store, c.init_tags(['histories']).histories, c.parse_cirru_edn('[] |old'));
    const options = c.parse_cirru_edn('{} (:key :id)');
    console.log(c.format_cirru_edn(c._$L_(store, diff_twig(null, store, options), old, diff_twig(old, store, options))));
  `;
  // Use the real wire format between independently generated runtime graphs.
  const output = execFileSync(process.execPath, ['--input-type=module', '-e', script, c.format_cirru_edn(input)], {
    cwd: fileURLToPath(new URL('../', import.meta.url)),
    env: { PATH: process.env.PATH ?? '' },
    encoding: 'utf8',
    timeout: 10000,
  });
  const [store, initial, old, incremental] = c.listToArray(parse(output));
  assert.ok(c._$n__$e_(patch_twig(null, decode_changes(initial)), store), 'initial wire patch');
  assert.ok(c._$n__$e_(patch_twig(old, decode_changes(incremental)), store), 'incremental wire patch');
  return store;
}

test('offline reconnect dispatches the zero-payload connection Enum', () => {
  const nodes = elements(comp_container(parse('{}'), null));
  const target = nodes.find(node => c.listToArray(read(node, 'children')).some(child => {
    const optional = read(child, 'node');
    if (!c.option_$o_some_$q_(optional)) return false;
    const value = part(c.option_$o_unwrap(optional), 1);
    return value.fields.some(tag => tag.value === 'attrs') && attr(value, 'inner-text') === 'No connection...';
  }));
  assert.ok(target);
  const calls = [];
  read(read(target, 'event'), 'click')(parse('{}'), (...args) => calls.push(args));
  assert.equal(calls.length, 1);
  assert.equal(calls[0].length, 1);
  assert.ok(c._$n__$e_(calls[0][0], parse(':: :effect/connect')));
});

test('actual guest server projection preserves absent fields rather than inventing navigation data', () => {
  const wire = storeFixture('home', false);
  const view = decode_view(wire);
  assert.equal(c.option_$o_none_$q_(read(view, 'router')), true);
  assert.equal(c.option_$o_none_$q_(read(view, 'count')), true);
  assert.equal(c.option_$o_none_$q_(read(view, 'color')), true);
  const texts = elements(comp_container(parse('{}'), wire)).map(node => attr(node, 'inner-text'));
  assert.ok(texts.includes('Guest'));
  assert.ok(texts.includes('Log in'));
  assert.ok(!texts.includes('nil'));
});

test('actual authenticated server projections render all routes and preserve unknown wire fields', () => {
  for (const route of ['home', 'workflows', 'history', 'profile', 'process', 'unknown']) {
    const futureTag = c.init_tags(['future']).future;
    const future = parse('[] |保留扩展 7');
    const wire = c.assoc(storeFixture(route), futureTag, future);
    const nodes = elements(comp_container(parse('{}'), wire));
    const texts = nodes.map(node => attr(node, 'inner-text'));
    assert.ok(texts.includes('Me'), route);
    assert.ok(c._$n__$e_(c.option_$o_unwrap(c.get(wire, futureTag)), future));
    if (route === 'profile') assert.ok(texts.includes('Hello! Ada'));
    if (route === 'process') assert.ok(texts.includes('Process unavailable'));
  }
});
