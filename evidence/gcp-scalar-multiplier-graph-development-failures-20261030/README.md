# Failed development attempts for scalar congruence graph constants

These are retained development failures, not accepted Lean certificates.
They precede the successful clean replay in
`../gcp-scalar-multiplier-graph-clean-20261030/README.md`.

- `paper1-scalar-multiplier-graph-clean-20261030a`: exit 1. Lean exposed the
  use of a partial-map type where the existing graph helpers require a linear
  partial map.
- `paper1-scalar-multiplier-graph-clean-20261030b`: exit 1. The abstract
  theorem had an exponential-product rewrite error and passed a continuous
  linear map where the graph helper required the bundled linear equivalence;
  Lean consequently reported `sorryAx` for the incomplete theorem.

The raw logs and target-file outputs are preserved in the archived directory
trees below. The corrected source and acceptance result are pinned by the
separate clean receipt.

Remaining to-do list: none for these failed development receipts.
