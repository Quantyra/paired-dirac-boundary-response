# Git-tree archive verifier development check

On the GCP builder, `lean/verify-git-tree-archive.py` was run with an archive
made by `git archive --prefix=fixture/ HEAD` from the task-owned paper source.
It reported seven expected and seven archive files, no differences, and PASS.
Against `HEAD~1` using the same archive it reported one different path,
`lean/PairedDirac.lean`, and failed the comparison as intended. This checks
basic matching and changed-content detection, not every archive edge case.
No Lean invocation was involved. The actual replacement dependency archive
and all dependency trees still require verification and a fresh GCP build.

Remaining to-do list: verify exact-commit archives and modes against independent
Git trees, retain the full comparison receipts, then rebuild on GCP.
