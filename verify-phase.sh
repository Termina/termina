#!/usr/bin/env bash
set -euo pipefail
phase="$1"
test "$phase" = before || test "$phase" = after
export MIGRATION_PHASE="$phase"
mkdir -p "acceptance/$phase"
node inspect-formal.mjs
original_blob="$(git hash-object calcit.cirru)"
calcit edit format
test "$(git hash-object calcit.cirru)" = "$original_blob"
calcit --check-only --keep-going --format json > "acceptance/$phase/server-reachable.json"
calcit --entry page --check-only --keep-going --format json > "acceptance/$phase/page-reachable.json"
node inspect-formal.mjs targets
for entry in default page; do
  calcit --entry "$entry" analyze weak-types --only dynamic-method --summary-only --format json > "acceptance/$phase/$entry-dynamic-methods.json"
  jq -e '.data.summary.findings == 0' "acceptance/$phase/$entry-dynamic-methods.json"
  calcit --entry "$entry" analyze weak-types --only deprecated-call --summary-only --format json > "acceptance/$phase/$entry-deprecated.json"
  calcit --entry "$entry" fix --workflow strict --verify --format json > "acceptance/$phase/$entry-strict.json" 2> "acceptance/$phase/$entry-strict.stderr"
  jq -e '.data.workflow.status == "passed" and .diagnostics == []' "acceptance/$phase/$entry-strict.json"
done
calcit test --require-match --format json > "acceptance/$phase/native.json"
jq -e '.selected == 4 and .executed == 4 and .passed == 4 and .failed == 0' "acceptance/$phase/native.json"
yarn compile-server
yarn compile-page
if [[ "$phase" == before ]]; then
  set +e
  node --test --test-reporter=tap tests/*.test.mjs > "acceptance/$phase/node-tests.log"
  regression_status="$?"
  set -e
  node migrate-source.mjs expect-red "$regression_status"
else
  node --test --test-reporter=tap tests/*.test.mjs > "acceptance/$phase/node-tests.log"
fi
yarn release-page
node inspect-formal.mjs
node migrate-source.mjs "$phase-js"
