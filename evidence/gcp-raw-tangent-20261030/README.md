# GCP raw tangent form-factor check

Run `paper1-raw-tangent-20261030c` exited 0 on `quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone `us-central1-a`, with Lean 4.30.0. The theorem `raw_tangent_form_factor` reports `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx` appears. Linter warnings concern unused simp arguments and tactic sequencing.

The theorem proves, for every real x, that the actual real interval integral called F_raw in `notes/flat-dirac-scalar-exact-form-factor.md` equals the compact `diracF` from `FlatFormFactorIntegral.lean`. Its proof establishes the second integration-by-parts identity and uses the earlier checked form-factor identity. It does not prove the underlying momentum/heat-trace derivation, physical folding, normalization, curved regulator, novelty or the full paper.

SHA-256:

- `lean/RawTangentFormFactor.lean`: `5be3b10ce9494eb8354abf058e995ede4ede361a0a7a3cdf1b7c1a1a0b13b5a9`
- `lean/FlatFormFactorIntegral.lean`: `0bda3ceb94db5f69ef4a8ec878974905a4552c0646a70a3aa4605881c5e0b22b`
- `success.log`: `95074bd31026db8fa93d60caa5dd9ec8d25953018db304d2959c7f2d62e499cd`
- `attempt-a.log`: `1b79b844149d8ee50b1b15f344ec09e07631ac99ea6fc48ccc159f044a97eab7`
- `attempt-b.log`: `be9ce8d85a9e880512132d4c217ca2e05943ac8188dd108579fa95c199200e5a`

Attempts a and b failed on the same integral rewrite; the successful version specifies the integrable intermediate explicitly. The run recompiled the previous source but reused the GCP mathlib build, with Lake dependency working-tree warnings. It is not an independent exact-tree acceptance; see `evidence/gcp-sourceonly-6858aa7/README.md` for inherited environment provenance.

Remaining to-do list: prove the momentum and physical response identification, regulator and novelty; finish the manuscript; and certify the complete supported claims on GCP.
