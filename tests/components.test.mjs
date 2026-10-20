import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../out-page/calcit.core.mjs';
import { comp_command_button, comp_command_editor, comp_command_row } from '../out-page/app.comp.command.mjs';

const tags = c.init_tags(['tree', 'children', 'node', 'name', 'attrs', 'event', 'input', 'click', 'value', 'title', 'code', 'path', 'command', 'cwd']);
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
