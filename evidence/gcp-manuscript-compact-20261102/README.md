# GCP exact-source replay: the winding-sum core of `(4.6)`

Status: `lean/ManuscriptCompactTransfer.lean` at SHA-256
`6af8f7c8b8aef8571ecf6dc1407e1bd3067d4f8bcc3280fc435cae711a8997a0`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptCompactTransfer.olean` at SHA-256
`e04d77a01af2b612ac00468b081eb2b06a9e449a7de102d9674018b97aeb9b9a`.
No `sorryAx`, no error. Both declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

## Certified

Draft `(4.6)` bounds the compact-vs-Fourier difference by
`O((1+t^{-N})·exp(-c/t)·‖u‖_H2‖w‖_H2)`. Its exponential factor comes from the
nonzero radial windings; this receipt certifies that geometric domination:

- `winding_term_le` — for `c, t > 0`, `exp(-c(n+1)²/t) ≤ exp(-c/t)^(n+1)`
  (higher windings are smaller, since `(n+1)² ≥ n+1`);
- `winding_nonzero_sum_le` — for `c, t > 0` with `exp(-c/t) ≤ 1/2`,
  ```text
  ∑_{n≥1} exp(-c n²/t) ≤ r/(1-r) ≤ 2 exp(-c/t),   r = exp(-c/t),
  ```
  via `Summable.of_nonneg_of_le`, `Summable.tsum_le_tsum` and the geometric
  series `tsum_geometric_of_lt_one`.

So the nonzero-winding tail is a *constant times* `exp(-c/t)`, exactly the
factor displayed in `(4.6)`; the `(1 + t^{-N})` prefactor and the profile norms
sit on top.

## Not certified (recorded)

- the compact form-differentiation, folding and per-exterior trace conventions
  behind `(4.6)` (see `notes/compact-flat-small-time-winding.md` in the
  historical satellite);
- the `(1 + t^{-N})` prefactor, i.e. the polynomial-in-`1/t` factor from the
  differentiated winding sums;
- the profile-norm factors and any uniformity in `L, R, T`;
- the mixed derivative itself (this is a bound on the winding sum, not on the
  derivative).

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-compact-r2`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference build
- No project dependencies (Mathlib limits, exp and infinite-sum modules only)
- Source `6af8f7c8…`, olean `e04d77a0…`, exit code `0`

## Preserved failure

`-r1` failed on `tsum_le_tsum` (the lemma is used here in dot form,
`Summable.tsum_le_tsum`); no statement changed.
