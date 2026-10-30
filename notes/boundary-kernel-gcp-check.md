# Boundary-kernel Lean check on GCP

The exact source at commit 92d9aac30c3f5aea8f4aafdecaa5c59613273668 was
checked on quantyra-lean-builder-01, project quantyra-lean-cert-20260915,
zone us-central1-a. The Lean process exited 0 and printed:

    'PairedDirac.boundary_kernel_eq_iff' depends on axioms:
    [propext, Classical.choice, Quot.sound]

Lean was 4.30.0, commit d024af099ca4bf2c86f649261ebf59565dc8c622.
The source file SHA-256 was
2790a109c44f7211513478bf976ae9034d4c5cae152e052316db636d4b7a062d.
The transferred Git bundle SHA-256 was
4385af4952b2953bcc2f5dcc16f4367cce9f460e18568bdbe4ec8e1313d512a3.
The task checkout is under
`quantyra-space-runs/paper1-boundary-92d9aac/source`; its dependency path
came from the earlier source-only run at `paper1-sourceonly-6858aa7`.
Lake emitted the known local-change warnings for its source-only package
worktrees; prior audits and their limitations are recorded in the Lean
campaign. This check does not change the strict worktree-audit status.

The first invocation at 9e10556 failed because the file contained a UTF-8
byte-order mark. The next, at 5bd53e6, failed because the umbrella Mathlib
object was not built in the source-only environment. Both exited 1; the
successful invocation used the specific already-built import. This receipt
records the terminal process output and source identities, not a complete
independent dependency rebuild.

The checked statement is an algebraic equivalence of two kernels under a
surjectivity hypothesis. It does not establish the physical trace map,
jet extension, normal Clifford invertibility, actual Dirac domains,
heat response, or the full paper. Those remain separate proof obligations.

## Ambient-domain extension

At commit 2a5be79173629e59180fec761043fad04a356750, the GCP builder checked
`embedded_boundary_kernel_eq_iff` with exit 0 under Lean 4.30.0. The file
SHA-256 was 005615cb2ad33ffe271ccb1d64daeec04a7f5d82888929be44fbe9a23699a1d9;
the transferred bundle SHA-256 was
f580715b96c59b2100c2b9be697ac58a60e9399fe7c56b2fdcc796a986735edd.
Both the original and embedded theorems reported [propext, Classical.choice,
Quot.sound]. The source-only dependency path and its known local-change
warnings are the same as above.

The embedded theorem says that equality of the two kernel images in an
ambient space is equivalent to the boundary perturbation map being zero,
provided the embedding is injective and the seed-kernel trace is surjective.
To apply it to the ordinary criterion, take the common regularity space V
of allowed H¹ fields whose seed Dirac output lies in H¹, the injection into
L², A as projected seed-output trace, T as allowed value trace, and N as
half the normal-jet times normal Clifford action. These are a proposed
interpretation, not Lean definitions or checked geometric identifications.
In particular the exact Sobolev codomains and surjectivity of T on ker A
must be proved, and N=0 must be connected to vanishing normal jet using a
nonzero allowed fiber and Clifford invertibility. The Lean theorem assumes
surjectivity onto its entire chosen trace space; the ordinary proof's local
smooth test sections alone do not automatically establish that assumption
for an arbitrarily chosen Sobolev trace space.
## Tangential Clifford compression

The source at c49ccdb165cd7c2c4b8c8273ec569aaeda35abfa passed Lean 4.30.0
on the same GCP builder with exit 0. The added theorem
`tangential_compression_zero` reports [propext, Classical.choice, Quot.sound].
The source file SHA-256 is
df91bd774164c08e97c1f1bcbaac672da5bc101c3a4ee5b07724b1ed9e505d2d;
the transferred bundle SHA-256 is
74eea640bc803ec2d042932fb2046f74452942b118398fd930624f42d7146062.
The same source-only dependency-worktree warnings apply.

The theorem derives P C P=0 from chi P=P, P chi=P, and chi C=−C chi
for complex linear maps. It captures the algebraic cancellation used for
tangential Clifford multiplication. The identification of these maps with
physical bundle operators, the Clifford relations, Sobolev traces and the
normal-jet criterion are not proved by this check.
## Involution projector specialization

