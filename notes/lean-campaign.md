# Lean campaign: domain theorem

Status: setup only; no Lean or Lake invocation and no certificate. The prior
turn established the abstract ordinary argument. This turn inspected the
Quantyra Space GCP builder and created a pinned project for formalization.

The first intended formal target is the complete bounded-congruence lemma in
[the ordinary argument](bounded-congruence-argument.md): for a densely defined
closed Hilbert-space operator D and a bounded invertible self-adjoint E whose
forward and inverse maps preserve both D and its adjoint domains, establish
closedness, domain and adjoint identities, the true composed square domain,
and the stated graph inequalities. Use Mathlib's `LinearPMap` and its actual
adjoint; do not assume any desired operator identity as an axiom. Prove or
explicitly mark as assumptions all geometric trace and regularity inputs.

The project pins Lean 4.30.0 and mathlib commit
`c5ea00351c28e24afc9f0f84379aa41082b1188f`, matching an existing Space
reference workspace. `PairedDirac.lean` is only an import and contains no
formalized claim. The toolchain and dependency must be acquired and built on
GCP, not the workstation. The live cloud source, exact lock/dependency
identities, raw logs, axiom reports and terminal results must be retained.

On 2026-10-29 HST the designated GCP instance was initially TERMINATED. It
was started for read-only inspection and had Lean 4.34.0-rc2 installed; the
4.30.0 toolchain was absent from the inspected elan toolchains. A checked
Space reference workspace identified the pinned versions above, but did not
contain the inspected `LinearPMap.olean` at the expected path. No Lean or Lake
process was present in the subsequent process checks. The instance was then
requested to stop. These are environment observations, not build evidence.

The first development run must install the pinned toolchain if needed, acquire
the exact dependency in a new task-owned Space directory, and compile only
submitted source snapshots. Failure is recorded as failure; a narrow helper
lemma or a typecheck of the import cannot certify the full operator statement
or the paper. Once the domain lemma is formalized, the paired geometry and
boundary-response claims remain separate proof obligations.

Remaining to-do list: implement and verify the actual unbounded-operator
lemma on GCP, retain complete source and axiom evidence, then formalize the
geometric domain and tangent response at the scope the paper ultimately claims.
