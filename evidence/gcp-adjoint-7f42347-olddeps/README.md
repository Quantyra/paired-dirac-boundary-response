# Abstract adjoint equality: successful development check

GCP run `paper1-adjoint-olddeps-7f42347-20261029` exited 0 with Lean 4.30.0. The formal Green identity, forward operator inclusion, reverse domain inclusion, and `congruence_adjoint_eq_draft` all typechecked and report only `propext`, `Classical.choice`, and `Quot.sound`. The immutable source commit is `7f42347ab982bdc256dbc87e8a80197a6570b19b`; its Lean file SHA-256 is `a6cb6bd42a3d07a532c1384cc5a61eef2b10fefe2c9f270f24254f3b9af52306`. The raw log SHA-256 is `3896a3d06cd34ccc7a81ecb099a4ca3e8164063f0b304d27b41944f8fe5c1961`.

The equality assumes a dense seed domain, a symmetric invertible linear map, and the stated forward and inverse domain invariances. The run used the prior CRLF-equivalent development dependencies with local-change warnings. It is not clean exact-byte acceptance, proof of the physical domain hypotheses, or certification of the complete paper.

Remaining to-do list: run clean exact-byte acceptance, establish the physical domain hypotheses, and formalize and audit the remaining paper claims.
