# GCP mode-square algebra check

Run `paper1-mode-domain-1393c76-20261029` exited 0 on `quantyra-lean-builder-01` in project `quantyra-lean-cert-20260915`, zone `us-central1-a`, with Lean 4.30.0. It checked `mode_composition_domain` and `mode_square_cross_cancel`. Both axiom reports list `propext`, `Classical.choice`, and `Quot.sound`. The second theorem proves the cross-term cancellation for total linear maps assuming the stated intertwining and involution identities; it does not prove those identities for the physical unbounded operator or formalize its adjoint.

The remote and local checked source SHA-256 are `e2470a7ab630cd080610ffdb0aabe8c4779d6c3944bcdfd73999b7f00e3bf83c`; local Git blob `203fdf5c239ed11973380e778d3a59966717978e` matches commit `1393c76`. The [raw log](run.log) has SHA-256 `2a657b4e3bb55220e3f04e854bcacab6b19d676d3c07735c5caeb1d00c438927`. Source was transferred by SCP and its hash compared, not through an independently verified full repository bundle on GCP. The reused [source-only environment](../gcp-sourceonly-6858aa7/README.md) retains its documented worktree warnings and provenance caveats.

The previously pending GCP stop operation `operation-1793341149691-65f08c6303e93-baf43277-43237695` was observed DONE before this builder was started. A new stop was requested after this run. This check does not certify the unbounded domain equality, geometric realization, heat response or paper.

Remaining to-do list: formalize the complete mode-square operator and physical domain, complete response and novelty audits, prepare the manuscript and certify supported claims in Lean on GCP.
