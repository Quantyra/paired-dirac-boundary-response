# Clean GCP replay: composed graph estimate

On 2026-10-30 UTC, a fresh source-only replay on `quantyra-lean-builder-01` completed with exit code 0. The driver is `lean/cloud-graph-clean-replay.sh` at commit `f7498fa`. It checked out source bundle commit `6376ccc794fb05ffe52a6c4e5f24e1e9a0047955`, then overlaid `GraphBoundsComposedDraft.lean` (SHA-256 `7d3309e705a992be7c7e4e01a810c7d1f1e5bf008a92c8fed0bab59158703354`). The overlay is recorded as an untracked file; this was not a checkout of the repository's later HEAD.

Lean 4.30.0 and the pinned manifest and dependency archives were checked; each dependency archive was compared to its Git tree and had a clean index. The no-cache dependency build completed and Lean checked `PairedDirac`, `GraphBoundsDraft`, and `GraphBoundsComposedDraft`. The latter reports `PairedDirac.congruence_graph_lower_composed_draft` depends on `propext`, `Classical.choice`, and `Quot.sound`, with no reported `sorryAx`. Source and compiled module hashes, individual output, full build log, source overlay status, exit code and finish time are retained alongside this receipt. Tar reported ignored `SCHILY.fflags` extended headers; archive paths, modes and Git blob identities were separately verified.

This is an abstract graph inequality conditional on the displayed domain invariance and commutator hypotheses. It does not establish those hypotheses for the physical Dirac operator, certify the response or the paper, or decide novelty.

Remaining to-do list: establish the physical realization and response, resolve novelty, complete the manuscript, and certify its supported claims in Lean.
