# GCP exact-source replay: the discrete Duhamel hierarchy and the closed two-vertex double sum

Status: `lean/ManuscriptDyson.lean` at SHA-256
`c9d7038165bc85c5cf275e1baec535c12d423c0edefa38aac48352a8e286381d`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptDyson.olean` at SHA-256
`8f595c2685470c388493c8e9f7bc340f07b6c8b90dc3b9516756df1072e1f6cc`.
No `sorryAx`, no error. All four declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

This supersedes the three-declaration version of this receipt (paper `2d22c87`,
source `9592cad1…`); that receipt remains valid evidence for its own source.

## Certified

The Taylor hierarchy of `Z j = (K j + ε A j) Z (j+1)`, with
`P n = prop m K n`:

- `homogeneous_propagation` — `Z0 0 = P n * Z0 n`;
- `first_order_vertex` — `Z1 0 = P n * Z1 n + Σ_{j<n} P j A j Z0 (j+1)`;
- `second_order_vertex` — `Z2 0 = P n * Z2 n + Σ_{j<n} P j A j Z1 (j+1)`;
- **`second_order_closed`** — the closed two-vertex double sum obtained by
  substituting the first-order identity (for the shifted family
  `K (j+1+·)`, with segment length `n−(j+1)`) into the second-order one:
  ```text
  Z2 0 = P n * Z2 n
       + Σ_{j<n} P j A j · prop m (fun i => K (j+1+i)) (n−(j+1)) · Z1 n
       + Σ_{j<n} Σ_{i<n−(j+1)}
           P j A j · prop m (fun l => K (j+1+l)) i · A (j+1+i) · Z0 (j+1+i+1).
  ```

The double sum is the discrete counterpart of `(5.1)`'s ordered `da db`
triangle: two insertions `A j`, `A (j+1+i)` separated by the interior segment
product `prop m (fun l => K (j+1+l)) i`, transported by `P j`.

## Proof structure of `second_order_closed`

Per index `j`, `first_order_vertex` is applied to the shifted family with the
hypothesis `hh i : Z1 (j+1+i) = K (j+1+i) Z1 (j+1+i+1) + A (j+1+i) Z0 (j+1+i+1)`
(available from `h1 (j+1+i)`); the segment-length bookkeeping closes with
`Nat.add_comm` + `Nat.sub_add_cancel`, the algebraic split with
`Matrix.mul_add` and `Finset.mul_sum`, and both sides are normalised with
`Matrix.mul_assoc`/`Nat.add_assoc`. The outer sum is then split with
`Finset.sum_add_distrib` and reconciled by `abel`.

## Not certified

- a continuous heat family `K_s = exp(-sL)` (matrix exponential, semigroup
  property, twice-differentiated variation of constants);
- the unbounded realization, trace-class hypotheses, and every regulator
  statement of Section 5;
- `(5.6)` and the operator derivation of `K_ζ`.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-dyson-r14`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, paper1 exact-tree layout
- Dependency `ManuscriptFormal` recompiled from its pinned certified source
  `dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13`
- Source `c9d70381…`, olean `8f595c26…`, exit code `0`

## Preserved failures

`-r1` … `-r13` are preserved on the builder and in the session record:
missing `Normed.Module.PiLp` and `Tactic.Omega` modules in this build, a stale
runner theorem list (aborted the receipt grep), the *false* exact truncated
ε-expansion (an ε³ remainder exists — corrected to the hierarchical form), and
several index-associativity mismatches in the per-`j` substitution
(`Z0 (j+1+(i+1))` versus `Z0 (j+1+i+1)`, unbound `i` after removing an
`intro`). No statement or hypothesis was changed by a repair.
