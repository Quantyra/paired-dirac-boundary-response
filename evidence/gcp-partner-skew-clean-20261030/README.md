# Clean GCP replay: paired skew-adjoint domain and action

On 2026-10-30 UTC, a source-only GCP replay exited 0. Driver `lean/cloud-partner-skew-clean-replay.sh` at commit `9d9d2c0` checked out base `6376ccc794fb05ffe52a6c4e5f24e1e9a0047955` and overlaid `PartnerSkewDraft.lean`, SHA-256 `e35a3dd9e8d9492fe5eefcd5f5cc103ddf7c669fd7ca28e962602640b4473762`. The untracked overlay is recorded; this was not a checkout of later HEAD.

Lean 4.30.0 rebuilt the pinned dependencies and operator modules from source. Archive tree identities, dependency cleanliness and manifest revisions were verified; the 2352-job build completed. Both `partner_skew_domain_draft` and `partner_skew_action_draft` report axioms `propext`, `Classical.choice` and `Quot.sound`, without reported `sorryAx`. A linter suggested `simp` in place of `simpa`. Source and compiled hashes, individual logs, full run log, overlay status, exit code and finish time are retained. Tar ignored `SCHILY.fflags` extended headers; paths, modes and blob identities were independently checked.

Under the stated dense-domain, unitary and partner domain/action assumptions, these declarations prove the adjoint domain of JD equals its domain and its adjoint acts as -JD. They do not prove the physical partner assumptions, resolvent bounds, trace response or the paper.

Remaining to-do list: verify the physical partner identity, prove resolvent and response claims, complete prior art and manuscript, and certify the supported claims.
