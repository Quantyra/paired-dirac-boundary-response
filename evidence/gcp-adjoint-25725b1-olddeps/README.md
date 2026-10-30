# Adjoint inclusions: successful development check

GCP run `paper1-adjoint-olddeps-25725b1-20261029` exited 0 with Lean 4.30.0. It checked the formal Green identity, the forward operator inclusion, and the reverse adjoint-domain inclusion. Each reports only `propext`, `Classical.choice`, and `Quot.sound`. Source commit `25725b16d1e260b793f5743f9cf131117234bbb2` has Lean file SHA-256 `7d00b5450b2ce637da6e8742cf321ae05b8412d8027525e7f00d6bad4d23625d`. The raw log SHA-256 is `aa88b302bbd3bb322129c176a602cd1134b390685826736e72605b5e96f6ecf4`.

The arguments assume a dense seed domain, a symmetric invertible linear map, and the stated domain invariances. This was checked against the earlier CRLF-equivalent development dependencies with local-change warnings. It is not a clean dependency acceptance run, a proof of geometric domain hypotheses, or a complete paper certificate.

Remaining to-do list: assemble adjoint equality, run clean exact-byte acceptance, establish the geometric hypotheses, and formalize the remaining paper claims.
