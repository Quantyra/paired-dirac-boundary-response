# Source-only GCP development build

Run `paper1-sourceonly-6858aa7-20261029` exited 0 with Lean 4.30.0. Its driver verifies the source bundle, toolchain archive, manifest and nine reconstructed dependency archives; the recorded tree comparison reports matching paths, modes and Git blob identities. The task-owned build used `lake --no-cache build PairedDirac`, followed by no-cache Lean checks of the graph-closedness and adjoint drafts. All reported axioms are `propext`, `Classical.choice`, and `Quot.sound`. Raw log SHA-256: `fd5dcf98d5384e359c34cd18bbd6e86363f8fbd86a6f036ccf7fb704a0b2e387`.

Lake nevertheless emitted local-change warnings for all nine metadata-only dependency repositories. The archive/tree verification is recorded, but those warnings and the full environment provenance still require independent acceptance audit. The reused toolchain was extracted in the preceding exact-tree run; this run verified the toolchain archive hash but did not independently re-extract it. This result concerns the abstract declarations, not the physical or response theorem and not certification of the paper.

Remaining to-do list: audit dependency and toolchain provenance, inspect the later-draft check, and complete the physical and response proofs and their Lean certification.

## Post-build worktree audit

A read-only run of `lean/audit-dependency-worktrees.py` compared the
actual extracted files against each local pinned Git tree, excluding
`.git` and `.lake`. It exited 1: all tracked paths, Git blob hashes
and executable modes matched, and eight repositories had no extra files;
ProofWidgets had one extra `widget/package-lock.json.hash` (16 bytes).
All nine Git indexes had zero entries, explaining their deletion-style
status and local-change warnings. The extra file was observed after the
build; its origin and effect have not been independently established.
The raw audit output SHA-256 is `2fd68423c6d149a8546207682a9eb4ab18b5e159f00ec9ab5c3dab632c4f58cb`. The excluded build artifacts
are not validated by this worktree comparison.

A GNU tar comparison against the reused toolchain archive also exited 1
and produced extensive UID/GID differences; it is not a successful
content audit. A comparison that separately checks file bytes and types
without requiring matching ownership remains open.

## Ownership-independent toolchain comparison

The GCP audit in `lean/audit-toolchain-archive.py` exited 0. It streamed
the retained Lean 4.30.0 archive and compared all 13,904 regular files,
570 directories and 12 symbolic links against the reused extraction. It
reported zero byte, type, link-target or executable-mode differences and
zero extra entries; ownership was deliberately excluded. Raw log SHA-256:
`92ae64ea8264482d1a37543e68cf9f4c357c65d69954778553656ea8dade6ba0`. This compares the extracted toolchain to the already verified
archive, not the archive to an independently authenticated publisher release.

## ProofWidgets hash artifact

The extra file is `widget/package-lock.json.hash`, 16 bytes, with a
modification time during the source-only run. The pinned ProofWidgets
`lakefile.lean` declares a package-lock target, while the audited Lean
4.30.0 Lake source `Lake/Build/Common.lean` defines cached file hashes
using a filename formed by appending `.hash` and creates that file when
needed. This makes a Lake-generated hash cache a supported explanation,
but no recorded call trace proves exactly which operation wrote this file.
The tracked package-lock and all other tracked dependency bytes still match
the trees. The worktree audit remains exit 1 for the extra artifact; no
claim of a clean worktree is made.
