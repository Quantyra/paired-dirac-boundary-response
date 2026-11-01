# GCP exact-source replay: manuscript formalization, fifth extension

Status: `lean/ManuscriptFormal.lean` at SHA-256
`61214e81424575da5c7ae5b76a412e9cf9884cf4687a3fb596918f6177c4342b`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptFormal.olean` at SHA-256
`215f9e545ee3f1d7e9ef6c9454b6522208f9e2f57feeea2a7c4cb4c075c188f3`.
No `sorryAx` was reported. Thirty-five declarations are now machine-checked;
earlier receipts remain valid for their own sources.

## New declarations in this run

`(2.5)`, matrix-valued propagator:

- `discrete_variation_of_constants_matrix` — for matrices,
  `Y j = U j * Y (j+1) - B j` implies
  `Y 0 = P k * Y k - Σ_{j<k} P j * B j`, the matrix form used when `Y` is a
  fundamental solution rather than one vector.
- `prop_add` — the composition property of the accumulated propagator,
  `P (k+l) = P k * (U k ⋯ U (k+l-1))`. This is the fundamental-solution
  property that makes `P` depend only on the interval.

Proposition 4.3, the elementary part of (4.8):

- `flat_pointwise_reduction` — `|r t| ≤ C t²` with `t > 0` gives
  `|r t| / t² ≤ C`.
- `flat_finite_time_sum_bound` — for mesh points `t j > 0` and weights
  `w j ≥ 0` with `Σ w j ≤ t0`, the weighted sum of `|r (t j)| / (t j)²` is at
  most `C t0`. This is the Riemann-sum form of `∫_0^{t0} |r| dt/t² ≤ C t0`.

## What this does not certify

The **integral** in `(4.8)` is not formalized. The retained exact-tree Mathlib
build contains no measure theory:

```text
ls .../Mathlib/MeasureTheory/Integral/IntervalIntegral.olean
  → No such file or directory
```

so `intervalIntegral`, integrability and monotone convergence are unavailable
in this environment. What is certified is the pointwise bound and its exact
finite-mesh consequence; the passage from the mesh to the integral is not
claimed. Similarly `(2.5)` remains discrete/matrix-valued: the continuum
integral and the fundamental-matrix differential equation are not formalized.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Remote run directory: `~/quantyra-space-runs/p1-manuscript-formal-20261101-r7`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Mathlib commit verified: `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Source SHA-256: `61214e81424575da5c7ae5b76a412e9cf9884cf4687a3fb596918f6177c4342b`
- OLean SHA-256: `215f9e545ee3f1d7e9ef6c9454b6522208f9e2f57feeea2a7c4cb4c075c188f3`
- Exit code: `0`
- Finished: `Sun Nov  1 10:30:23 UTC 2026`

The runner is
[`lean/cloud-manuscript-formal-20261101.sh`](../../lean/cloud-manuscript-formal-20261101.sh);
a copy of the executed script is retained here. It pins the source hash,
verifies the Mathlib commit, requires all thirty-five axiom reports, and fails
on `sorryAx`.

## Dependency provenance limit

The run reused the retained exact-tree Mathlib build of
`paper1-domain-exact-tree-f7b70c1-20261029` rather than rebuilding it, and it
does not hash each imported `.olean`/`.ir`.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Recompute text hashes against the
stored blob (`git cat-file blob`), not the CRLF working copy.
