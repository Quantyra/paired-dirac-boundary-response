# Later drafts against source-built dependencies

Run `paper1-later-sourceonly-6ecf899-20261029` exited 0 with Lean 4.30.0, after requiring a successful source-only base run. It checked the adjoint equality, natural square-domain characterization and graph estimates, reporting only `propext`, `Classical.choice`, and `Quot.sound`. The driver compared the immutable snapshot's PairedDirac source with the source-built base and recorded the draft file hashes. Raw log SHA-256: `530f805b0d3e05aedd4a759cf18d7a7aa559f37d082a5b163a7d644c7186c977`.

This uses the source-built dependency environment, including its local-change warnings and reused toolchain. It checks the stated abstract assumptions and does not establish the physical geometry, heat response or full paper. Acceptance depends on the remaining environment audit and the actual theorem scope.

Remaining to-do list: audit the source-only environment, establish the physical hypotheses and response claims, and certify the complete supported paper.
