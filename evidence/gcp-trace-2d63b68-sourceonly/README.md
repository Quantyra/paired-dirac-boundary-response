# Projected trace domain invariance: GCP check

GCP run `paper1-trace-sourceonly-2d63b68-20261029` exited 0 with Lean
4.30.0 using source-built dependencies. At immutable source
`2d63b68881b564e536da2e5afae00f623f5ff9e1`, Lean checked preservation
of projected trace kernels under a multiplier and its inverse, given the
stated trace intertwinings and boundary commutators. Both reports list only
`propext`, `Classical.choice` and `Quot.sound`. The run has a linter
warning about an unused section assumption and prior warnings. Raw log
SHA-256: `6c07b362e01895bdcb2e56a763b45138d22a2c7b8b57d60b77b4c260414078cd`.

The theorem is algebraic: it assumes the ambient regularity subspace, trace
map, multiplier preservation, intertwinings and commutators. It does not
prove the physical Sobolev trace theorem, identify the actual paired domains,
or establish the response. Environment provenance is recorded separately.

Remaining to-do list: connect these hypotheses to the physical realization,
complete and formalize the response and novelty audits, and prepare the manuscript.
