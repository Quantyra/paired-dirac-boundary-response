# Formal-adjoint identity: successful development check

The GCP run `paper1-adjoint-olddeps-abf6317-20261029` exited 0 using Lean 4.30.0. It checked `PairedDirac.congruence_formalAdjoint_draft` and reported only `propext`, `Classical.choice`, and `Quot.sound`. The source is paper repository commit `abf6317b5274d772fd6821eee5c570ee969a6c79`; its Lean file SHA-256 is `30474c0c3292a490b3028bf4ae8fb8945bf068c6611f15e33e8bcbe708de9c1c`. The raw log SHA-256 is `10d3272367772f09f235d63458dd102b4aabda9ec8f999af2cf80a52d13de4c3`.

This checks a formal adjoint identity under the stated abstract assumptions, using the earlier CRLF-equivalent development dependencies with local-change warnings. It does not establish reverse inclusion, equality of adjoint domains, geometric hypotheses, or acceptance against exact-byte dependencies.

Remaining to-do list: prove the reverse inclusion and domain identity, complete the exact-byte dependency build and clean acceptance run, and formalize the remaining paper claims.
