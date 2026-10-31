#!/usr/bin/env bash
# Exact-source Lean replay on the Quantyra GCP builder; never run locally.
set -euo pipefail

run="$HOME/quantyra-space-runs/paper1-curved-scalar-contact-jet-fc6ab5be-20261031"
base="$HOME/quantyra-space-runs/paper1-sourceonly-6858aa7-20261029"
toolchain="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin"
source="$HOME/CurvedScalarContactJet.lean"

mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT

date -u
hostname
test "$(cat "$base/exit-code")" = 0
test "$(git -C "$base/source" rev-parse HEAD)" = 6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5
test -f "$base/source/lean/lake-manifest.json"
test -x "$toolchain/lean"
printf '%s  %s\n' \
  'fc6ab5beacd79776992ff4b6cfffa9e54b493f216ba3eec0316eb0123fd1453e' \
  "$source" | sha256sum -c -

export PATH="$toolchain:$PATH"
lean --version | tee "$run/lean-version.txt"
grep -F 'version 4.30.0' "$run/lean-version.txt"
lake --version | tee "$run/lake-version.txt"

cd "$base/source/lean"
sha256sum lake-manifest.json | tee "$run/lake-manifest-sha256.txt"
lean_path="$(lake --no-cache env printenv LEAN_PATH)"
export LEAN_PATH="$run:$lean_path"
cp "$source" "$run/CurvedScalarContactJet.lean"
cd "$run"
sha256sum CurvedScalarContactJet.lean | tee "$run/lean-source-sha256.txt"
lean -o CurvedScalarContactJet.olean CurvedScalarContactJet.lean 2>&1 | tee "$run/lean.log"
grep -F 'curved_scalar_contact_jet_identity' "$run/lean.log"
if grep -q 'sorryAx' "$run/lean.log"; then
  echo 'Unexpected sorryAx in Lean output.' >&2
  exit 1
fi
sha256sum -c "$run/lean-source-sha256.txt"
sha256sum CurvedScalarContactJet.olean | tee "$run/olean-sha256.txt"
