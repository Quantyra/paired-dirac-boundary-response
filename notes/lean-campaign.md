# Lean campaign: domain theorem

Current coverage has expanded beyond the historical initial status below:
see the GCP receipts for the abstract congruence, projected trace, mode
square and radial comparison results. The flat form-factor coefficient
obstruction is checked in `evidence/gcp-flat-form-factor-20261030/README.md`.
The rational polynomial cancellation in the full-Weyl angular tangent jet is
checked in `evidence/gcp-full-weyl-angular-jet-20261030/README.md`; this does
not formalize its analytic remainders or physical trace transfer.
The exact flat source-contact coefficient identities now compile on the GCP
Lean 4.30.0 builder; the source, `.olean`, hashes and complete run log are in
[`gcp-flat-source-contact-ledger-20261031`](../evidence/gcp-flat-source-contact-ledger-20261031/README.md).
This verifies rational algebra only, not its analytic inputs, physical
normalization, the common-regulator response, or the full paper.
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

## Clean composed graph replay (2026-10-30)

The clean source-only GCP replay checked `congruence_graph_lower_composed_draft` with standard reported axioms and no reported `sorryAx`; see [the receipt](../evidence/gcp-graph-clean-20261030/README.md) for the pinned base, exact overlay, dependencies, logs and limitations. This supersedes the earlier statement that the graph-draft run had not been obtained. It is an abstract conditional result, not a certificate for the physical assumptions or the paper.

Remaining to-do list: establish the physical realization and response, resolve novelty, complete the manuscript, and certify its supported claims in Lean.

## Geometric endpoint scalar identity (2026-10-30 HST)

The targeted GCP check of
[`source_geometric_endpoint_action`](../lean/SourceEndpointAlgebra.lean)
proves the bounded scalar algebra behind
`E(D + M exp(b))E = EDE + M` for an arbitrary real-linear map on a real
module. The run used Lean 4.30.0 and reported only `propext`,
`Classical.choice` and `Quot.sound`; no `sorryAx` was reported. The full raw
log, source hash and attempt history are in the
[GCP receipt](../evidence/gcp-source-endpoint-algebra-20261030/README.md).

This is only the scalar action identity. It does not certify the unbounded
Dirac realization, paired/composition domains, angular Clifford block,
positive-square equality, heat-trace identity, rough remainder or common
regulator. The run reused the retained source-only dependency environment;
Lake emitted local-change warnings, so it is not a clean dependency rebuild
or exact-tree acceptance replay.

Remaining to-do list: prove the actual paired endpoint/domain map, match the
source rough heat hypotheses, account for the chiral zero-mode/anomaly sector,
and formalize the response only after those analytic hypotheses are audited.

## Restored-credential replay sweep (2026-10-31 HST)

GCP authentication was restored, `quantyra-lean-builder-01` was verified
`RUNNING`, and every Lean source that had been left uncompiled on the
authentication failure has now been replayed on that builder with Lean 4.30.0
(commit `d024af099ca4bf2c86f649261ebf59565dc8c622`) and Lake `5.0.0-src+d024af0`.
Four sources now compile with exit code 0 and no reported `sorryAx`:

| Source | Certified SHA-256 | Axioms | Receipt |
| --- | --- | --- | --- |
| `ResolventVariationConstants.lean` | `bb92d956…e42b36` | `propext`, `Classical.choice`, `Quot.sound` | [`gcp-resolvent-variation-constants-20261031`](../evidence/gcp-resolvent-variation-constants-20261031/README.md) |
| `CurvedScalarContactJet.lean` | `e8bc8514…c770ba1` | `propext`, `Classical.choice`, `Quot.sound` | [`gcp-curved-scalar-contact-jet-20261031`](../evidence/gcp-curved-scalar-contact-jet-20261031/README.md) |
| `FullWeylSeamCoefficientComparison.lean` | `98f2e713…c90036e` | `propext`, `Classical.choice`, `Quot.sound` | [`gcp-full-weyl-seam-coefficient-comparison-corrected-20261031`](../evidence/gcp-full-weyl-seam-coefficient-comparison-corrected-20261031/README.md) |
| `FullWeylOrbitCorrectionVerticesDraft.lean` | `687dd7e4…f882a3cda9` | `propext`, `Quot.sound` | [`gcp-full-weyl-orbit-correction-vertices-20261031`](../evidence/gcp-full-weyl-orbit-correction-vertices-20261031/README.md) |

