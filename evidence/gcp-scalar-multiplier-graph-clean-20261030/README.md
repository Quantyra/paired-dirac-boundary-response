# Scalar congruence graph constants: clean GCP replay

**Result:** passed, exit code 0. This certifies the abstract scalar
congruence graph-constant assembly in
`PairedDirac.scalar_congruence_graph_bounds_draft` for the exact source overlay
identified below. It is conditional on its domain-invariance, commutator and
norm-bound hypotheses. It does not establish those hypotheses for the
physical multiplier or certify a curved trace or response theorem.

## Replay identity

- GCP run: `paper1-scalar-multiplier-graph-clean-20261030c`
- VM: `quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
  `us-central1-a`
- Base source bundle commit: `6376ccc794fb05ffe52a6c4e5f24e1e9a0047955`
- Lean: 4.30.0, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Mathlib manifest revision: `c5ea00351c28e24afc9f0f84379aa41082b1188f`
- Accepted source: [ScalarMultiplierGraphBoundsDraft.lean](../../lean/ScalarMultiplierGraphBoundsDraft.lean)
- Accepted source SHA-256:
  `98db05b89072dda16131802edbf73da48a8a607cc132db82e15f438c1690d701`
- Technical source and replay driver commit: `86feb92`
- Build: clean source-only Lake build, 2,632 jobs; all nine dependency archive
  trees and manifest revisions were verified by the replay driver.

The theorem concludes the manuscript's abstract constants
`exp(B) * (‖D x‖ + (G/2) * ‖x‖)` and
`‖D x‖ ≤ exp(B) * ‖congruence(D,E) x‖ + (G/2) * ‖x‖`, assuming bounds on
`E`, `E⁻¹`, the commutator `C`, and `E⁻¹ C`. It uses the abstract graph
estimate helpers, whose conclusions are included in the same replay.

The axiom report contains only `propext`, `Classical.choice`, and `Quot.sound`;
no `sorryAx` was reported. The target source emits warnings that the explicit
nonnegativity hypotheses `hB` and `hG` are unused; this does not affect the
checked conclusion.

## Retained evidence

`run.log` includes the exact-source build, source and dependency integrity
checks, theorem axiom output, and final source-hash check. The per-file source
and OLean hashes are in `lean-source-sha256.txt` and
`lean-olean-sha256.txt`; `ScalarMultiplierGraphBoundsDraft.log` is the target
file output. The raw archived replay files are preserved in
`paper1-scalar-multiplier-graph-clean-20261030c-receipt.tar.gz`.

Two failed development runs are preserved separately under
`../gcp-scalar-multiplier-graph-development-failures-20261030/`. Run `a`
exposed the incorrect partial-map signature; run `b` caught proof-script
errors and reported `sorryAx`. Neither is an accepted certificate.

Remaining to-do list: prove and instantiate the physical multiplier and
commutator hypotheses; certify the full claim set at the scope ultimately
claimed by Paper 1.
