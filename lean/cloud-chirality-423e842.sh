#!/bin/bash
set -uo pipefail
run="$HOME/quantyra-space-runs/paper1-chirality-423e842-20261029"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
previous="$HOME/quantyra-space-runs/paper1-chirality-1bab84d-20261029"
mkdir "$run" || exit $?
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"' EXIT
set -e
cp "$HOME/ProductChiralityDraft-423e842.lean" "$run/ProductChiralityDraft.lean"
sha256sum "$run/ProductChiralityDraft.lean" "$previous/BoundaryKernelDraft.olean" "$previous/OrbitMatrixDraft.olean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$previous:$lean_path"
lean ProductChiralityDraft.lean
