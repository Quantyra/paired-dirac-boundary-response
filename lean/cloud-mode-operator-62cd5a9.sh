#!/bin/bash
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-mode-operator-62cd5a9-20261029"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
prior="$HOME/quantyra-space-runs/paper1-trace-sourceonly-f1f1c26-20261029/source/lean"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"' EXIT
set -e
cp "$HOME/ModeDomainDraft-62cd5a9.lean" "$run/ModeDomainDraft.lean"
cp "$HOME/ModeOperatorDraft-62cd5a9.lean" "$run/ModeOperatorDraft.lean"
sha256sum "$run"/*.lean "$prior/SquareDomainDraft.olean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$run:$prior:$lean_path"
lean -o ModeDomainDraft.olean ModeDomainDraft.lean
lean ModeOperatorDraft.lean
