# GCP exact-source replay: the (4.8) integral

Status: `lean/ManuscriptIntegral.lean` at SHA-256
`974c5c88b779a0576806ab90f48601de4aab87ff7d21a4dbfe1c5d3c1735a3c9`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptIntegral.olean` at SHA-256
`a70cd785814e0185ba8d8aa7289a6b59e1b1d765a7dc14bf146c472d45d5a9af`.
No `sorryAx` was reported; both declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

This is the first manuscript receipt whose run uses the **Space reference
Mathlib build**, because the paper1 exact-tree build has no measure theory.
The environment gap recorded in
[`gcp-manuscript-formal-20261101-r5`](../gcp-manuscript-formal-20261101-r5/README.md)
is therefore closed for this statement.

## Certified statements

- `flat_time_integral_bound` — for `r : ℝ → ℝ`, `C ≥ 0`, `t0 ≥ 0`, if
  `|r t| / t² ≤ C` on `(0,t0]` and the integrand is interval-integrable, then
  `∫_0^{t0} |r t| / t² ≤ C t0`. This is the passage from the cubic kernel
  bound (4.7) to the time-integrability statement (4.8), with
  `C = ‖u'''‖ ‖w'''‖ / (420 π)`.
- `flat_time_integral_bound_of_bounded` — the same conclusion with the
  integrability hypothesis **discharged**: measurability of `r` plus the
  pointwise bound suffice, via `MeasureTheory.IntegrableOn.of_bound` on the
  finite interval.

The proof uses `intervalIntegral.integral_mono_on` against the constant
majorant and `intervalIntegral.integral_const`; at `t = 0` the integrand is
`0` by Lean's division convention, so the pointwise inequality holds on the
whole closed interval.

## What this does not certify

Still open, and unchanged: the Fourier transform and Parseval step, the bound
`0 ≤ R2 ≤ min(x³/840, x²/120)`, the half/full-line norm relation, the
identification of `r_flat` with any physical response, Propositions 4.1 and
4.2, the continuum form of `(2.5)`, and all of Section 5. Proposition 4.3 is
therefore **partly** certified — its integral consequence yes, its
Fourier/all-frequency derivation no.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Remote run directory: `~/quantyra-space-runs/p1-manuscript-integral-20261101-r1`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Mathlib commit verified: `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Mathlib dependency root: `space-20261007T093129Z-retry1/packages`
  (the run asserts
  `.../Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.olean` exists)
- Source SHA-256: `974c5c88b779a0576806ab90f48601de4aab87ff7d21a4dbfe1c5d3c1735a3c9`
- OLean SHA-256: `a70cd785814e0185ba8d8aa7289a6b59e1b1d765a7dc14bf146c472d45d5a9af`
- Exit code: `0`
- Finished: `Sun Nov  1 11:01:58 UTC 2026`

The runner is
[`lean/cloud-manuscript-integral-20261101.sh`](../../lean/cloud-manuscript-integral-20261101.sh);
a copy of the executed script is retained here.

## Dependency provenance limit

The run reused the retained Space Mathlib build rather than rebuilding it.
That build contains the `MeasureTheory` modules because they were restored
from the retained Lake cache on 2026-11-01; it does not hash each imported
`.olean`/`.ir`. The pinned Mathlib commit and the Lean/Lake versions identify
the environment; they are not a complete per-artifact dependency audit.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Recompute text hashes against the
stored blob (`git cat-file blob`), not the CRLF working copy.
