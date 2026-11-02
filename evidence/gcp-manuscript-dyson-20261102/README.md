# GCP exact-source replay: the discrete Duhamel expansion to two vertices

Status: `lean/ManuscriptDyson.lean` at SHA-256
`9592cad195d69e4d2434e1732b489afef987a0c923f284b4088d47949772c841`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptDyson.olean` at SHA-256
`dbca02af8f4e13d803f55731b0508299d0493f77b508e58d8b3b7e9a75c8d359`.
No `sorryAx`, no error. All three declarations depend only on `propext`,
`Classical.choice` and `Quot.sound`.

This supersedes the one-declaration version of this receipt (paper `111bec8`,
source `da910d69…`), which remains valid evidence for its own source.

## Certified

The Dyson expansion of `Z j = (K j + ε A j) Z (j+1)`, in the hierarchical
Taylor-coefficient form `Z = Z0 + ε Z1 + ε² Z2 + ⋯`:

- `homogeneous_propagation` — `Z0 0 = P n * Z0 n`;
- `first_order_vertex` — `Z1 0 = P n * Z1 n + Σ_{j<n} P j * A j * Z0 (j+1)`;
- `second_order_vertex` — `Z2 0 = P n * Z2 n + Σ_{j<n} P j * A j * Z1 (j+1)`;

with `P n = prop m K n` the unperturbed propagator. The second is the
**two-vertex** level of `(5.1)`: each insertion `A j` is transported by the
unperturbed propagator `P j` and acts on the previous-order tail `Z1 (j+1)`,
which is itself a first-order vertex sum — the discrete counterpart of the
ordered `da db` triangle.

## Why the hierarchical form (a correction)

A first attempt stated the *exact* truncated identity
`Z 0 = P n Z n + ε(⋯) + ε²(⋯)`. The compiler's residual goal showed it is
**false**: substituting the recursion produces an `ε³` term
`ε³ • (T2 n * A n)`, so no exact two-term truncation exists for a genuine `Z`.
The hierarchical form above is the correct statement and is what is certified.
This is recorded because it is a mathematical correction, not a tactic fix.

## Not certified

- the closed double sum `Σ_{i<j}` obtained by substituting `first_order_vertex`
  into `second_order_vertex` (not carried out);
- a continuous heat family `K_s = exp(-sL)`, the unbounded realization, and any
  trace/regulator statement of Section 5.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-dyson-r6`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, paper1 exact-tree layout
- Dependency `ManuscriptFormal` recompiled from `dd569271…`
- Source `9592cad1…`, olean `dbca02af…`, exit code `0`

## Preserved failures

`-r1`: `Normed.Module.PiLp` absent from the build. `-r2`/`-r3`: runner theorem
list named an absent declaration (aborted the receipt grep). `-r5`: the false
exact truncation described above.
