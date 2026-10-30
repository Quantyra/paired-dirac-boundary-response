# Lean campaign: domain theorem

Current coverage has expanded beyond the historical initial status below:
see the GCP receipts for the abstract congruence, projected trace, mode
square and radial comparison results. The flat form-factor coefficient
obstruction is checked in `evidence/gcp-flat-form-factor-20261030/README.md`.
Geometric hypotheses, analytic response and full paper certification remain open.

## Historical initial campaign

Status: the GCP development build succeeded for two abstract declarations;
acceptance and paper certification remain open. The checked-in source defines an abstract congruence of a partially
defined linear map and states domain and invariant-preimage lemmas. It does
not yet formalize the full bounded-congruence theorem or the paper.

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
reference workspace. The development snapshot is commit `f7b70c1`; its
source contains two theorem declarations with `#print axioms` requests.
The development build and axiom output are retained in
[the receipt](../evidence/gcp-f7b70c1-offline-gitmeta-attempt/README.md);
the dependency-content and acceptance audits remain open. All Lean
invocations remain on GCP, not the workstation. The live cloud source, exact
lock/dependency identities, raw logs, axiom reports and terminal results must
be retained.

On 2026-10-29 HST the designated GCP instance was initially TERMINATED. It
was started for read-only inspection and had Lean 4.34.0-rc2 installed; the
4.30.0 toolchain was absent from the inspected elan toolchains. A checked
Space reference workspace identified the pinned versions above, but did not
contain the inspected `LinearPMap.olean` at the expected path. No Lean or Lake
process was present in the subsequent process checks. The instance was then
requested to stop. These are environment observations, not build evidence.

The initial run failed before Lean because the VM could not clone the pinned
dependencies; the offline Git-metadata retry used verified source and toolchain
archives and completed successfully on GCP. The metadata-only
shallow clones produce local-change warnings, so the dependency content and
exact identities need an acceptance audit even if compilation succeeds.
The audit found mismatched worktree and recorded-tree blob IDs, including the
directly imported LinearPMap source. A full Mathlib archive comparison then
showed that all 8,767 mismatches match the tree after CRLF-to-LF conversion;
see the receipt. The raw bytes still differ and other packages remain unaudited,
so the successful build is not yet an exact-source acceptance result. A later
audit found the same line-ending explanation for the other eight packages,
and reconstructed exact-tree archives; see the reconstruction receipt.

The fresh exact-tree run `paper1-domain-exact-tree-f7b70c1-20261029` was
observed on GCP with driver PID 74691 and Lake PID 74786. While Lake was
active, child `curl` processes were attempting to fetch dependency build
barrels from `reservoir.lean-lang.org`; the progress log had not advanced
between observations. This is a live-process observation, not a terminal
failure. The driver checks source archives but does not disable or
authenticate fetched binary build artifacts. Acceptance must inspect whether
Lake used such artifacts and their provenance, or use a fresh verified
source-only build. Do not restart solely because observation is slow.
The pinned GCP Lake 5.0.0 help explicitly documents `--no-cache` as building
packages locally without downloading build caches. A subsequent clean,
task-owned source-only run should use `lake --no-cache build PairedDirac`
and record its command, source identities and complete output; this option
has not been applied retroactively to the current live run.

The uncompiled `ClosedGraphDraft.lean` at commit
`b55befb15d55013b552969eb703eb1446fe64094` was bundled with complete history
and verified in the local repository. The bundle was transferred to GCP;
both sides report SHA-256
`3b034a49560a601aba06d3f3c28099fb7d5a1baacd8a5d7fce69097cc650ff9a`.
A separate remote `git bundle verify` call from outside a Git repository
failed with “need a repository”; it was not an independent verification.
Repeating `git bundle verify` on GCP with the task-owned source repository
as the working Git repository succeeded and reported the same complete-history
HEAD `b55befb15d55013b552969eb703eb1446fe64094`.
The running exact-tree workspace has not been modified or used to compile
this draft. Its GCP development run, dependency audit and axiom report remain
to be obtained.

The graph-draft driver from commit `e135b3d` has been transferred to GCP.
Local and remote SHA-256 agree at
`2e1d37ee82cc36829906d6955f8b1fe1cc20d67854b0b898608bc442d37918e6`,
and `bash -n` reported no syntax error. It has not been executed: it requires
the existing exact-tree build's recorded exit code to be zero and uses that
build environment only for a development check.

The present `congruence_domain` theorem is definitional because the candidate
map was constructed with the original domain; `invariant_preimage` proves
the matching natural right-composition domain only from both forward and
inverse invariance. Neither establishes closedness, the adjoint identity,
square-domain characterization, or graph bounds. In particular, the current
formalization does not assume or discharge the physical H1 projector domain
characterizations, the flat heat trace, or any curved regulator limit. A
successful run of this source would certify only the checked declarations,
subject to its axioms and source audit.

Next, express and prove closedness and the adjoint relation for the actual
Mathlib operator and bounded self-adjoint equivalence, followed by the composed
square-domain identity and graph estimates. Then connect geometric domain
and trace hypotheses to independently supported results and formalize the
response claims to the extent actually stated. A failed build is evidence of
failure and must be retained; a helper lemma cannot certify the paper.

Remaining to-do list: implement and verify the actual unbounded-operator
lemma on GCP, retain complete source and axiom evidence, then formalize the
geometric domain and tangent response at the scope the paper ultimately claims.
