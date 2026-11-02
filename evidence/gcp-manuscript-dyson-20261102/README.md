# GCP exact-source replay: the discrete Duhamel hierarchy and both closed multi-vertex sums

Status: `lean/ManuscriptDyson.lean` at SHA-256
`3b613a61d558c735af75511f932a985e5be43de418d73032aab64058be17b96d`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptDyson.olean` at SHA-256
`5d0b7357e6229f45092be942fb734c68dcca62edbcdadec1c138b8590f91b566`.
No `sorryAx`, no error. All six declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

This supersedes the five-declaration version of this receipt (paper `5414981`,
source `4f4a7247…`); that receipt remains valid evidence for its own source.

## Certified

The Taylor hierarchy of `Z j = (K j + ε A j) Z (j+1)`, with
`P n = prop m K n`:

| declaration | statement |
| --- | --- |
| `homogeneous_propagation` | `Z0 0 = P n * Z0 n` |
| `first_order_vertex` | `Z1 0 = P n Z1 n + Σ_{j<n} P j A j Z0 (j+1)` |
| `second_order_vertex` | `Z2 0 = P n Z2 n + Σ_{j<n} P j A j Z1 (j+1)` |
| `second_order_closed` | `Σ_{j<n} Σ_{i<n−(j+1)} P j A j · prop(K(j+1+·)) i · A(j+1+i) · Z0(j+1+i+1)`, plus the `Z1 n` term |
| `third_order_vertex` | `Z3 0 = P n Z3 n + Σ_{j<n} P j A j Z2 (j+1)` |
| **`third_order_closed`** | `Σ_{j<n} Σ_{i<n−(j+1)} P j A j · prop(K(j+1+·)) i · A(j+1+i) · Z1(j+1+i+1)`, plus the `Z2 n` term |

`third_order_closed` is the triple sum obtained by substituting
`second_order_vertex` for the shifted family `K (j+1+·)` (segment length
`n−(j+1)`) into `third_order_vertex`:

```text
Z3 0 = P n * Z3 n
     + Σ_{j<n} P j A j · prop(K(j+1+·)) (n−(j+1)) · Z2 n
     + Σ_{j<n} Σ_{i<n−(j+1)} P j A j · prop(K(j+1+·)) i · A(j+1+i) · Z1(j+1+i+1).
```

It is the exact one-level-deeper analogue of `second_order_closed`: the same
shifted-family substitution, the same `Nat.add_comm`/`Nat.sub_add_cancel`
segment bookkeeping, the same `Matrix.mul_add`/`Finset.mul_sum`/`Matrix.mul_assoc`
normalisation, and the same `Finset.sum_add_distrib` + `abel` outer split. It
compiled on the first attempt, which is evidence that the argument shape is now
uniform in the hierarchy order rather than a one-off.

## Structure note (why the hierarchy, not a truncation)

`third_order_vertex` and `third_order_closed` complete the explanation of the
run-`-r5` failure: the *exact* two-term truncation
`Z 0 = P n Z n + ε(⋯) + ε²(⋯)` is false, because its `ε³` coefficient is
precisely this third level. The expansion is infinite; each order is
`Zk 0 = P n Zk n + Σ_{j<n} P j A j Z(k−1)(j+1)`, and each closed form leaves the
next-lower order inside the sum (`second_order_closed` leaves `Z0`,
`third_order_closed` leaves `Z1`). No new imports are used (no `Tactic.Omega`, no
`Normed.Module.PiLp`, no matrix norm instance).

## Not certified

- the fully expanded three-vertex sum with `Z0` at the bottom (a further
  substitution of `first_order_vertex` inside `third_order_closed`);
- a continuous heat family `K_s = exp(-sL)`;
- the unbounded realization, trace-class hypotheses, and every regulator
  statement of Section 5, including `(5.6)`;
- the operator derivation of `K_ζ`.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-dyson-r16`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, paper1 exact-tree layout
- Dependency `ManuscriptFormal` recompiled from its pinned certified source
  `dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13`
- Source `3b613a61…`, olean `5d0b7357…`, exit code `0`

## Preserved failures

`-r1` … `-r15` are preserved on the builder and in the session record: missing
`Normed.Module.PiLp` and `Tactic.Omega` modules, stale runner theorem lists, the
false exact truncated ε-expansion, and index-associativity mismatches.
