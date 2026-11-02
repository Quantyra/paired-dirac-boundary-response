# GCP exact-source replay: the `s = √t k` substitution bookkeeping of `(4.3)`

Status: `lean/ManuscriptCubicChain.lean` at SHA-256
`d5e5247142badb5b3c406f40ca871c7f2b79cff38f8d41b6f21c90ad6d2fa650`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptCubicChain.olean` at SHA-256
`678e9ca0110d7b653267ce4da0a2003e2509ac179c1e58b7ae35729f3cb45fd0`.
No `sorryAx`, no error. All four declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

## Certified

- `rpow_five_halves` — `t^(5/2) = t²·√t`;
- `rpow_neg_five_halves` — `t^(-5/2) = 1/(t²√t)`;
- `cubic_scaling_factor` — the substitution bracket of `(4.3)`:
  ```text
  t^(-5/2)·(1/(πt))·(1/(2π))·(1/√t)·t⁴ = 1/(2π²);
  ```
- `cubic_limit_coefficient` — `144 c_u c_w·(1/(2π²)) = 72 c_u c_w/π²`.

Together with the certified `cubic_coefficient` (which turns
`I = -5π^{3/2}/49152` into `-15c_uc_w/(1024√π)`) this pins the *scalar*
bookkeeping of Proposition 4.1's reduction; what remains for `(4.3)` is the
evaluation of `I` itself (see below).

## Open bookkeeping check (recorded, not a defect claim)

Under the displayed `(4.2)` normalization `1/(πt)·1/(2π)`, the coefficient of
`I` is `144 c_u c_w/(2π²) = 72 c_u c_w/π²`, while the text states
`144 c_u c_w/π²` — a factor `2`. This is the **same** factor `2` that appears in
the log chain (`log_term_half_split` vs `log_term_printed`, receipt
`gcp-manuscript-logcoef-20261102`), so a single convention difference (candidate:
the `dk/(2π)` against the draft's Fourier normalization `uhat(k) = ∫e^{-iky}u`)
would explain both. Arithmetic observation about the displayed text only.

## Why `I = ∫₀^∞ R3(s²)ds/s⁸ = -5π^{3/2}/49152` is not certified here

Two separate obstacles, both recorded:

1. **Well-posedness is blocked at import.** `IntegrableOn` for the kernel needs
   `Mathlib.MeasureTheory.Integral.Layercake`, whose `.ir` compiler artifact is
   missing from the retained Mathlib build and is absent from every retained
   tree on the builder (`find ~/quantyra-space-runs -name "Layercake.ir"` returns
   nothing). Same class of gap as the Fourier stack.
2. **The evaluation is a substantial analytic computation, not a lemma.** With
   `x = s²` the integral is `(1/2)∫₀^∞ x^{-9/2}R3(x)dx`, i.e. an improper
   integral of `x^{-9/2}[F(x) - 1 + x²/120 - x³/840]` with
   `F(x) = 1/2 + (1/2)∫₀¹(1+a(α)x)e^{-a(α)x}dα`. Evaluating it needs the
   gamma-function values at half-integers and the `α`-integrals of
   `a(α)^{p}` for half-integer `p` (which are beta-type but with a
   half-integer exponent), plus a finite-part treatment at the endpoints
   `α = 0, 1`; none of that machinery exists in the certified corpus. The
   manuscript's proof cites `../notes/tangent-integral-argument.md` for this
   step, and the value is not currently reproducible from the certified
   statements.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-cubicchain-r2`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference build
- Dependencies recompiled from pinned sources: `ManuscriptFlatBound`
  (`c769670d…`), `ManuscriptCubic` (`6d49d6ac…`)
- Source `d5e52471…`, olean `678e9ca0…`, exit code `0`
