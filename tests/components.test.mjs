import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../out-page/calcit.core.mjs';
import { comp_command_button, comp_command_editor, comp_command_row } from '../out-page/app.comp.command.mjs';
import { comp_process, find_urls } from '../out-page/app.comp.process.mjs';
import { comp_process_detail } from '../out-page/app.comp.process-detail.mjs';
import { comp_profile } from '../out-page/app.comp.profile.mjs';

const tags = c.init_tags(['tree', 'children', 'node', 'key', 'name', 'attrs', 'event', 'input', 'click', 'value', 'inner-text', 'title', 'code', 'path', 'command', 'cwd']);
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
