# GCP exact-source replay: `(5.4)`'s term algebra and ratio, and the `(4.6)` prefactor bound

Status: `lean/ManuscriptScaling.lean` at SHA-256
`80413f259c4761d9c6b92e3426eca2375d5ab089524e4746d176b12636104b9f`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptScaling.olean` at SHA-256
`17d0a00407dbbf34688ce08ad78c1c32e0c08a23fbc5582639559e712186fcdf`.
No `sorryAx`, no error. All three declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

This supersedes the two-declaration version of this receipt and completes item
(a): the term-ratio identity that was drafted but abandoned last turn.

## Certified

- `scaling_terms_nonneg` — both `(5.4)` terms, `δ^{3/2}t^{-9/4}` and
  `δ³t^{-3/2}`, are nonnegative for `δ, t > 0`;
- `scaling_ratio` — **the ratio identity**:
  ```text
  δ^{3/2}t^{-9/4} / (δ³t^{-3/2}) = 1/(δ^{3/2}t^{3/4}),
  ```
  so the cubic term dominates exactly when `δ^{3/2}t^{3/4} ≤ 1`. Proved with
  `Real.rpow_sub`, `Real.rpow_neg`, `Real.rpow_natCast` and
  `div_mul_div_comm` (the earlier failure was the `δ^3` nat-power versus
  `δ^(3:ℝ)` rpow mismatch, and the final `1/a·1/b = 1/(ab)` step);
- `exp_neg_div_bounded` — `t^{-N}exp(-c/t) ≤ N!/c^N`, so `(1+t^{-N})exp(-c/t)`
  is uniformly bounded on `(0, ∞)`.

## Not certified

The trace-norm estimate `(5.4)` itself (needs the unbounded realization), and
the mixed-derivative content of `(4.6)`.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-scaling-r6`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference build
- No project dependencies
- Source `80413f25…`, olean `17d0a004…`, exit code `0`

## Preserved failures

`-r1`: `Real.pow_div_factorial_le_exp` argument order and the final
`div_le_iff₀` orientation. `-r3` … `-r6`: the `δ^3` nat-power / rpow mismatch in
`scaling_ratio` (fixed by `← Real.rpow_natCast`) and the final
`1/a · 1/b = 1/(ab)` step (fixed by `field_simp`). No statement changed.
