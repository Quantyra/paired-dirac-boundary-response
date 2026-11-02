# GCP exact-source replay: the kernel expansion `H` (funext-free `g₂` route)

Status: `lean/ManuscriptR2Assembly.lean` at SHA-256
`3c9c510c85529fd561dcc39fbd69f4c2edaf498fd716459d8ea54d637bae983e`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptR2Assembly.olean` at SHA-256
`141bc3dc694c7c8661f8be93bd2cc1138d348aed821ab64dd3b602735ed33a4c`.
No `sorryAx`, no error. All four declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

## What unblocked the previous failure

The earlier attempt failed with `Tactic 'unfold' failed to unfold 'g1'` and
`No applicable extensionality theorem found`. The fix is to build the
antiderivative so that its *function* is term-identical to the goal's function,
so `convert` only has to reconcile the derivative (a scalar identity solved by
`ring`) instead of a function equality. No `funext` is used in any derivative
step.

## Certified statements

- `g2_closed` — `g₂(s) = 1 - e^{-s} - s + s²/2`, from
  `∫₀^s g₁ = φ(s) - φ(0)` with `φ(s) = 1 - e^{-s} - s + s²/2` and `φ' = g₁`;
- `continuous_g2` — via `funext` on `g2_closed` and `continuity`;
- `exp_cubic_lower` — `1 - s + s²/2 - s³/6 ≤ e^{-s}` for `s ≥ 0`, since
  `ψ(s) = e^{-s} - 1 + s - s²/2 + s³/6` has `ψ' = g₂ ≥ 0` and `ψ(0) = 0`;
- `H_expansion` — for `y ≥ 0`,
  `0 ≤ ∫₀^y s(1-e^{-s})ds - (y³/3 - y⁴/8) ≤ y⁵/30`.

`H_expansion` is the analytic core of `R2(x) = x³/840 - x⁴/10080 + O(x⁵)`:
the `α`-average of `H(a(α)x)` with the certified moments `∫a³ = 1/140` and
`∫a⁴ = 1/630` gives the two coefficients.

## Not certified (this receipt)

- `R2_expansion` (`0 ≤ R2 x - (x³/840 - x⁴/10080) ≤ x⁵/60`) and `R3_bound`
  (`R3 = O(x⁴)`): the `α`-integration assembly is the next increment;
- kernel integrability of `R3(s²)/s⁸` on `(0, ∞)`;
- the `(4.3)` integral value, Proposition 4.2, `(4.6)`, Section 5, the `K_ζ`
  derivation, the unbounded realizations and all physical identifications.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-r2assembly-r2`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference build
- Dependencies recompiled from pinned sources: `ManuscriptFlatBound`
  (`c769670d…`), `ManuscriptCubic` (`6d49d6ac…`), `ManuscriptSmallOrder`
  (`b68f3387…`)
- Source `3c9c510c…`, olean `141bc3dc…`, exit code `0`

## Preserved failure

Attempt `-r1` (exit 1) failed on: the pointwise-vs-function shape of
`HasDerivAt.sub`, and an `hftc` restatement whose `0^2/2` and `0^3/6` terms did
not match the compiler's normal form. Both are recorded here; no statement
changed.
