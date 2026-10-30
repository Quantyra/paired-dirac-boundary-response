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

## Dependency content audit: failed

A subsequent GCP audit populated a separate temporary Git index from the
recorded mathlib HEAD and compared the retained workspace against it. The
comparison reported differences. Two direct `git hash-object` checks in
the retained workspace gave the following worktree blob IDs, versus the
IDs reported by `git ls-tree HEAD`:

| Path | Worktree blob | Recorded HEAD tree blob |
| --- | --- | --- |
| `.devcontainer/Dockerfile` | `57681b47639a543338f0f3078b447aee8000af57` | `e266fdc591a0236b1d2c8ef33b41dd1ebe70e9fa` |
| `Mathlib/Analysis/InnerProductSpace/LinearPMap.lean` | `d4e4fe46851144c6478c187501a800b3926e427e` | `9cf3e7608ebd4c74faea16bd2f6c74b043fd3f2a` |

The second path is the direct import used by the development source. HEAD
reported commit `c5ea00351c28e24afc9f0f84379aa41082b1188f` and tree
`1fe688f4d9e84fb268a300f8ac33cbca883fbd28`. These are observed local Git
objects; the reason for the mismatch and the authenticity of the metadata
tree are not yet established. No conclusion about the cause or which version
is correct is warranted solely from the local objects. A separate read of
`Mathlib/Analysis/InnerProductSpace/LinearPMap.lean` from the pinned commit
on GitHub returned blob ID `9cf3e7608ebd4c74faea16bd2f6c74b043fd3f2a`,
matching the recorded tree and differing from the build workspace. This
confirms that the directly imported source in this build was not the source
at the specified commit. The build succeeded against the archive contents,
but it must not be described as an acceptance build against the pinned Git
tree. A verified source acquisition and fresh GCP build are required.

Remaining to-do list: audit dependency contents and exact-source evidence,
formalize and verify the remaining operator and response claims, and retain
the corresponding independent acceptance receipts.
