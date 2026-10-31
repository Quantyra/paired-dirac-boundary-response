#!/usr/bin/env bash
# Exact-source Lean replay on the Quantyra GCP builder; never run locally.
set -euo pipefail

run="$HOME/quantyra-space-runs/paper1-curved-scalar-contact-jet-6a952be2-20261031"
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
  '6a952be2f8139ac62cc6e1e84aef31bda5ccb814f080a57cb6b3b5ebb51255b3' \
  "$source" | sha256sum -c -

export PATH="$toolchain:$PATH"
lean --version | tee "$run/lean-version.txt"
grep -F 'version 4.30.0' "$run/lean-version.txt"
lake --version | tee "$run/lake-version.txt"

pkg_root="$base/source/lean/.lake/packages"
lean_path=""
for pkg in Cli batteries Qq aesop proofwidgets importGraph LeanSearchClient plausible mathlib; do
  pkg_lib="$pkg_root/$pkg/.lake/build/lib/lean"
  test -d "$pkg_lib"
  lean_path="${lean_path:+$lean_path:}$pkg_lib"
done
lean_path="$lean_path:$base/source/lean/.lake/build/lib/lean:$(dirname "$toolchain")/lib/lean"
export LEAN_PATH="$run:$lean_path"
cd "$base/source/lean"
cp "$source" "$run/CurvedScalarContactJet.lean"
cd "$run"
sha256sum CurvedScalarContactJet.lean | tee "$run/lean-source-sha256.txt"
lean -o CurvedScalarContactJet.olean CurvedScalarContactJet.lean 2>&1 | tee "$run/lean.log"
grep -F 'curved_scalar_contact_jet_identity' "$run/lean.log"
grep -F 'flat_local_coefficient_difference' "$run/lean.log"
if grep -q 'sorryAx' "$run/lean.log"; then
  echo 'Unexpected sorryAx in Lean output.' >&2
  exit 1
fi
sha256sum -c "$run/lean-source-sha256.txt"
sha256sum CurvedScalarContactJet.olean | tee "$run/olean-sha256.txt"
