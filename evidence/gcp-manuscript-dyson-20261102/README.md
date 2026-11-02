# GCP exact-source replay: the first-order discrete Duhamel identity

Status: `lean/ManuscriptDyson.lean` at SHA-256
`da910d692bd779fae27fc6a98bdee0faf8dbde03d16e4bbaf8656d0780ed6168`
compiled on the Quantyra GCP Lean builder with exit code 0, producing
`ManuscriptDyson.olean` at SHA-256
`afa38ffff66ac406eabfd20eafbb89c337c1894ea68be3de56476b1d863cde7e`.
No `sorryAx`, no error (two benign linter warnings). The declaration depends
only on `propext`, `Classical.choice` and `Quot.sound`.

## Certified

`discrete_dyson_first_order` — the finite-Galerkin first-vertex identity. If the
perturbed propagator satisfies

```text
Z j = (K j + ε • A j) * Z (j+1)
```

then, with `P j = K 0 * ⋯ * K (j-1)` the unperturbed accumulated propagator
(`prop` in `ManuscriptFormal`),

```text
Z 0 = P n * Z n + ε • (Σ_{j<n} P j * A j * Z (j+1)).
```

This is the discrete analogue of `(5.1)`'s one-vertex term: each perturbation at
step `j` is transported by the unperturbed propagator up to `j`, followed by the
perturbed tail. Proven by induction; the only ingredients are `prop`'s
recursion, `Finset.sum_range_succ` and `noncomm_ring`.

## Not certified

- the **matrix-valued constant-vertex integral** `∫₀^t (t−a)•M da = (t²/2)•M`:
  it needs an `ENormedAddMonoid (Matrix (Fin 2) (Fin 2) ℂ)` instance path that
  the retained build does not resolve for the continuity/integrability side
  goal (a probe with `Mathlib.Analysis.Normed.Module.Basic` and
  `Topology.Instances.Matrix` still fails; the repository's certified scalar
  `triangle_area` is the content it would rest on);
- the **second-order** (two-vertex) discrete expansion;
- any continuous heat family `K_s = exp(-sL)` and the unbounded Section 5
  statements.

## Reproduction record

- Remote run directory: `~/quantyra-space-runs/p1-manuscript-dyson-r4`
- Lean 4.30.0 (`d024af09…`), Mathlib `c5ea0035`, paper1 exact-tree layout
  (the certified `ManuscriptFormal` module is recompiled from `dd569271…`)
- Source `da910d69…`, olean `afa38fff…`, exit code `0`

## Preserved failures

`-r1`: `Mathlib.Analysis.Normed.Module.PiLp` does not exist in this build.
`-r2`/`-r3`: the runner's theorem-name list still named the (not present)
`constant_vertex_integral`, so the receipt grep aborted with exit 1 even though
Lean had reported clean standard axioms; the list was corrected. No statement
changed.
