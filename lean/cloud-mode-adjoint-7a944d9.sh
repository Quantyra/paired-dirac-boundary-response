#!/bin/bash
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-mode-adjoint-7a944d9-20261029"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
prior="$HOME/quantyra-space-runs/paper1-trace-sourceonly-f1f1c26-20261029/source/lean"
mode="$HOME/quantyra-space-runs/paper1-mode-adjoint-9cf878f-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"' EXIT
set -e
cp "$HOME/ModeAdjointDraft-7a944d9.lean" "$run/ModeAdjointDraft.lean"
sha256sum "$run/ModeAdjointDraft.lean" "$mode/ModeOperatorDraft.olean" "$mode/ModeDomainDraft.olean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$mode:$prior:$lean_path"
lean ModeAdjointDraft.lean
