# GCP offline development attempt 1

Run: `quantyra-space-runs/paper1-domain-offline-f7b70c1-20261029` on
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`. The exact paper source was
`f7b70c170a66687a851710d1d6a4630333b66189`; the driver was recorded in
commit `e444c0e`. The raw run log and exit code are retained alongside this
note, copied from the task-owned cloud directory.

The transferred paper bundle, dependency archive and Lean 4.30.0 archive all
passed SHA-256 checks. The run printed Lean 4.30.0 and Lake 5.0.0-src. Lake
then treated the unpacked Mathlib directory, which intentionally had no Git
metadata, as a changed URL, removed that task-local copy and attempted to
clone from GitHub. The VM could not connect to github.com:443. The driver
exited 1, and the underlying git clone exited 128. It did not compile the
paper source or produce a meaningful axiom report; no theorem is certified.

A separate retry must use a new run directory and preserve this failed run.
The next attempted remedy is shallow Git metadata from the same pinned source
commits and manifest URLs; it must be checked against each source archive and
must not modify other GCP campaigns. The full domain theorem, paired geometry,
tangent analysis and manuscript remain open regardless of this infrastructure
failure.

Remaining to-do list: verify and transfer the pinned Git metadata, run a new
isolated offline build, retain its exact source and dependency identities, and
continue the proof and manuscript audits.
