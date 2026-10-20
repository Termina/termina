import assert from "node:assert/strict";
import { test } from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { parse_command, read_string_field, read_bool_field_or } from "../js-out/app.manager.mjs";

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
