# GCP Lean check: left-unitary positive square

The GCP builder `quantyra-lean-builder-01` (project `quantyra-lean-cert-20260915`, zone `us-central1-a`) ran `cloud-left-unitary-square.sh` in `paper1-left-unitary-square-20261030b` using Lean 4.30.0. The recorded exit code is 0. The four printed axiom dependencies are `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx` appears.

The checked theorem establishes equality of the actual partially defined operators `(UD)* (UD)` and `D* D`, including their domains and actions, assuming a densely defined `D` and an inner-product-preserving linear equivalence `U`. It does not establish the geometric hypotheses, mode identification, trace or regulator arguments, or physical conclusions.

SHA-256:

- `lean/LeftUnitarySquare.lean`: `899a0dca0dd7acc07bb02ed30781388bb6f282751f15e629ffcfde40b21b680f`
- `run.log`: `601c3f60bcfa79f6330e935e758021dee2fa3f23e1a41240f1e3465f73c535c6`
- reused `PositiveSquareDraft.olean`: `05b6f774ccd2d2fb83cad5ead362b95121cb52faaef7f1c93f0e9b73750991ee`
- reused `SquareDomainDraft.olean`: `7c5402e9fe23a9e3d83cc7ca7f077f20904c5a06b0e1602289ba9f3829f7166f`

The check reused compiled prerequisites and the earlier source-only environment. Lake reported dependency working-tree changes; this is not an independent exact-tree acceptance. See `evidence/gcp-sourceonly-6858aa7/README.md` for the inherited environment provenance.
