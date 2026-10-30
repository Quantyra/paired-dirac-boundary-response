# Source-only GCP development build

Run `paper1-sourceonly-6858aa7-20261029` exited 0 with Lean 4.30.0. Its driver verifies the source bundle, toolchain archive, manifest and nine reconstructed dependency archives; the recorded tree comparison reports matching paths, modes and Git blob identities. The task-owned build used `lake --no-cache build PairedDirac`, followed by no-cache Lean checks of the graph-closedness and adjoint drafts. All reported axioms are `propext`, `Classical.choice`, and `Quot.sound`. Raw log SHA-256: `fd5dcf98d5384e359c34cd18bbd6e86363f8fbd86a6f036ccf7fb704a0b2e387`.

Lake nevertheless emitted local-change warnings for all nine metadata-only dependency repositories. The archive/tree verification is recorded, but those warnings and the full environment provenance still require independent acceptance audit. The reused toolchain was extracted in the preceding exact-tree run; this run verified the toolchain archive hash but did not independently re-extract it. This result concerns the abstract declarations, not the physical or response theorem and not certification of the paper.

Remaining to-do list: audit dependency and toolchain provenance, inspect the later-draft check, and complete the physical and response proofs and their Lean certification.
