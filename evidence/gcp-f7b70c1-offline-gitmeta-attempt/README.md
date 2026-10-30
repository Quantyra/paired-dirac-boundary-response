# GCP development build receipt

The task-owned run `paper1-domain-offline-gitmeta-f7b70c1-20261029` on
`quantyra-lean-builder-01` completed with exit code 0. The retained `run.log`
has SHA-256 `cdc34aeaf423225bfb023bba6b9bff0ce857a30a4abc399ee1aaf6356f8e0788`.
The first attempted SCP using a literal tilde path failed; the absolute-path
retry retrieved this log. Source commit was
`f7b70c170a66687a851710d1d6a4630333b66189`, and the source file SHA-256
was `d0a2f58e5793fce6db78b3978a875dc73b8f892c9331bf8b2d3bf7ba018da033`.
Lean reports version 4.30.0; the complete dependency and archive identities
and the build output are in the log.

Lean compiled `PairedDirac.congruence_domain` and
`PairedDirac.invariant_preimage`; each reports `propext`, `Classical.choice`,
and `Quot.sound`. Their mathematical scope is the abstract first-order
domain declarations in the checked source, not closedness, adjoints,
physical geometry, heat response, or the paper as a whole. The offline
dependency archives and task-owned Git metadata were hash checked, but
metadata-only shallow repositories led Lake to report local-change warnings.
The contents have not yet been independently matched file-for-file to the
pinned Git trees; this is a successful development result, not an acceptance
certificate.

Remaining to-do list: audit dependency contents and exact-source evidence,
formalize and verify the remaining operator and response claims, and retain
the corresponding independent acceptance receipts.
