# GCP exact-source replay: `(5.4)`'s term algebra and the `(4.6)` prefactor bound

Status: `lean/ManuscriptScaling.lean` at SHA-256
`856e442d5386467eb25f20c91252c4494b61f663754e859d7ce1dd500698aa66`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptScaling.olean` at SHA-256
`7d43b24713c4f830ce43f139c6d79e9c8983bb65bbe978c79b01c1d49744bd63`.
No `sorryAx`, no error. Both declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

## Certified

- `scaling_terms_nonneg` — for `δ, t > 0` both terms of `(5.4)`'s display,
  `δ^{3/2}t^{-9/4}` and `δ³t^{-3/2}`, are nonnegative; hence
  `C(δ^{3/2}t^{-9/4} + δ³t^{-3/2})` is a genuine two-term majorant with
  `C = max` of the two coefficients.
- `exp_neg_div_bounded` — the `(4.6)` prefactor companion:
  ```text
  t^{-N}·exp(-c/t) ≤ N!/c^N        for all t > 0, c > 0,
  ```
  from Mathlib's `Real.pow_div_factorial_le_exp` (`u^N/N! ≤ e^u`) at `u = c/t`
  and `exp(x)exp(-x) = 1`. So `(1 + t^{-N})exp(-c/t)` is bounded by
  `1 + N!/c^N` uniformly on `(0, ∞)` — the polynomial factor cannot defeat the
  exponential.

## Recorded as not certified

- the *ratio* of the `(5.4)` terms, `δ^{3/2}t^{-9/4} / (δ³t^{-3/2}) =
  1/(δ^{3/2}t^{3/4})` (structural context: the cubic term dominates exactly when
  `δ^{3/2}t^{3/4} ≤ 1`); an rpow-algebra proof was drafted but not completed, so
  it is **not** claimed;
- the estimate `(5.4)` itself: it is a trace-norm bound on a boundary-defect
  operator, needing the unbounded realization (recorded in the `(5.2)` receipt);
- the *joint* bound `(1+t^{-N})exp(-c/t)·‖u‖‖w‖` and the mixed-derivative
  content of `(4.6)`; only the two scalar factors are certified here.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-scaling-r2`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference build
- No project dependencies (Mathlib rpow/exp modules only)
- Source `856e442d…`, olean `7d43b247…`, exit code `0`

## Preserved failure

`-r1` failed on the argument order of `Real.pow_div_factorial_le_exp` (it takes
the nonnegativity proof before the exponent) and on the final `div_le_iff₀`
orientation; no statement changed.
