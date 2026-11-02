# GCP exact-source replay: the `(5.1)` triangle measure

Status: `lean/ManuscriptDuhamel.lean` at SHA-256
`ed7742af7bbb56fa6e69f845b43aaaed4734a42740092ef93322381ffd76465f`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptDuhamel.olean` at SHA-256
`ee53918e3be801c411da96c95fc557728f8cbea8a25131e9c36a18cff07c6a24`.
No `sorryAx`, no error (one benign linter warning about an unused hypothesis).
`triangle_area` depends only on `propext`, `Classical.choice` and `Quot.sound`.

## Certified

`triangle_area` — the `(5.1)` triangle `{a, b ≥ 0, a + b ≤ t}` has area `t²/2`:

```text
∫_{a=0}^{t} ∫_{b=0}^{t-a} 1 db da = t²/2.
```

This is the draft's explicit structural statement "the triangle has measure
`da db`, with no additional factorial": a constant integrand over the two
vertex insertions picks up exactly `t²/2`, not `t²` and not a `1/2!` factor on
top of the triangle.

## What was attempted and is NOT certified

- **the matrix-valued constant-integrand reduction** (`∫∫ (V_uV_w + V_wV_u) =
  (t²/2)•(V_uV_w + V_wV_u)`): the continuity/integrability side goal needs a
  `NormedSpace ℝ (Matrix (Fin 2) (Fin 2) ℂ)` instance path that this build does
  not resolve for `fun a => (t - a) • M`; the scalar computation it would rest
  on is exactly the certified `triangle_area`;
- **the Duhamel identity itself** for a genuine heat family `K_s = exp(-sL)`:
  it needs the matrix exponential, its semigroup property, and the
  twice-differentiated variation of constants — no part of that is certified;
- the unbounded realization and the trace-class hypotheses of Section 5.

So this receipt certifies the measure/normalization bookkeeping of `(5.1)`, not
`(5.1)`.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-duhamel-r5`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, Space reference build
- No project dependencies
- Source `ed7742af…`, olean `ee53918e…`, exit code `0`

## Preserved failures

`-r1`: missing derivative imports (`hasDerivAt_pow`, `HasDerivAt.const_mul`)
and the matrix-instance failure. `-r2` … `-r5`: two "no goals to be solved"
from a `ring`/`norm_num` after a tactic that had already closed the goal, and
the final `t*t - t²/2 = t²/2` needing `ring`. No statement changed.
