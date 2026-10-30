# Formal-adjoint draft: failed development check

The GCP run `paper1-adjoint-olddeps-84ae7ce-20261029` exited 1. Lean
accepted the revised notation but reported a type mismatch at the final
proof step because the rewrite sequence left the goal unchanged. The axiom
report included `sorryAx` after the error and is not a proof. The raw log
SHA-256 is `b3941332ba05b1c71b11aa83c93be535bf84cbafe5ffa67e7d1af244fbf22578`.
The run used Lean 4.30.0 and the prior CRLF-equivalent development environment.

A subsequent draft replaces the rewrites with explicit equality steps; it
requires its own GCP run. This failure does not certify an adjoint identity.

Remaining to-do list: typecheck the revised draft, prove the reverse inclusion
and domain identity, and repeat against accepted exact-byte dependencies.