Two of the four needed source corrections before they would compile, and the
failures are retained:

- `CurvedScalarContactJet.lean` at `6a952be2…b51255b3` failed with exit code
  1 and `sorryAx` in both theorems: `Real.pi` was unknown under its imports,
  and a trailing `<;> ring` on its own line did not parse. Retained in
  [`gcp-curved-scalar-contact-jet-import-failure-20261031`](../evidence/gcp-curved-scalar-contact-jet-import-failure-20261031/README.md).
- `FullWeylOrbitCorrectionVerticesDraft.lean` at `cc24abf8…0453a17119`
  failed with exit code 1 and `sorryAx`, leaving a residual goal equivalent to
  `w * u * D = u * w * D`. `noncomm_ring` had normalized products to
  right-associated form, after which the supplied hypothesis `u * w = w * u`
  no longer matched syntactically. Retained with the three earlier attempts in
  [`gcp-full-weyl-orbit-correction-vertices-failures-20261031`](../evidence/gcp-full-weyl-orbit-correction-vertices-failures-20261031/README.md).

In both cases the correction touched imports, `noncomputable` markers and
tactic blocks only; no theorem statement or definition body changed, and the
retained sources in the paired receipts show the difference. The statements
were checked by hand before the corrections were made.

Two runners also had to be repaired before they could run at all. The
prepared `cloud-resolvent-variation-constants-20261031.sh` and
`cloud-curved-scalar-contact-jet-20261031.sh` both pointed `LEAN_PATH` at the
`paper1-sourceonly-6858aa7-20261029` package tree, which has no built
`mathlib` library, and both required a `lake-manifest.json` that tree does not
contain. They were corrected to the dependency layout already proven by the
flat source-contact ledger replay: the retained
`paper1-domain-exact-tree-f7b70c1-20261029` package build, a `lakefile.toml`
precondition, and the eight packages that actually carry built libraries. The
two new runners for the seam and orbit sources were written to the same
pattern.

Scope: all four certificates are abstract algebra and finite rational
arithmetic. None establishes an analytic input, an operator realization, a
domain or trace claim, the physical observable, the common-regulator response,
or the endpoint-domain match. Every run reused the retained exact-tree
dependency artifacts rather than rebuilding them, and no receipt hashes each
imported `.olean`, so dependency acceptance remains open. Lean's linter also
reports `hduw` and `hdwu` as unused in the orbit vertex theorem: that identity
needs only `huw` and `hproduct`.

Remaining to-do list: no Lean source in this repository is now left
uncompiled. Close the analytic and physical gates that these certificates do
not touch, finish the closest-prior-art comparison, and record the S001
decision; formalize the operator-level estimates only at the scope the paper
ultimately claims.

## Complete receipt inventory (2026-11-01 UTC)

The campaign's Lean side is now reconciled rather than merely replayed. On
2026-11-01 UTC the repository's `scripts/audit-lean-receipts.ps1` audited
every one of the 56 sources in `lean/` against the retained receipts:

```text
Sources audited: 56; matched: 56; unmatched: 0.
```

The generated table is [`notes/lean-receipt-audit.md`](lean-receipt-audit.md);
the script exits non-zero if any source stops matching, so a later source or
receipt edit cannot silently break the reconciliation. The audit compares
both the committed LF SHA-256 and the Windows CRLF SHA-256, because several
older receipts recorded the CRLF bytes of the working copy rather than the
Git blob; that convention, not a content difference, explains the three
apparent historical mismatches for `FullWeylSquareAlgebra.lean`,
`GraphBoundsComposedDraft.lean` and `TransportedCongruence.lean`.

