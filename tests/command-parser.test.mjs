import assert from "node:assert/strict";
import { test } from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { parse_command, read_string_field, read_bool_field_or, create_process_$x_, _$s_registry } from "../js-out/app.manager.mjs";

test("only leading assignments are environment and values retain equals signs", () => {
  const cases = [
    ["echo hi", "echo", ["hi"], null],
    ['FLAG=ok echo "中文 空格"', "echo", ["中文 空格"], "ok"],
    ["echo FLAG=ok end", "echo", ["FLAG=ok", "end"], null],
    ["FLAG=a=b echo hi", "echo", ["hi"], "a=b"],
  ];
  for (const [input, program, args, flag] of cases) {
    const parsed = parse_command(input);
    assert.equal(c._$n_enum_$o_nth(parsed, 1), program, input);
    assert.deepEqual(c.listToArray(c._$n_enum_$o_nth(parsed, 2)), args, input);
    const environment = c._$n_enum_$o_nth(parsed, 3);
    assert.equal(c.option_$o_unwrap_or(c.get(environment, "FLAG"), null), flag, input);
  }
});

test("command fields retain actual text and explicit false, with fallback only for missing flags", () => {
  const tags = c.init_tags(["command", "enlarge?"]);
  const data = c.parse_cirru_edn('{} (:command "|echo 合成🌱") (:enlarge? false)');
  assert.equal(read_string_field(data, tags.command), "echo 合成🌱");
  assert.equal(read_bool_field_or(data, tags["enlarge?"], true), false);
  assert.equal(read_bool_field_or(c.parse_cirru_edn("{}"), tags["enlarge?"], true), true);
});

test("spawn receives native args and env, and forwards synthetic stdout/stderr and completion", { timeout: 5000 }, async t => {
  const tags = c.init_tags(["command", "cwd", "pid"]);
  const source = "process.stdout.write(process.env.TERMINA_SYNTHETIC);process.stderr.write('合成-stderr');";
  const command = `TERMINA_SYNTHETIC=:合成 ${JSON.stringify(process.execPath)} -e ${JSON.stringify(source)}`;
  const data = c.assoc(c.assoc(c.parse_cirru_edn("{}"), tags.command, command), tags.cwd, process.cwd());
  const events = [];
  t.after(() => {
    const created = events.find(event => event.kind === "process/create");
    if (!created) return;
    const pid = c.option_$o_unwrap(c.get(created.payload, tags.pid));
    const child = c.get(c._$n_atom_$o_deref(_$s_registry), pid);
    if (c.option_$o_some_$q_(child)) c.option_$o_unwrap(child).kill("SIGTERM");
  });
  await new Promise(resolve => {
    create_process_$x_(data, (operation, sid) => {
      const kind = c._$n_enum_$o_nth(operation, 0).value;
      events.push({ kind, payload: c._$n_enum_$o_nth(operation, 1), sid });
      if (["process/stdout", "process/stderr", "process/finish"].every(expected => events.some(event => event.kind === expected))) resolve();
      return;
    }, "synthetic-session");
  });
  const output = kind => events.filter(event => event.kind === kind).map(event => c.listToArray(event.payload)[1]).join("");
  assert.equal(output("process/stdout"), ":合成");
  assert.equal(output("process/stderr"), "合成-stderr");
  assert.ok(events.every(event => event.sid === "synthetic-session"));
  assert.equal(events.filter(event => event.kind === "process/create").length, 1);
  assert.equal(events.filter(event => event.kind === "process/finish").length, 1);
});
