# Square-domain draft: failed noncomputability check

The GCP development run at source `3c2b655` exited 1: Lean requires `squareDomain` to be declared noncomputable because it uses Mathlib's noncomputable adjoint. The axiom printout following this error is not a successful check. Raw log SHA-256: `0a0eebe7e2faae13243976bc985281b0fa19e91f1df8ed75f8ee13ba178eb1b7`. Source `a1c2d51` applies the correction.

Remaining to-do list: check the corrected draft and complete the paper and its clean Lean certification.
