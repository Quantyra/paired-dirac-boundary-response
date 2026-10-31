#!/bin/bash
set -euo pipefail
run="$HOME/quantyra-space-runs/paper1-scaled-skew-closed-20261030a"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
surj="$HOME/quantyra-space-runs/paper1-mass-skew-surjective-20261030d"
prior="$HOME/quantyra-space-runs/paper1-partner-skew-20261030a"
scaling="$HOME/quantyra-space-runs/paper1-mass-skew-scaling-20261030a"
operator="$HOME/quantyra-space-runs/paper1-partner-skew-operator-20261030a"
trace="$HOME/quantyra-space-runs/paper1-trace-sourceonly-f1f1c26-20261029/source/lean"
mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT
cp "$HOME/ScaledSkewClosedDraft.lean" "$run/"
sha256sum "$run/ScaledSkewClosedDraft.lean" "$surj/MassSkewSurjectiveDraft.olean" "$surj/GraphProjectionDraft.olean" "$operator/PartnerSkewOperatorDraft.olean" "$prior/PartnerSkewDraft.olean" "$prior/LeftUnitarySquare.olean" "$trace/PositiveSquareDraft.olean" "$trace/SquareDomainDraft.olean"
export PATH="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin:$PATH"
lean --version
cd "$base/source/lean"
lake --no-cache env printenv LEAN_PATH > "$run/lean-path.txt"
export LEAN_PATH="$run:$scaling:$surj:$operator:$prior:$trace:$(cat "$run/lean-path.txt")"
cd "$run"
lean -o ScaledSkewClosedDraft.olean ScaledSkewClosedDraft.lean
