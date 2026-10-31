# Clean GCP replay: conditional mass lower bound

The source-only replay driven by `lean/cloud-mass-skew-lower-clean-replay.sh` at commit `a411ede` exited 0. It checked out base `6376ccc794fb05ffe52a6c4e5f24e1e9a0047955` and overlaid `MassSkewLowerDraft.lean` with SHA-256 `f97b3643ea510a365505a9483272c6a2c291d0de4f5d3e9710eadfdaee8b1e44`. This is a pinned base plus a recorded untracked overlay, not a checkout of the later repository HEAD.

Lean 4.30.0 rebuilt pinned dependencies from source (2352 jobs); archive trees, dependency cleanliness and manifest revisions were verified. `PairedDirac.mass_skew_lower_bound_draft` reports only `propext`, `Classical.choice` and `Quot.sound`, without `sorryAx`. The checker warns that positivity of the scalar is unused; the displayed inequality also holds trivially when the scalar is nonpositive. The source and compiled hashes, overlay status, run log, exit code and finish time are retained.

This proves only the stated Hilbert-space norm lower bound under its real-inner-product orthogonality assumption. It does not establish that assumption for the physical operator, surjectivity, the inverse or square-resolvent bound, or the response and manuscript claims.

Remaining to-do list: prove the physical operator and full resolvent, complete the response and prior-art review, finish the manuscript and certify its supported claims.