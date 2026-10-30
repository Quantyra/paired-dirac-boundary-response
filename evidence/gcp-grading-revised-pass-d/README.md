# GCP development pass: finite-matrix grading cancellation

On 2026-10-30, Lean 4.30.0 checked `PairedDirac.grading_odd_trace_zero` at source SHA-256 `3fced26e3baf0823203e9d0a2b7b33edfc2841b81138d2cae7a96eab3ca7dc6c`, with exit code 0. It reported axioms `propext`, `Classical.choice`, and `Quot.sound`, without reported `sorryAx`. The run reused a source-only development workspace whose dependencies reported local changes; this is not a clean acceptance replay. The preceding failures and their source identities are in `../gcp-grading-revised-failure-c/README.md`.

The declaration proves finite-matrix trace cancellation for an involution anticommuting with the matrix. The ordinary compact-model trace-class argument is in `../../notes/graded-odd-commutator-trace-class.md`; neither this check nor that conditional argument establishes the complete physical response or certifies the paper.

Remaining to-do list: cleanly replay the declaration, verify its physical trace-class application, complete the response and novelty decision, finish the manuscript, and certify its supported claims.
