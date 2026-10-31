#!/usr/bin/env bash
set -euo pipefail

run="$HOME/quantyra-space-runs/paper1-mass-skew-resolvent-assemble-20261030d"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
adj="$HOME/quantyra-space-runs/paper1-real-scaled-skew-adjoint-20261030c"
closed="$HOME/quantyra-space-runs/paper1-scaled-skew-closed-20261030b"
massop="$HOME/quantyra-space-runs/paper1-mass-skew-operator-lower-20261030c"
lower="$HOME/quantyra-space-runs/paper1-mass-skew-lower-20261030c"
massscale="$HOME/quantyra-space-runs/paper1-mass-skew-scaling-20261030a"
massesurj="$HOME/quantyra-space-runs/paper1-mass-skew-surjective-20261030d"
prior="$HOME/quantyra-space-runs/paper1-partner-skew-20261030a"
operator="$HOME/quantyra-space-runs/paper1-partner-skew-operator-20261030a"
trace="$HOME/quantyra-space-runs/paper1-trace-sourceonly-f1f1c26-20261029/source/lean"

mkdir "$run"
cp "$HOME/MassSkewResolventAssembleDraft.lean" "$run/"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
cd "$base/source/lean"
lake --no-cache env printenv LEAN_PATH > "$run/lean-path.txt"
cd "$run"
export LEAN_PATH="$run:$adj:$closed:$massop:$lower:$massscale:$massesurj:$prior:$operator:$trace:$(cat "$run/lean-path.txt")"

lean --version
lean -o MassSkewResolventAssembleDraft.olean MassSkewResolventAssembleDraft.lean 2>&1 | tee run.log
