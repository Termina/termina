import assert from "node:assert/strict";
import { test } from "node:test";
import * as c from "../js-out/calcit.core.mjs";
import { parse_command } from "../js-out/app.manager.mjs";

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
