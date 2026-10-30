#!/bin/bash
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-lake-hash-reproduction-retry-20261029"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"' EXIT
set -e
date -u
hostname
cp "$base/source/lean/.lake/packages/proofwidgets/widget/package-lock.json" "$run/package-lock.json"
cp "$HOME/paper1-audit-hash.lean" "$run/AuditHash.lean"
sha256sum "$run/package-lock.json" "$run/AuditHash.lean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$run"
lean AuditHash.lean
sha256sum package-lock.json.hash "$base/source/lean/.lake/packages/proofwidgets/widget/package-lock.json.hash"
cmp package-lock.json.hash "$base/source/lean/.lake/packages/proofwidgets/widget/package-lock.json.hash"
printf 'PASS: isolated Lake text hash matches the observed artifact\n'