#!/bin/bash
set -euo pipefail
run="$HOME/quantyra-space-runs/paper1-lapse-trace-domain-20261030a"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
trace="$HOME/quantyra-space-runs/paper1-trace-sourceonly-f1f1c26-20261029/source/lean"
prior="$HOME/quantyra-space-runs/paper1-lapse-adjoint-domain-20261030c"
mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"' EXIT
cp "$HOME/LapseTraceDomainDraft.lean" "$HOME/TraceDomainDraft.lean" "$run/"
cp "$prior/LapseAdjointDomainDraft.lean" "$prior/LapseSquareDomainDraft.lean" "$run/"
sha256sum "$run"/*.lean "$trace/PositiveSquareDraft.olean" "$trace/CongruenceSquareDraft.olean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
cd "$run"
export LEAN_PATH="$run:$trace:$lean_path"
lean -o LapseSquareDomainDraft.olean LapseSquareDomainDraft.lean
lean -o LapseAdjointDomainDraft.olean LapseAdjointDomainDraft.lean
lean -o TraceDomainDraft.olean TraceDomainDraft.lean
lean LapseTraceDomainDraft.lean