# Congruence and self-adjoint square: GCP check

GCP run `paper1-congruence-sourceonly-db2663b-20261029` exited 0 with
Lean 4.30.0 using the source-built dependencies. At immutable source
`db2663be4df35abb6eb4636ab104f99866488e05`, Lean checked the combined
closed congruence, adjoint identity and self-adjoint natural square theorem.
The axiom report lists only `propext`, `Classical.choice` and
`Quot.sound`; prior draft linter and dependency warnings remain. Raw log
SHA-256: `a0c5bf562785d9af564eaa8d3539ca95065ca06b8607e8313a26693d18e371ff`.

The theorem assumes the seed is densely defined and closed, E is a symmetric
continuous linear equivalence, and E and its inverse preserve the stated seed
and adjoint domains. It does not establish those conditions for the physical
paired Dirac realization or prove the heat response. The environment audit
and its extra reproduced Lake hash artifact are recorded separately.

Remaining to-do list: establish the physical hypotheses, complete and
formalize the response and novelty audit, and prepare the manuscript.
