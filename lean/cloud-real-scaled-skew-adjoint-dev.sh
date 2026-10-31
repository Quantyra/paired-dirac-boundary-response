#!/usr/bin/env bash
set -euo pipefail

run="$HOME/quantyra-space-runs/paper1-real-scaled-skew-adjoint-20261030c"
prev="$HOME/quantyra-space-runs/paper1-scaled-skew-closed-20261030b"
scaling="$HOME/quantyra-space-runs/paper1-mass-skew-scaling-20261030a"
surj="$HOME/quantyra-space-runs/paper1-mass-skew-surjective-20261030d"
operator="$HOME/quantyra-space-runs/paper1-partner-skew-operator-20261030a"
prior="$HOME/quantyra-space-runs/paper1-partner-skew-20261030a"
trace="$HOME/quantyra-space-runs/paper1-trace-sourceonly-f1f1c26-20261029/source/lean"

mkdir "$run"
cp "$HOME/RealScaledSkewAdjointDraft.lean" "$run/"
cp "$prev/ScaledSkewClosedDraft.olean" "$run/"
cd "$run"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
export LEAN_PATH="$PWD:$prev:$scaling:$surj:$operator:$prior:$trace:$(cat "$prev/lean-path.txt")"

lean --version
lean -o RealScaledSkewAdjointDraft.olean RealScaledSkewAdjointDraft.lean 2>&1 | tee run.log
