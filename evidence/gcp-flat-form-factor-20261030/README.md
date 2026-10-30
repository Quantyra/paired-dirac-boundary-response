# GCP flat form-factor coefficient check

Run `paper1-flat-form-factor-20261030b` exited 0 on the designated GCP
builder, using Lean 4.30.0. The checked source SHA-256 is
`0074c72f304737ef24e4805675f59311b45839649593db2ec8a23813398a634d`.
The theorem reports `propext`, `Classical.choice`, and `Quot.sound` and no
`sorryAx`. The run directories retain both source, log and exit code. Run a
failed because its imports did not provide the real-number instances; its
failed source and log are preserved. Run b adds the required import.

The reused source-only environment reports local changes in dependency
worktrees; its provenance limitations remain as recorded in
`evidence/gcp-sourceonly-6858aa7/README.md`. The theorem proves only that
one real scalar cannot satisfy both displayed rational coefficient equations.
It does not derive either analytic form factor or its Taylor expansion, prove
physical folding, rule out general reductions, establish novelty, or certify
the paper.