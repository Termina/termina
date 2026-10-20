import assert from "node:assert/strict";
import test from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { database, decode_database, encode_database } from "../js-out/app.schema.mjs";
import { updater } from "../js-out/app.updater.mjs";

const tags = c.init_tags(["sessions", "users", "processes", "histories", "workflows", "user-id", "enlarge-view", "messages", "password", "commands", "code", "name", "content", "alive?", "command"]);
const read = (value, key) => c.option_$o_unwrap(c.get(value, tags[key] ?? key));
const wire = encode_database;
const apply = (state, operation, id = "event") => updater(state, c.parse_cirru_edn(operation), "s1", id, 1000);

test("database roundtrip preserves legacy Maps, numeric PIDs and unknown root extensions", () => {
  const original = c.parse_cirru_edn(`{}
  :sessions $ {} (|s1 $ {} (:user-id nil))
  :users $ {} (|u1 $ {} (:name |Ada) (:avatar nil))
  :processes $ {} (42 $ {} (:pid 42) (:content $ []))
  :workflows $ {}
  :histories $ []
  :future-extension $ [] |保留 nil 7`);
  const restored = encode_database(decode_database(original));
  assert.ok(c._$n__$e_(original, restored));
  assert.equal(c.option_$o_some_$q_(c.get(read(restored, "processes"), 42)), true);
});

test("session and account transitions keep message and login behavior", () => {
  let state = apply(database, ":: :session/connect", "connect");
  state = apply(state, ":: :session/enlarge 42");
  assert.equal(read(read(read(wire(state), "sessions"), "s1"), "enlarge-view"), 42);
  state = apply(state, ":: :session/enlarge nil");
  assert.equal(read(read(read(wire(state), "sessions"), "s1"), "enlarge-view"), null);
  state = apply(state, ":: :user/sign-up $ [] |Ada |synthetic-password", "user1");
  assert.equal(read(read(read(wire(state), "sessions"), "s1"), "user-id"), "user1");
  const stored = read(read(wire(state), "users"), "user1");
  assert.notEqual(read(stored, "password"), "synthetic-password");
  state = apply(state, ":: :user/log-out nil");
  assert.equal(read(read(read(wire(state), "sessions"), "s1"), "user-id"), null);
  state = apply(state, ":: :user/log-in $ [] |Ada |wrong-password", "bad-login");
  let session = read(read(wire(state), "sessions"), "s1");
  assert.equal(read(session, "user-id"), null);
  assert.equal(c.option_$o_some_$q_(c.get(read(session, "messages"), "bad-login")), true);
  state = apply(state, ":: :session/remove-message $ {} (:id |bad-login)");
  session = read(read(wire(state), "sessions"), "s1");
  assert.equal(c._$n_map_$o_count(read(session, "messages")), 0);
  state = apply(state, ":: :user/log-in $ [] |Ada |synthetic-password");
  assert.equal(read(read(read(wire(state), "sessions"), "s1"), "user-id"), "user1");
  state = apply(state, ":: :user/sign-up $ [] |Ada |another-password", "duplicate");
  assert.equal(c._$n_map_$o_count(read(wire(state), "users")), 1);
  state = apply(state, ":: :session/disconnect");
  assert.equal(c._$n_map_$o_count(read(wire(state), "sessions")), 0);
});

test("workflow and process transitions retain collection shapes and log data", () => {
  let state = apply(database, ":: :workflow/create $ {} (:name |Demo) (:base-dir |/synthetic)", "w1");
  state = apply(state, ":: :workflow/add-command $ {} (:workflow-id |w1) (:draft $ {} (:title |Check) (:path |.) (:code |echo-ok))", "cmd2");
  state = apply(state, ":: :workflow/edit-command $ [] |w1 |cmd2 $ {} (:code |echo-edited)");
  let workflow = read(read(wire(state), "workflows"), "w1");
  assert.equal(read(read(read(workflow, "commands"), "cmd2"), "code"), "echo-edited");
  state = apply(state, ":: :workflow/remove-command $ [] |w1 |cmd2");
  workflow = read(read(wire(state), "workflows"), "w1");
  assert.equal(c._$n_map_$o_count(read(workflow, "commands")), 1);
  state = apply(state, ":: :workflow/edit $ {} (:id |w1) (:name |Renamed)");
  assert.equal(read(read(read(wire(state), "workflows"), "w1"), "name"), "Renamed");
  state = apply(state, ":: :workflow/remove |w1");
  assert.equal(c._$n_map_$o_count(read(wire(state), "workflows")), 0);
  state = apply(state, ":: :process/create $ {} (:pid 42) (:command |echo-synthetic) (:cwd |/synthetic) (:title |Task)", "p1");
  for (const kind of ["stdout", "stderr", "error"]) {
    state = apply(state, `:: :process/${kind} $ [] 42 |合成🌱`);
  }
  let process = read(read(wire(state), "processes"), 42);
  assert.equal(c.listToArray(read(process, "content")).length, 3);
  assert.equal(c.listToArray(read(wire(state), "histories")).length, 1);
  state = apply(state, ":: :process/shorten-content 42");
  process = read(read(wire(state), "processes"), 42);
  assert.equal(c.listToArray(read(process, "content")).length, 0);
  state = apply(state, ":: :process/change-command 42 |updated-command");
  assert.equal(read(read(read(wire(state), "processes"), 42), "command"), "updated-command");
  state = apply(state, ":: :process/finish 42");
  state = apply(state, ":: :process/clear nil");
  assert.equal(c._$n_map_$o_count(read(wire(state), "processes")), 0);
  state = apply(state, ":: :process/clear-history nil");
  assert.equal(c.listToArray(read(wire(state), "histories")).length, 0);
});
