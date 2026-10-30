# GCP partner/chirality algebra check

Run `paper1-partner-chirality-20261030a` exited 0 on
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`, using Lean 4.30.0. It checks
`PairedDirac.partner_chirality_anticommutes`: given explicit adjoint-domain
and intertwining hypotheses, the partner involution J and the commuting
chirality G yield the stated domain-aware anticommutation of JD and JG. The
partially defined operator and its actual Mathlib adjoint are used; physical
domain properties are hypotheses.

The checked source SHA-256 is
`f34f91fbe8bec7a8b6619935ca5925567aa34d17e537166a154cd19c3e58f7b1`;
the retrieved log SHA-256 is
`f640f36339a8f27959685c0bed8599be79eafbb71e4a4474e5441f9b771a645b`.
The reported axioms are `propext`, `Classical.choice`, and `Quot.sound`,
with no `sorryAx`. The run reused the GCP source-only environment; Lake
reports local dependency changes, so the provenance limitations in
`evidence/gcp-sourceonly-6858aa7/README.md` apply. This is not an independent
exact-tree acceptance build.

The theorem does not establish the involution, domain mapping or intertwining
hypotheses for the physical spin bundle, the skew-adjoint partner theorem,
the conversion trace, the regulator limit, or full paper certification.

Remaining to-do list: establish and formalize the physical hypotheses and
response, resolve novelty, prepare the manuscript, and certify the supported
paper theorem package on GCP.