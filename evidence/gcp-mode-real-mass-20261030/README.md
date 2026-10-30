# GCP angular-mode real-mass bridge check

Run `paper1-mode-real-mass-20261030b` on `quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone `us-central1-a`, exited 0 with Lean 4.30.0. The two new declarations report only `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx` appears. One linter warning reports an unused completeness assumption in the first theorem.

Under the stated inner-product isometry and `U (G x) = -i x` hypotheses, the check proves the first-order equality `U(D+i m G)=UD+m` as partially defined operators, and equality of their actual positive squares for real m when D is densely defined. It does not prove that the physical chirality, unitary or product decomposition satisfy these hypotheses, nor prove skew-adjointness, heat/trace matching, regulator removal or the full paper.

SHA-256 identities:

- `lean/ModeRealMassBridge.lean`: `eee0c92864bb46f6183f25ee1ddc7fd61ae2715cf6abf2683e14de4a97bcdf15`
- `lean/LeftUnitarySquare.lean`: `899a0dca0dd7acc07bb02ed30781388bb6f282751f15e629ffcfde40b21b680f`
- `run.log`: `97ae709fbfea85728a5ec0004a2296bd4f152d0a55732b59eb7ca25d52761c48`
- `attempt-a.log`: `56ba5f12e2f2f69433dd47862b559499dedc2fc6bb90a1a0d486e593e4cc1361`
- reused `ModeOperatorDraft.olean`: `84aade86a91eb7da0517b9bf21c12d7de897b987afb061487da9f6b028e88534`
- reused `PositiveSquareDraft.olean`: `05b6f774ccd2d2fb83cad5ead362b95121cb52faaef7f1c93f0e9b73750991ee`
- reused `SquareDomainDraft.olean`: `7c5402e9fe23a9e3d83cc7ca7f077f20904c5a06b0e1602289ba9f3829f7166f`

Attempt a failed before checking the new theorem because the shell script had a UTF-8 byte-order mark and CRLF line endings; the corrected run uses LF and no byte-order mark. The successful run reused GCP compiled prerequisites and the earlier source-only environment; Lake reported dependency working-tree changes. This is not an independent exact-tree acceptance. See `evidence/gcp-sourceonly-6858aa7/README.md` for the inherited provenance limitations.

Remaining to-do list: establish the physical mode and trace hypotheses, regulator and novelty, finish the manuscript, and certify the complete supported claims on GCP.
