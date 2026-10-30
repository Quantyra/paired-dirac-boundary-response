# Isolated Lake hash reproduction

On GCP, the initial run exited 1 because a documentation comment preceded
`#eval`. Its raw log SHA-256 is `014b68a9c132a4680377bd54dd090a49b82cfb056c8932540c148a9925899220`; no hash was established by
that run. The corrected run exited 0 using Lean 4.30.0 and an isolated copy
of the tracked ProofWidgets package lock. `Lake.cacheFileHash` with text
mode generated a hash file byte-identical to the extra file observed in the
source-only workspace; both files have SHA-256
`b60f08dda4702ea470b5748ef7b62a06ce64365403eac7750a25cbd70ae51248`.
The successful raw log SHA-256 is `5b83a035d7aa98b84fe7e1f01bbd8c4ac5174ec45291c3d559855afbec7796f5`.

The pinned ProofWidgets target uses text mode for its package-lock build,
and the pinned Lake code writes a `.hash` file for this cache. The
experiment independently reproduces the artifact's content and is
consistent with Lake creating it during the build. It does not establish a
historical write trace or make the original strict worktree audit pass.

Remaining to-do list: finish acceptance review, establish the physical and
response claims, and certify the supported paper in Lean.
