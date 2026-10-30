# Graph-preimage development check

On GCP, `paper1-graph-draft-olddeps-b55befb-20261029` completed with exit 0
for `ClosedGraphDraft.lean` at commit
`b55befb15d55013b552969eb703eb1446fe64094`. Its source SHA-256 was
`c30e1981eeb2aeb7a7d33665f2661802f1a15a6e53c75f734a0d36eda01ec347`.
The retained run log has SHA-256
`1eaaee1a8c6ddb5c8fef37dff679ac93f52d25378c0afb398ae43f10c3fdd1df`.
Lean 4.30.0 reports `propext`, `Classical.choice`, and `Quot.sound` for
`congruence_graph_preimage_draft`. This checks the graph identity, not its
closedness consequence, adjoint identity, physical domain, or the paper.

The run reused the earlier development dependencies whose bytes differ from
their recorded trees by CRLF conversion. The new exact-byte dependency build
and clean source-only acceptance remain separate obligations. The source was
not modified in the retained build workspace.

Remaining to-do list: compile and audit the closedness draft, repeat supported
results with accepted exact-byte dependencies, and formalize the remaining
operator and response claims.
