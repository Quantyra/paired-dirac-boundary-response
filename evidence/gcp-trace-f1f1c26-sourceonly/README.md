# Projected trace to self-adjoint square: GCP check

GCP run `paper1-trace-sourceonly-f1f1c26-20261029` exited 0 with Lean
4.30.0 and source-built dependencies. At immutable source
`f1f1c26a45a8c9f10dbafd2f11d0685ea8759f93`, Lean checked the joined
projected-trace, closed congruence, adjoint and self-adjoint square statement.
The axiom report lists only `propext`, `Classical.choice` and
`Quot.sound`. Linter and dependency warnings remain. Raw log SHA-256:
`e883b22c184f2d2d98cb73e4c4c062e43eebcb40f128b7ba79f522cfa3f01052`.

The statement explicitly assumes the seed and adjoint domains equal the
projected trace kernels, the multiplier preserves the regularity subspace,
trace intertwinings and commutators hold, and the seed is densely defined
and closed. It does not establish these physical Sobolev or geometric
hypotheses or any heat-response theorem. Environment audit details are in
the source-only receipt.

Remaining to-do list: establish the physical hypotheses, complete and
formalize the response and novelty audit, and prepare the manuscript.
