import assert from "node:assert/strict";
import { test } from "node:test";
import { randomUUID } from "node:crypto";
import { tmpdir } from "node:os";
import { join } from "node:path";
import * as c from "../js-out/calcit.core.mjs";
import { parse_command, read_string_field, read_bool_field_or, create_process_$x_, _$s_registry } from "../js-out/app.manager.mjs";
import { database, encode_database } from "../js-out/app.schema.mjs";
import { updater } from "../js-out/app.updater.mjs";

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

test("spawn and exec preserve synthetic stdout/stderr and completion", { timeout: 5000 }, async t => {
  const tags = c.init_tags(["command", "cwd", "pid"]);
  const source = "process.stdout.write(process.env.TERMINA_SYNTHETIC);process.stderr.write('合成-stderr');";
  const command = `TERMINA_SYNTHETIC=:合成 ${JSON.stringify(process.execPath)} -e ${JSON.stringify(source)}`;
  const forward = "process.stdin.on('data', chunk => process.stdout.write(chunk));";
  for (const input of [command, `${command} | ${JSON.stringify(process.execPath)} -e ${JSON.stringify(forward)}`]) {
    const data = c.assoc(c.assoc(c.parse_cirru_edn("{}"), tags.command, input), tags.cwd, process.cwd());
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
  }
});

test("missing program reports a session message without registering an absent PID", { timeout: 5000 }, async () => {
  const tags = c.init_tags(["command", "cwd", "jump?", "enlarge?", "sessions", "messages", "text"]);
  const missing = join(tmpdir(), `termina031-missing-${randomUUID()}`, "program");
  const data = c.assoc(c.assoc(c.parse_cirru_edn('{} (:jump? true) (:enlarge? true)'), tags.command, JSON.stringify(missing)), tags.cwd, process.cwd());
  const registry = c._$n_atom_$o_deref(_$s_registry);
  const events = [];
  let state = updater(database, c.parse_cirru_edn(":: :session/connect"), "failure-session", "connect", 1000);
  await new Promise(resolve => {
    create_process_$x_(data, (operation, sid) => {
      events.push(c._$n_enum_$o_nth(operation, 0).value);
      state = updater(state, operation, sid, "start-failure", 1001);
      resolve();
    }, "failure-session");
  });
  assert.deepEqual(events, ["session/add-message"]);
  assert.ok(c._$n__$e_(registry, c._$n_atom_$o_deref(_$s_registry)));
  const read = (value, key) => c.option_$o_unwrap(c.get(value, tags[key] ?? key));
  const message = read(read(read(read(encode_database(state), "sessions"), "failure-session"), "messages"), "start-failure");
  assert.match(read(message, "text"), /Unable to start command:.*ENOENT/);
});
