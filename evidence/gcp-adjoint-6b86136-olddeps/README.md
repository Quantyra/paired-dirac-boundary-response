# Formal-adjoint draft: failed development check

The GCP run `paper1-adjoint-olddeps-6b86136-20261029` exited 1. Lean 4.30.0
reported an `expected token` error at line 20 of `AdjointDraft.lean` from
commit `6b8613679f002a39ced135529bc81f0e79fe001d`. The resulting axiom
print does not prove a theorem because elaboration failed. The raw log has
SHA-256 `6fa5253cd01731f8630d320f5f966d9a81e0954c0b4b551f8269f1ecbafdf97f`.
The run used the earlier CRLF-equivalent development dependencies. A later
source edit replaces the rejected notation; that edit requires its own GCP
run and must not be treated as verified by this failure.

Remaining to-do list: typecheck the corrected draft, prove the reverse adjoint
inclusion and domain identity, and repeat against accepted dependencies.
