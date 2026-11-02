# GCP exact-source replay: the discrete Duhamel hierarchy, closed sums, and the fully expanded three-vertex form

Status: `lean/ManuscriptDyson.lean` at SHA-256
`fd271221bf5fe8ca2160ff4886b00715ad2dac4deb015133f97ab43e03a64a19`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptDyson.olean` at SHA-256
`3f13eea4c019cc31d2367acfa02eb45a62d973fd79ceb5f646d0433d4bd757c7`.
No `sorryAx`, no error. All seven declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

This supersedes the six-declaration version of this receipt (paper `4aa1ff6`,
source `3b613a61…`); that receipt remains valid evidence for its own source.

## Certified

The Taylor hierarchy of `Z j = (K j + ε A j) Z (j+1)`, with `P n = prop m K n`:

| declaration | statement |
| --- | --- |
| `homogeneous_propagation` | `Z0 0 = P n * Z0 n` |
| `first_order_vertex` | `Z1 0 = P n Z1 n + Σ_{j<n} P j A j Z0 (j+1)` |
| `second_order_vertex` | `Z2 0 = P n Z2 n + Σ_{j<n} P j A j Z1 (j+1)` |
| `second_order_closed` | `Σ_{j<n} Σ_{i<n−(j+1)} P j A j · prop(K(j+1+·)) i · A(j+1+i) · Z0(j+1+i+1)`, plus the `Z1 n` term |
| `third_order_vertex` | `Z3 0 = P n Z3 n + Σ_{j<n} P j A j Z2 (j+1)` |
| `third_order_closed` | `Σ_{j<n} Σ_{i<n−(j+1)} P j A j · prop(K(j+1+·)) i · A(j+1+i) · Z1(j+1+i+1)`, plus the `Z2 n` term |
| **`third_order_expanded`** | the same, with `Z1` further expanded by `first_order_vertex`, so the base level `Z0` appears at the bottom of a **triple** sum |

`third_order_expanded` in full:

```text
Z3 0 = P n * Z3 n
      + Σ_{j<n} P j A j · prop(K(j+1+·)) (n−(j+1)) · Z2 n
      + Σ_{j<n} Σ_{i<n−(j+1)}
          P j A j · prop(K(j+1+·)) i · A(j+1+i)
            · prop(K(j+1+i+1+·)) (n−(j+1+i+1)) · Z1 n
      + Σ_{j<n} Σ_{i<n−(j+1)} Σ_{l<n−(j+1+i+1)}
          P j A j · prop(K(j+1+·)) i · A(j+1+i)
            · prop(K(j+1+i+1+·)) l · A(j+1+i+1+l) · Z0(j+1+i+1+l+1).
```

This is the discrete counterpart of `(5.1)` at three vertices: three insertions,
each transported by the unperturbed propagator, with the interior segment
products between them, and the unperturbed `Z0` at the base.

## Proof structure

For each index pair `(j, i)`, `first_order_vertex` is applied to the doubly
shifted family `K (j+1+i+1+·)` with length `n−(j+1+i+1)`. The work is in the
index arithmetic without `omega` (unavailable in this build):

- `hi' : i < n − (j+1)` plus `Nat.add_lt_add_right` and `Nat.sub_add_cancel`
  gives `i + (j+1) < n`, hence `hle : j+1+i+1 ≤ n` by `Nat.succ_le_of_lt` with
  `Nat.add_comm`/`Nat.add_left_comm`/`Nat.add_assoc` to match the goal's
  association;
- the segment length then collapses by
  `Nat.add_comm (j+1+i+1) (n−(j+1+i+1))` + `Nat.sub_add_cancel hle`;
- `Matrix.mul_add` + `Finset.mul_sum` distribute the head, and
  `Matrix.mul_assoc`/`Nat.add_assoc` normalise;
- the outer split is `Finset.sum_add_distrib` applied by `simp only` (a single
  `rw` matches only the first occurrence and fails here) followed by `abel`.

## Not certified

- a continuous heat family `K_s = exp(-sL)`;
- the unbounded realization, trace-class hypotheses, and every regulator
  statement of Section 5, including `(5.6)`;
- the operator derivation of `K_ζ`.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-dyson-r19`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, paper1 exact-tree layout
- Dependency `ManuscriptFormal` recompiled from its pinned certified source
  `dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13`
- Source `fd271221…`, olean `3f13eea4…`, exit code `0`

## Preserved failures

`-r17`: the final `rw [Finset.sum_add_distrib]` failed — a single `rw` rewrites
only one occurrence, and here the nested sums need the lemma applied under
binders; replaced by `simp only [Finset.sum_add_distrib]`. `-r18` succeeded but
carried a duplicated `#print axioms` line; `-r19` is the deduplicated rerun that
this receipt records. Earlier runs `-r1` … `-r16` are preserved too (missing
`Normed.Module.PiLp`/`Tactic.Omega`, stale runner lists, the false exact
truncated ε-expansion, index mismatches).
