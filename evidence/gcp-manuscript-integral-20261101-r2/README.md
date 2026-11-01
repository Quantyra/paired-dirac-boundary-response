# GCP exact-source replay: continuum variation of constants

Status: `lean/ManuscriptIntegral.lean` at SHA-256
`608ed5ead89e6911ce77f8a6dfd1494524a095097e3aec7f090e70f42adf2de0`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptIntegral.olean` at SHA-256
`7b611b338fd76a1565ff9dc92150e0437370ca0afc0cc48d30449159348f4787`.
No `sorryAx` was reported; all three declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

This supersedes [`gcp-manuscript-integral-20261101`](../gcp-manuscript-integral-20261101/README.md)
for the current source and adds the continuum form of `(2.5)`.

## Certified statements

- `continuum_variation_of_constants` — **new**. In a normed algebra `A`
  (scalar case `A = ℝ`; matrix-valued when a normed-ring instance is
  available), if `U a ·` is the fundamental solution
  `∂_s U(a,s) = -U(a,s) K`, `U(a,a) = 1`, and `Y' = K Y + b`, then
  ```text
  Y(s0) = U(s0,s1) Y(s1) - ∫_{s0}^{s1} U(s0,s) b(s) ds.
  ```
  The proof differentiates the constant of motion
  `G(s) = U(s0,s) Y(s) - ∫_{s0}^{s} U(s0,τ) b(τ) dτ`, shows `G' = 0` with the
  product rule and the fundamental theorem of calculus
  (`intervalIntegral.integral_hasDerivAt_right`), and concludes
  `G(s1) = G(s0)` from `intervalIntegral.integral_eq_sub_of_hasDerivAt`.
- `flat_time_integral_bound`, `flat_time_integral_bound_of_bounded` — the
  `(4.8)` integral step, unchanged from the previous receipt.

## What this does not certify

- `Y` is algebra-valued: the vector-valued reading (matrix `U` acting on a
  column `Y`) is not formalized; it needs a module structure and an action
  hypothesis instead of ring multiplication.
- No instantiation to `Matrix (Fin m) (Fin m) ℂ` is performed, because this
  build does not supply a normed-ring structure for that type.
- Non-constant `K = K(s)`: the hypothesis is a fixed ring element, matching
  the manuscript's local `K_ζ` on a fixed cut, not a varying coefficient.
- Propositions 4.1--4.2, the Fourier/Parseval step of 4.3, Section 5, the
  unbounded realizations and the spectral theorem remain unformalized.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Remote run directory: `~/quantyra-space-runs/p1-manuscript-integral-20261101-r2`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Mathlib commit verified: `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Mathlib dependency root: `space-20261007T093129Z-retry1/packages`
- Source SHA-256: `608ed5ead89e6911ce77f8a6dfd1494524a095097e3aec7f090e70f42adf2de0`
- OLean SHA-256: `7b611b338fd76a1565ff9dc92150e0437370ca0afc0cc48d30449159348f4787`
- Exit code: `0`
- Finished: `Sun Nov  1 12:15 UTC 2026`

The runner is
[`lean/cloud-manuscript-integral-20261101.sh`](../../lean/cloud-manuscript-integral-20261101.sh);
a copy of the executed script is retained here.

## Dependency provenance limit

The run reused the retained Space Mathlib build; it does not hash each
imported `.olean`/`.ir`. The pinned commit and the Lean/Lake versions identify
the environment.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Recompute text hashes against the
stored blob (`git cat-file blob`), not the CRLF working copy.