One real gap was found and closed. The fourth-order angular-jet run recorded
in [`gcp-full-weyl-angular-jet4-20261030`](../evidence/gcp-full-weyl-angular-jet4-20261030/README.md)
left its source hash as an unsubstituted placeholder and retained neither
source nor `.olean`, so the checked bytes could not be recovered from that
receipt. The exact current source was replayed on `quantyra-lean-builder-01`
with Lean 4.30.0 and the pinned Mathlib commit: exit code 0, both jet theorems
reported with only `propext`, `Classical.choice` and `Quot.sound`, compiled
`.olean` retained, and no `sorryAx`. See
[`gcp-full-weyl-angular-jet-exact-20261031`](../evidence/gcp-full-weyl-angular-jet-exact-20261031/README.md).
The first attempt at that replay failed in the environment (retained Mathlib
build directories had lost their `.ir` compiler artifacts); the failure is
recorded in the new receipt and was repaired by restoring the IR artifacts
from the retained Lake cache of the same workspace, without editing any
source.

[`notes/lean-certification-status.md`](lean-certification-status.md) states
what the whole inventory does and does not certify. The short form is
unchanged: every receipt covers abstract algebra, finite rational arithmetic,
or finite-matrix identities. No receipt establishes an analytic input, the
physical paired realization, a heat-trace or regulator limit, the physical
observable, novelty, or any part of the wormhole objective.

Remaining to-do list: close the analytic and physical gates that no certificate
here touches; finish the closest-prior-art comparison and record S001.3.

## Manuscript formalization (2026-11-01 UTC)

The first direct attempt to "Lean certify the manuscript" is recorded in
[`manuscript/lean-certification-ledger.md`](../manuscript/lean-certification-ledger.md).
It is deliberately partial and says so. `lean/ManuscriptFormal.lean`
(SHA-256 `be50bb1d…`, receipts
[`gcp-manuscript-formal-20261101`](../evidence/gcp-manuscript-formal-20261101/README.md)
and [`gcp-manuscript-formal-20261101-r2`](../evidence/gcp-manuscript-formal-20261101-r2/README.md))
now adds twenty machine-checked declarations: the bounded-operator a priori
inequalities behind Proposition 3.1 and their conditional inverse bounds, the
vanishing real quadratic form of a skew-adjoint operator, a gap-composition
lemma, the exact `(4.12c)` series subtraction, two flat-conversion
coefficient identities `(4.10b)`/`(4.10c)`, the finite-matrix
reference-position identity `(5.3)`, the `(2.3)` transported-plane identity
with its eigenvector facts and non-coincidence statement, and the `(4.9a)`
coefficient check against `(4.12)`. All report only `propext`,
`Classical.choice` and `Quot.sound`.

The requested `(5.5)` "jet algebra" target is not available as stated:
`notes/full-weyl-curved-scalar-interior-leading-coefficient.md` defines
`K_2(y)=(1/2)E[D²H_0(0)[xi,xi]]` as a path expectation, so `(5.5)` is a
probabilistic identity, not an identity among displayed derivatives. The
ledger records that reason rather than a missing `ring` step.

Two findings matter more than the count:

- The formalization exposed a constant discrepancy in `(4.11)`: the printed
  `κ exp(-r‖b‖_∞)` is `κ exp(-2r‖b‖_∞)` under the displayed argument, and the
  Lean lemma proves the latter. The manuscript now flags the check instead of
  asserting the printed constant.
- The ledger enumerates every remaining manuscript statement and why it is
  not formalized: unbounded closed realizations and Sobolev trace domains,
  the spectral theorem for unbounded self-adjoint operators, boundary
  heat-kernel asymptotics, distributional Fourier limits, and uniform rough
  family/regulator estimates. None of these is a missing lemma; each is a
  separate formalization project, and the last is the paper's own open
  problem.

The honest status is therefore: the manuscript's arithmetic and abstract
bounded-operator skeleton is certified, the manuscript is not. The ledger
must be read with the draft, and no abstract may cite Lean certification of a
proposition that the ledger marks unformalized.

Remaining to-do list: formalize or explicitly exclude each unformalized
manuscript statement; resolve the `(4.11)` constant; keep the ledger in step
with the draft.


