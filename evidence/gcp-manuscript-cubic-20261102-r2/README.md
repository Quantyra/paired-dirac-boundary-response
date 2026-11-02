# GCP exact-source replay: corrected `R3` kernel bounds and the (4.3) coefficient algebra

Status: `lean/ManuscriptCubic.lean` at SHA-256
`6d49d6ac2f92c479e8033f23d760ac593bfaefb4d80b6f22948f5600955c1a90`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptCubic.olean` at SHA-256
`81ac2d95af62791be7736a0fb1cb0054cb977b37e3c6f66a80e4d3e5489e0b0f`.
No `sorryAx`, no error, no warning. All ten declarations depend only on
`propext`, `Classical.choice` and `Quot.sound`.

This supersedes [`gcp-manuscript-cubic-20261102`](../gcp-manuscript-cubic-20261102/README.md)
and **corrects an error in it**.

## Correction of the previous receipt

The previous receipt claimed, from `R3_kernel_domination`, that the `(4.3)`
kernel `R3(s²)/s⁸` is not integrable at infinity. **That inference was wrong.**
`R3_kernel_domination` gives a lower bound of order `1/s²`, and `∫_1^∞ s⁻² ds`
converges (`p = 2 > 1`). The manuscript's step is sound at infinity. What the
lower bound actually controls is the *decay rate*, not divergence.

The new declaration `R3_kernel_upper` gives the matching upper bound and makes
the integrability statement correct:

```text
s ≥ 1  ⟹  |R3(s²)| / s⁸  ≤  1/(840 s²),
```

so the kernel is dominated by an integrable function on `(1,∞)`.

## Certified statements (ten)

- `pi_rpow_three_halves`, `sqrt_pi_mul_sqrt_pi` — `π^{3/2} = π√π`, `√π·√π = π`.
- `cubic_coefficient` — the printed reduction
  `144 c_u c_w/π² · (-5π^{3/2}/49152) = -15c_uc_w/(1024√π)`.
- `R3_eq` — `R3(x) = F(x) - 1 + x²/120 - x³/840` at the printed definition.
- `R3_nonpos`, `R3_lower` — `-x³/840 ≤ R3 x ≤ 0` for `x ≥ 0`.
- `Ffun_le_one` — `F(x) ≤ 1` for `x ≥ 0`.
- `R3_large_neg` — `R3 x ≤ -x³/1680` for `x ≥ 14`.
- `R3_kernel_domination` — `1/(1680s²) ≤ |R3(s²)|/s⁸` for `s ≥ √14`
  (decay rate; **not** a divergence statement).
- `R3_kernel_upper` — `|R3(s²)|/s⁸ ≤ 1/(840s²)` for `s ≥ 1`
  (integrability at infinity).

## Scope

At infinity the manuscript's `(4.3)` kernel is integrable, and the printed
coefficient algebra is certified. Still open for `(4.3)` as a whole: the
small-`s` behaviour `R3(x) = O(x⁴)` (which needs the Taylor cancellation
`R2(x) = x³/840 - x⁴/10080 + O(x⁵)`), the distributional identity
`u'''' = 12c_u δ_0 + L¹`, Riemann–Lebesgue, and the numerical value
`-5π^{3/2}/49152` itself. Same convention and provenance notes as the earlier
receipts.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-cubic-r7`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference dependency build
- Dependency module `ManuscriptFlatBound` recompiled from its pinned source
  `c769670d…`; both oleans retained
- `ManuscriptCubic.lean` SHA-256 `6d49d6ac…`, olean `81ac2d95…`
- Exit code `0`
