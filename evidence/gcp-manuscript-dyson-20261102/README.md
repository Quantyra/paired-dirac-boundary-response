# GCP exact-source replay: the discrete Duhamel hierarchy to three vertices

Status: `lean/ManuscriptDyson.lean` at SHA-256
`4f4a72473a16dc22f54f2ebebda802b8741a80e7a85c1306331a2e0800366580`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptDyson.olean` at SHA-256
`bcdc96f63002f5582f4158cb2664d39eac1e9503d950846c4d2dde9db1935b39`.
No `sorryAx`, no error. All five declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

This supersedes the four-declaration version of this receipt (paper `6635548`,
source `c9d70381…`); that receipt remains valid evidence for its own source.

## Certified

The Taylor hierarchy of `Z j = (K j + ε A j) Z (j+1)`, with
`P n = prop m K n`:

- `homogeneous_propagation` — `Z0 0 = P n * Z0 n`;
- `first_order_vertex` — `Z1 0 = P n * Z1 n + Σ_{j<n} P j A j Z0 (j+1)`;
- `second_order_vertex` — `Z2 0 = P n * Z2 n + Σ_{j<n} P j A j Z1 (j+1)`;
- `second_order_closed` — the closed two-vertex double sum
  `Σ_{j<n} Σ_{i<n−(j+1)} P j A j · prop(K(j+1+·)) i · A(j+1+i) · Z0(j+1+i+1)`
  obtained by substituting the first-order identity for the shifted family;
- **`third_order_vertex`** — the third level, `Z3 0 = P n * Z3 n
  + Σ_{j<n} P j A j Z2 (j+1)` for `Z3 j = K j Z3 (j+1) + A j Z2 (j+1)`.

## Why the third level matters here

An earlier attempt (run `-r5`) claimed an *exact* two-term truncation
`Z 0 = P n Z n + ε(⋯) + ε²(⋯)`; the compiler's residual goal exhibited an
`ε³ • (T2 n * A n)` term, which is exactly the `A`-insertion of the third
hierarchy level. `third_order_vertex` shows that the `ε³` remainder is not an
error but the next term of the same hierarchy: the discrete Duhamel expansion is
infinite, and each order is `Zk 0 = P n Zk n + Σ_{j<n} P j A j Z(k−1) (j+1)`.
The correct statement is the hierarchy, not a finite truncation.

## Proof structure

Same induction as `second_order_vertex` (the pattern is uniform in the order):
`prop`'s recursion `prop m K (n+1) = prop m K n * K n`, `Finset.sum_range_succ`,
`Matrix.mul_add`, `Matrix.mul_assoc`, then `abel`. No new imports; in particular
no dependence on `Tactic.Omega`, `Normed.Module.PiLp`, or any matrix norm
instance.

## Not certified

- the closed three-vertex triple sum (same shifted-family substitution as
  `second_order_closed`, one level deeper);
- a continuous heat family `K_s = exp(-sL)`;
- the unbounded realization, trace-class hypotheses, and every regulator
  statement of Section 5, including `(5.6)`;
- the operator derivation of `K_ζ`.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-dyson-r15`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, paper1 exact-tree layout
- Dependency `ManuscriptFormal` recompiled from its pinned certified source
  `dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13`
- Source `4f4a7247…`, olean `bcdc96f6…`, exit code `0`

## Preserved failures

`-r1` … `-r14` are preserved on the builder and in the session record: missing
`Normed.Module.PiLp` and `Tactic.Omega` modules in this build, stale runner
theorem lists, the false exact truncated ε-expansion, and index-associativity
mismatches in the per-`j` substitution. The third-order level compiled on its
first attempt because it reuses the proven pattern.
