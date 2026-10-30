# Graph projection identity: GCP check

GCP run `paper1-projection-sourceonly-08dcea6-20261029` exited 0 using
Lean 4.30.0 and the source-built dependencies. Source
`08dcea635b1567fb62bfbf9683364ef7feaa201e` proves the variational identity
obtained by projection onto the graph of a closed partial operator. The axiom
report lists only `propext`, `Classical.choice` and `Quot.sound`;
Lean also reported unused-simplification warnings. Raw log SHA-256: `cf036150d9cc62f6d936878746532f1945473b25e77dfe297dfe74334eafbac9`.

This checks the graph-projection bridge, not yet surjectivity, square-domain
density, self-adjointness, or the physical and response claims. Base
environment provenance is recorded in the source-only receipt.

Remaining to-do list: derive the square resolvent and adjoint equality,
establish physical hypotheses, and certify the supported paper.
