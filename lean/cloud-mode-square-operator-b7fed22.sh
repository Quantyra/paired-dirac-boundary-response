#!/bin/bash
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-mode-square-operator-b7fed22-20261029"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
prior="$HOME/quantyra-space-runs/paper1-trace-sourceonly-f1f1c26-20261029/source/lean"
mode="$HOME/quantyra-space-runs/paper1-mode-adjoint-9cf878f-20261029"
adjoint="$HOME/quantyra-space-runs/paper1-mode-action-3f239e6-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"' EXIT
set -e
cp "$HOME/ModeSquareActionDraft-2efe177.lean" "$run/ModeSquareActionDraft.lean"
cp "$HOME/ModeSquareOperatorDraft-b7fed22.lean" "$run/ModeSquareOperatorDraft.lean"
sha256sum "$run"/*.lean "$adjoint/ModeAdjointDraft.olean" "$prior/PositiveSquareDraft.olean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$run:$adjoint:$mode:$prior:$lean_path"
lean -o ModeSquareActionDraft.olean ModeSquareActionDraft.lean
lean ModeSquareOperatorDraft.lean
