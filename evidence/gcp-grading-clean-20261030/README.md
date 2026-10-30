# Clean GCP replay: finite-matrix grading cancellation

On 2026-10-30 UTC, a source-only GCP replay completed with exit code 0. Driver `lean/cloud-grading-clean-replay.sh` at commit `9416405` checked out the pinned base `6376ccc794fb05ffe52a6c4e5f24e1e9a0047955` and overlaid `GradingOddTrace.lean`, SHA-256 `3fced26e3baf0823203e9d0a2b7b33edfc2841b81138d2cae7a96eab3ca7dc6c`. The overlay is recorded as untracked; the replay is not a checkout of the later HEAD.

Lean 4.30.0 rebuilt the required dependencies from pinned archives; archive trees, clean dependency indexes and manifest revisions were verified. The 1213-job build completed. `PairedDirac.grading_odd_trace_zero` was checked with reported axioms `propext`, `Classical.choice` and `Quot.sound`, and no reported `sorryAx`. Source and compiled module hashes, full run log, axiom report, overlay status, exit code and finish time are retained here. Tar ignored `SCHILY.fflags` extended headers; paths, modes and blob identities were separately checked.

The theorem is a finite-matrix trace identity. The ordinary trace-class argument for a stipulated compact product model is in `../../notes/graded-odd-commutator-trace-class.md`; neither it nor this check establishes the complete physical response or certifies the paper.

Remaining to-do list: verify the physical trace-class and boundary application, complete the response and novelty decision, finish the manuscript and certify its supported claims.
