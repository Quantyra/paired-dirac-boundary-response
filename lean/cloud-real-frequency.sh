#!/bin/bash
set -euo pipefail
run="$HOME/quantyra-space-runs/paper1-real-frequency-20261030b"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
op="$HOME/quantyra-space-runs/paper1-mode-square-operator-b7fed22-20261029"
act="$HOME/quantyra-space-runs/paper1-mode-action-3f239e6-20261029"
trace="$HOME/quantyra-space-runs/paper1-trace-sourceonly-f1f1c26-20261029/source/lean"
mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"' EXIT
cp "$HOME/ModeRealFrequencyDraft.lean" "$run/ModeRealFrequencyDraft.lean"
cp "$op/ModeSquareOperatorDraft.lean" "$run/ModeSquareOperatorDraft.lean"
sha256sum "$run"/*.lean "$op/ModeSquareActionDraft.olean" "$act/ModeAdjointDraft.olean" "$trace/PositiveSquareDraft.olean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$run:$op:$act:$HOME/quantyra-space-runs/paper1-mode-adjoint-9cf878f-20261029:$trace:$lean_path"
lean -o ModeSquareOperatorDraft.olean ModeSquareOperatorDraft.lean
lean ModeRealFrequencyDraft.lean