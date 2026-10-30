#!/bin/bash
set -euo pipefail
run="$HOME/quantyra-space-runs/paper1-partner-square-domain-20261030a"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
trace="$HOME/quantyra-space-runs/paper1-trace-sourceonly-f1f1c26-20261029/source/lean"
mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"' EXIT
cp "$HOME/PartnerSquareDomain.lean" "$run/PartnerSquareDomain.lean"
sha256sum "$run/PartnerSquareDomain.lean" "$trace/PositiveSquareDraft.olean" "$trace/SquareDomainDraft.olean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$trace:$lean_path"
lean PartnerSquareDomain.lean