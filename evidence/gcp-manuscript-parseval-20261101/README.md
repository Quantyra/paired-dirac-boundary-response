# GCP exact-source replay: the Parseval/Cauchy–Schwarz step of Proposition 4.3

Status: `lean/ManuscriptParseval.lean` at SHA-256
`8fb6d20d7067f7f887fc8bfb2285228c21e07ba576e18c59a65609dfdbd12b5f`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptParseval.olean` at SHA-256
`4c00ff152d8d4193432a80f28eb1393b43ab2d49521f9c429c1fa7cf78984287`.
No `sorryAx`, no compiler error and no warning was reported. All four
declarations depend only on `propext`, `Classical.choice` and `Quot.sound`.

## The certified statements

With the manuscript's `(4.7)` object

```text
r_flat(t;u,w) = (1/(π t)) (1/(2π)) ∫_k uhat(k) what(k) K(t k²) dk
```

(`K = R2`; real even profiles, so the conjugate in `(4.7)` is the identity) and
the Fourier-side symbols `g = (i k)³ uhat`, `h = (i k)³ what`:

- `integrand_abs_le` — pointwise, from the kernel bound at `x = t k²`,
  ```text
  |uhat k · what k · K(t k²)| ≤ (t³/840) · |g k| · |h k|.
  ```
  This is the step "use the cubic bound in `(4.7)`", including the `k = 0`
  case (where the kernel bound forces `K 0 = 0`) and `(|k|³)² = k⁶`.
- `integral_abs_mul_le` — Cauchy–Schwarz in `L²`:
  `∫ |g h| ≤ √(∫g²)·√(∫h²)`, via Mathlib's Hölder
  (`integral_mul_le_Lp_mul_Lq_of_nonneg` at `p = q = 2`).
- `flat_response_le_symbol` — "then Parseval and Cauchy–Schwarz":
  ```text
  |r_flat(t;u,w)| ≤ t²/(1680 π²) · √(∫g²) · √(∫h²),
  ```
  by the triangle inequality for the Bochner integral, monotonicity of the
  integral against the pointwise majorant, and `integral_const_mul`.
- `flat_response_le_half` — the printed `(4.8)` shape,
  ```text
  |r_flat(t;u,w)| ≤ t²/(420π) · Ah · Bh,
  ```
  under `∫g² = π(2Ah)²` and `∫h² = π(2Bh)²`, i.e. `4π·Ah²`, where `Ah`, `Bh`
  are the half-line `L²` norms of `u'''`, `w'''`. The hypothesis is the exact
  composite of Plancherel in the manuscript's normalization
  (`∫|uhat'''|² = 2π‖u'''‖²`) with the half/full-line relation
  (`‖u'''‖² = 2‖u'''‖_half²`), and the constant bookkeeping
  `√(4πAh²) = 2√π·Ah`, `√π·√π = π` is proved here.

## What this does not certify

- The **Fourier derivative identity** `g = (i k)³ uhat` (distributional
  integration by parts) and **Plancherel** in the manuscript's `exp(-i k y)`
  normalization are hypotheses, not theorems here. Mathlib's `L²` Plancherel
  (`MeasureTheory.Lp.norm_fourier_eq`) is stated for the `exp(-2πi k x)`
  convention; matching the manuscript's convention is a separate rescaling
  lemma that is not formalized.
- Consequently Proposition 4.3 is **not** certified as a whole: what is
  certified is the implication "kernel bound `(4.7)` + the two named Fourier
  inputs ⇒ response bound `(4.8)`", with every analytic step in between.
- Propositions 4.1 and 4.2, the compact-model transfer `(4.6)`, Section 5, the
  unbounded realizations and every physical identification remain open.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Remote run directory: `~/quantyra-space-runs/p1-manuscript-parseval-r6`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Mathlib commit verified in the runner: `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Dependency root: `~/quantyra-space-runs/space-20261007T093129Z-retry1/packages`
- Source SHA-256: `8fb6d20d7067f7f887fc8bfb2285228c21e07ba576e18c59a65609dfdbd12b5f`
- OLean SHA-256: `4c00ff152d8d4193432a80f28eb1393b43ab2d49521f9c429c1fa7cf78984287`
- Exit code: `0`

The executed runner is
[`lean/cloud-manuscript-parseval-20261101.sh`](../../lean/cloud-manuscript-parseval-20261101.sh);
a copy is retained here.

## Preserved failed attempts

Six earlier attempts are preserved on the builder
(`p1-manuscript-parseval-r1` … `-r5`) and in the session record. The failures
were compiler-level, not mathematical changes: a missing `MeasureSpace ℝ`
instance (needed `Mathlib.MeasureTheory.Measure.Lebesgue.Basic`), the three-field
`Real.HolderConjugate` constructor, `Real.rpow_two` versus `rpow_natCast`, a
denominator-clearing identity in `(|k|³)² = k⁶`, a degenerate `^2⁻¹` versus
`^(1/2)` exponent, and one constant error caught by the compiler
(`√(π(2A)²) = 2A` is false; the correct value is `√π·2A`, which is why the
final constant is `t²/(420π)`). No statement, hypothesis or scope was changed
by a repair.

## Hash verification caveat

The repository uses `core.autocrlf=true`. Recompute text hashes against the
stored blob (`git cat-file blob`), not the CRLF working copy.
