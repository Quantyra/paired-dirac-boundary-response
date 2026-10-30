# Clean GCP replay: partner square action

On 2026-10-30 UTC, a source-only GCP replay exited 0. Driver `lean/cloud-partner-action-clean-replay.sh` at commit `e2fed2f` checked out base `6376ccc794fb05ffe52a6c4e5f24e1e9a0047955` and overlaid `PartnerSquareActionDraft.lean` with SHA-256 `ddb6706659c8dbd22fe4e401f71eb365720a3a38871f561078ee30ece4515d8c`. The untracked overlay is recorded; this was not a checkout of later HEAD.

Lean 4.30.0 rebuilt the pinned dependencies and operator modules from source. Archive tree identities, dependency cleanliness and manifest revisions were verified; the 2352-job build completed. `PairedDirac.positive_square_partner_action_draft` reports axioms `propext`, `Classical.choice` and `Quot.sound`, with no reported `sorryAx`. Source and compiled hashes, individual logs, run log, overlay status, exit code and finish time are retained. Tar ignored `SCHILY.fflags` extended headers; paths, modes and blob identities were independently checked.

The declaration establishes the action of the natural adjoint square under an explicitly assumed partner identity and domain mapping. It does not prove the physical partner identity, skew-adjointness, resolvent bounds, trace response or the paper.

Remaining to-do list: establish the physical partner and resolvent claims, complete the response and prior-art audit, finish the manuscript and certify supported claims.