The source at e88e6ea111af6aa098654041626f73b8dba522b4 passed Lean 4.30.0
on the same GCP builder with exit 0. The added theorem
`involution_tangential_compression_zero` reports [propext, Classical.choice,
Quot.sound]. The source file SHA-256 is
213fb0bafa84eff9f787c6f3b708978e5067632dbc40f1d6413e2c577e0201d4;
the bundle SHA-256 is
677edc41c537a083114534019695cbf49105ae71eafda836a5424f29adbdadab.
The same source-only dependency-worktree warnings apply.

For complex linear maps chi and C, the theorem constructs P=(1+chi)/2
and proves P C P=0 from chi²=1 and chi C=−C chi. These are the abstract
algebraic relations recorded for the physical involution and tangential
Clifford action. Their representation on the actual global spinor bundle,
the trace and elliptic facts, and the paper's response statements are not
formalized by this theorem.
## Paired Clifford specialization

The source at d7d2ebd92407d2771c0da73cc84a0e6e07280498 passed Lean 4.30.0
on the same GCP builder with exit 0. The new theorem
`paired_clifford_tangential_compression` reports [propext, Classical.choice,
Quot.sound]. The source file SHA-256 is
021a0392932f8636ca66854c59967f5af5448e60d08bc1852d9c1a1592dd5240;
the bundle SHA-256 is
d00bba23eb0c231c60aaae14e4005a850aa409592965be5bb76fd1289e874100.
The previously recorded source-only dependency-worktree warnings apply.

The theorem derives the involution and tangential anticommutation for
chi=tau gamma_n from the separately stated commuting-involution and
Clifford anticommutation relations, then proves the paired projector's
compression vanishes. It remains an abstract linear-map theorem: the
matrix identities and their global bundle interpretation, the Sobolev
and domain results, and the response are not certified by this check.
## Explicit rank-four orbit matrices

The source at b50896394299b42d5938dc767f08899567f4788d passed Lean 4.30.0
on the GCP builder with exit 0. After compiling BoundaryKernelDraft, Lean
checked `PairedDirac.Orbit.paired_time_compression` with axioms [propext,
Classical.choice, Quot.sound]. OrbitMatrixDraft.lean SHA-256 is
50cdd85a303d4fbbcb6d5a75e14970629e7051f330bccee475454448b678e632;
BoundaryKernelDraft.lean SHA-256 is
021a0392932f8636ca66854c59967f5af5448e60d08bc1852d9c1a1592dd5240;
the Git bundle SHA-256 is
933247eb41736d08bc4213965e9a611f72a508220d73cd4233a76aea66af8520.
The previously recorded source-only dependency-worktree warnings apply.

The first run at 013570f exited 1 on two additive-linearity goals and
reported sorryAx for declarations depending on those incomplete proofs;
it was not accepted. Commit b508963 repaired those goals and the successful
run has no sorryAx in the printed theorem dependencies.

The verified finite-dimensional maps implement tau_3⊗1, 1⊗sigma_1 and
−tau_3⊗sigma_3 on the rank-four orbit fiber. Their relations instantiate
the abstract paired projector theorem for the time-tangential gamma. This
check does not cover the sphere-tangential gamma factors, global transition
functions, physical domains, traces, or heat response.
## Sphere-tangential orbit factor

The source at 4a88a3ee3bd8a4a495367d8e4b6223d56fcaa269 passed Lean 4.30.0
on the GCP builder with exit 0. The new theorem
`PairedDirac.Orbit.paired_sphere_orbit_compression` reports [propext,
Classical.choice, Quot.sound]. OrbitMatrixDraft.lean SHA-256 is
d4ae1f2a90cb0b79c6d1f37fb50a624e4ca34ffdf43bb8e8243158b7b222a937;
the Git bundle SHA-256 is
e43f7ddd75cd74853e6d89978355ae2e57ba60ccf3483a48f345b6ba208d3bbc.
The check also emitted two unused-simp-argument linter warnings and the
previously recorded source-only dependency-worktree warnings.

The finite-dimensional map implements the orbit factor −tau₃⊗sigma₂
appearing in the source's sphere-tangential gammas. Lean verifies its
relations with tau₃ and the normal gamma, then applies the paired projector
lemma. The independent sphere-spin factor, tensor-product realization,
global transitions, Sobolev domains and heat response are not established
by this orbit-factor calculation.
Remaining to-do list: formalize and verify the geometric interpretation and
remaining claims on GCP, resolve the physical and novelty audits, and prepare
the manuscript.
