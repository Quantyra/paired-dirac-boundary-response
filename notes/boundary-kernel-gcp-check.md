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

Remaining to-do list: formalize and verify the geometric interpretation and
remaining claims on GCP, resolve the physical and novelty audits, and prepare
the manuscript.
