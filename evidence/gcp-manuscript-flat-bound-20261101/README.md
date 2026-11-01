# GCP exact-source replay: the `(4.7)` kernel bound of Proposition 4.3

Status: `lean/ManuscriptFlatBound.lean` at SHA-256
`c769670d0a3172326aa24fe5d72ef57fbb72f17a199cc2e161b582d9190c49eb`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptFlatBound.olean` at SHA-256
`ceb2c0d9e6d45f49a4482e7f73b67e9f4f93ad9a933c0e95841037227df6a4aa`.
No `sorryAx`, no compiler error and no warning was reported. All eleven
declarations depend only on `propext`, `Classical.choice` and `Quot.sound`.

## The certified statement

Proposition 4.3 of `manuscript/DRAFT.md` defines, for `x ≥ 0`,

```text
F(x)  = 1/2 + (1/2) ∫_0^1 (1 + a x) exp(-a x) dα,     a = α(1-α),   (4.1)
R2(x) = F(x) - 1 + x²/120,
```

and asserts `0 ≤ R2(x) ≤ min(x³/840, x²/120)`. That bound is now
machine-checked, at exactly this definition of `F`:

- `R2_bound` — `0 ≤ R2 x ∧ R2 x ≤ min (x^3/840) (x^2/120)` for `x ≥ 0`;
- `R2_nonneg`, `R2_le_cubic`, `R2_le_quadratic` — the three halves.

The proof follows the manuscript's own argument, with every step certified:

- `phi_remainder` — `φ(z) - 1 + z²/2 = ∫_0^z s(1 - e^{-s}) ds` for
  `φ(z) = (1+z)e^{-z}`, by the fundamental theorem of calculus;
- `integral_weightA_sq`, `integral_weightA_cu` — the beta moments
  `∫_0^1 a(α)² dα = 1/30` and `∫_0^1 a(α)³ dα = 1/140`, by explicit
  antiderivatives;
- `phi_remainder_nonneg`, `phi_remainder_le_cubic`, `phi_remainder_le_quadratic`
  — the pointwise bounds from `0 ≤ s(1-e^{-s}) ≤ min(s², s)` on `s ≥ 0`;
- `R2_eq_half_integral` — `R2(x) = (1/2)∫_0^1 [φ(a(α)x) - 1 + (a(α)x)²/2] dα`,
  the exact `α`-average form the bounds are taken over.

So the constants `1/840` and `1/120` are no longer inputs: they are derived
from `F` as printed.

## What this does not certify

- The **Parseval/Cauchy–Schwarz step** of Proposition 4.3: passing from the
  kernel bound to `(4.8)`, i.e. `|r_flat(t;u,w)| ≤ t²/(420π)·‖u'''‖‖w'''‖`
  and the half/full-line normalization factor. The Fourier transform,
  Plancherel and the constant `1/(420π)` are not formalized.
- Proposition 4.1 (`(4.3)`, the flat cubic coefficient and its improper
  integral), Proposition 4.2 (`(4.4)`–`(4.5)`, the logarithmic jet), the
  compact-model transfer `(4.6)`.
- Section 5 heat-trace and regulator statements, the unbounded realizations,
  and every physical identification.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Remote run directory: `~/quantyra-space-runs/p1-manuscript-flat-bound-r3`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Mathlib commit verified in the runner: `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Dependency root: `~/quantyra-space-runs/space-20261007T093129Z-retry1/packages`
  (the Space reference build, which contains
  `Mathlib.MeasureTheory.Integral.IntervalIntegral`)
- Source SHA-256: `c769670d0a3172326aa24fe5d72ef57fbb72f17a199cc2e161b582d9190c49eb`
- OLean SHA-256: `ceb2c0d9e6d45f49a4482e7f73b67e9f4f93ad9a933c0e95841037227df6a4aa`
- Exit code: `0`
- Finished: `Sun Nov  1 23:01:40 UTC 2026`

The executed runner is
[`lean/cloud-manuscript-flat-bound-20261101.sh`](../../lean/cloud-manuscript-flat-bound-20261101.sh);
a copy is retained here.

## Preserved failed attempts

Two earlier attempts on the same day are preserved in the repository history
(remote run directories `p1-manuscript-flat-bound-20261101` and `-r2`):

- `-r?` (first): missing derivative imports (`Real.hasDerivAt_exp`,
  `hasDerivAt_pow`, `HasDerivAt.mul`), a stale `∫ s²` evaluation via a
  nonexistent `intervalIntegral.integral_pow`, and two wrongly stated
  intermediate values (`x³/840` and `x²/120` where the integral itself is
  `x³/420` and `x²/60`);
- `-r2`: a single type mismatch in the derivative of `t²/2`.

Neither failure is cited as evidence.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Recompute text hashes against the
stored blob (`git cat-file blob`), not the CRLF working copy.
