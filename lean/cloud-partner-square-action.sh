#!/bin/bash
set -euo pipefail
run="$HOME/quantyra-space-runs/paper1-partner-square-action-20261030b"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
cp "$HOME/PartnerSquareDomain.lean" "$HOME/PartnerSquareActionDraft.lean" "$run/"
sha256sum "$run"/*.lean
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lake --no-cache env printenv LEAN_PATH > "$run/lean-path.txt"
export LEAN_PATH="$run:$HOME/quantyra-space-runs/paper1-trace-sourceonly-f1f1c26-20261029/source/lean:$(cat "$run/lean-path.txt")"
cd "$run"
lean -o PartnerSquareDomain.olean PartnerSquareDomain.lean
lean -o PartnerSquareActionDraft.olean PartnerSquareActionDraft.lean
