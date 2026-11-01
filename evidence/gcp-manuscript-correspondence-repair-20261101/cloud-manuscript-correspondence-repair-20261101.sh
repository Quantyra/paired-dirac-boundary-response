#!/usr/bin/env bash
# Exact-source Lean replay of the repaired manuscript formalization on the
# Quantyra GCP builder; never run locally.
#
# Scope: the (2.4) block encoding at the printed signs (with its transpose
# structure, the solved first block row and the source placement) and the
# printed (4.11) constant. See manuscript/lean-certification-ledger.md.
set -euo pipefail

run="$HOME/quantyra-space-runs/p1-manuscript-correspondence-repair-20261101-r3"
deps="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/source/lean"
toolchain="$HOME/quantyra-space-runs/paper1-domain-exact-tree-f7b70c1-20261029/toolchain/lean-4.30.0-linux/bin"
source="$HOME/ManuscriptFormal.lean"
source_sha='dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13'
mathlib_sha='c5ea00351c28e24afc9f0f84379aa41082b1188f'

mkdir "$run"
exec > >(tee "$run/run.log") 2>&1
trap 'code=$?; printf "%s\n" "$code" > "$run/exit-code"; date -u > "$run/finished-utc"' EXIT

date -u
hostname
test -x "$toolchain/lean"
test "$(git -C "$deps/.lake/packages/mathlib" rev-parse HEAD)" = "$mathlib_sha"
printf '%s  %s\n' "$source_sha" "$source" | sha256sum -c -

export PATH="$toolchain:$PATH"
lean --version | tee "$run/lean-version.txt"
grep -F 'version 4.30.0' "$run/lean-version.txt"
grep -F 'd024af099ca4bf2c86f649261ebf59565dc8c622' "$run/lean-version.txt"
lake --version | tee "$run/lake-version.txt"

pkg_root="$deps/.lake/packages"
lean_path=""
for pkg in batteries Qq aesop proofwidgets importGraph LeanSearchClient plausible mathlib; do
  pkg_lib="$pkg_root/$pkg/.lake/build/lib/lean"
  test -d "$pkg_lib"
  lean_path="${lean_path:+$lean_path:}$pkg_lib"
done
lean_path="$lean_path:$deps/.lake/build/lib/lean:$(dirname "$toolchain")/lib/lean"
export LEAN_PATH="$run:$lean_path"
printf '%s\n' "$lean_path" > "$run/lean-path.txt"

cp "$source" "$run/ManuscriptFormal.lean"
cd "$run"
sha256sum ManuscriptFormal.lean | tee lean-source-sha256.txt
lean -o ManuscriptFormal.olean ManuscriptFormal.lean 2>&1 | tee lean.log

theorems="skew_adjoint_inner_self_zero resolvent_shift_norm_lower
resolvent_norm_bound square_shift_norm_lower square_resolvent_norm_bound
congruenced_gap_composition exp_neg_half_mul_sq zero_sector_gap_printed
converted_series_difference flat_conversion_cubic_coefficient
flat_conversion_cutoff_coefficient matrix_reference_position_identity
s1_vplus s1_vminus s3_vplus s3_vminus real_sinh_eq_zero
transportedPlane_eq_smul pminus_transportedPlane transportedPlane_not_local
transportedPlane_parallel_iff tower_derivative_coefficient multiplier_identity
first_graph_inequality second_graph_inequality pauli1_sq pauli2_sq pauli3_sq
pauli2_mul_pauli1 pauli2_mul_pauli3 pauli1_transpose pauli2_transpose
pauli3_transpose kLower_eq_transpose kzetaManuscript_entries
kzetaManuscript_lower_right i_pauli2_mul_neg_i_pauli2 flux_of_first_row
kzetaSource_eta kzetaSource_xi discrete_variation_of_constants
discrete_variation_of_constants_matrix prop_add flat_pointwise_reduction
flat_finite_time_sum_bound"
for theorem in $theorems; do
  grep -F "PairedDirac.Manuscript.$theorem' depends on axioms" lean.log
done
if grep -q 'sorryAx' lean.log; then
  echo 'Unexpected sorryAx in Lean output.' >&2
  exit 1
fi
sha256sum -c lean-source-sha256.txt
sha256sum ManuscriptFormal.olean | tee olean-sha256.txt
