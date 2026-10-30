# GCP development check of the composed graph bound

On 2026-10-30, `paper1-graph-resume-20261030b` exited 1: Lean 4.30.0 rejected the draft with a leading UTF-8 byte-order mark. The recorded source was commit b9783fa and the failed log is retained. The marker was removed in commit 6ff4483; the accompanying driver was updated to require the corrected SHA-256.

Run `paper1-graph-resume-20261030c` exited 0 on GCP instance quantyra-lean-builder-01, project quantyra-lean-cert-20260915, zone us-central1-a. It checked `PairedDirac.lean`, `GraphBoundsDraft.lean`, and the corrected `GraphBoundsComposedDraft.lean` with Lean 4.30.0. The last file has SHA-256 `7d3309e705a992be7c7e4e01a810c7d1f1e5bf008a92c8fed0bab59158703354`, matching commit 6ff4483. The source checkout was b9783fa with that file overwritten by the corrected committed bytes, and its recorded status reflects the modification. The declaration `PairedDirac.congruence_graph_lower_composed_draft` reports axioms `propext`, `Classical.choice`, and `Quot.sound`, with no reported `sorryAx`.

This is a development check, not a clean replay: the reused Mathlib dependency workspace reported local changes. It establishes neither the physical multiplier and domain hypotheses nor the manuscript's full proposition or response. The source hashes, output, exit status, and workspace metadata are retained in the run directory. The failed setup before run b, caused by mistakenly stripping final characters when trying to normalize line endings, did not invoke Lean.

Remaining to-do list: perform a clean dependency replay, instantiate the physical operator hypotheses, complete the response and manuscript, and certify the supported claims on GCP.
