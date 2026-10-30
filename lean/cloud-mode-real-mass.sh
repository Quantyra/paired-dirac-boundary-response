#!/bin/bash
set -euo pipefail
run="$HOME/quantyra-space-runs/paper1-mode-real-mass-20261030b"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
trace="$HOME/quantyra-space-runs/paper1-trace-sourceonly-f1f1c26-20261029/source/lean"
mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"' EXIT
cp "$HOME/ModeRealMassBridge.lean" "$HOME/LeftUnitarySquare.lean" "$run/"
sha256sum "$HOME/quantyra-space-runs/paper1-mode-adjoint-9cf878f-20261029/ModeOperatorDraft.olean" "$run/ModeRealMassBridge.lean" "$run/LeftUnitarySquare.lean" "$trace/PositiveSquareDraft.olean" "$trace/SquareDomainDraft.olean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$run:$HOME/quantyra-space-runs/paper1-mode-adjoint-9cf878f-20261029:$trace:$lean_path"
lean -o LeftUnitarySquare.olean LeftUnitarySquare.lean
lean ModeRealMassBridge.lean
