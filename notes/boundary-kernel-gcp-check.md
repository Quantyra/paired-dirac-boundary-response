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
Remaining to-do list: formalize and verify the geometric interpretation and
remaining claims on GCP, resolve the physical and novelty audits, and prepare
the manuscript.
