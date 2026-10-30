# GCP unbounded mode square-action check

Run `paper1-mode-action-2efe177-20261029` exited 0 on `quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone `us-central1-a`, with Lean 4.30.0. It checked `mode_square_action_draft` and reported axioms `propext`, `Classical.choice`, and `Quot.sound`. The theorem computes the pointwise action of the actual `LinearPMap` mode adjoint composed with the mode operator, assuming a dense original domain, a symmetric total chirality map, its mapping into the adjoint domain, the intertwining and involution identities, and an imaginary mode coefficient. Together with the separately checked composition-domain theorem, it supports the abstract mode-square identity under those hypotheses.

The remote and local checked source SHA-256 match `f0e1e6de1dc3be5bbfa701c6c0818138ff21214d5a07d2563fe5883aaa2be4f1`; the local Git blob `f0a92729851c138d1ae9c77c86588510a29b7493` matches commit `2efe177`. The [success log](success.log) SHA-256 is `1a9bc68b118281a008a00cfb50d13b017b440ec8f17f7a43c6cf45841e2a8cb7`. GCP-built adjoint and mode prerequisite `.olean` hashes are recorded in the log. The source was transferred by SCP and compared by hash, not through an independently verified full repository bundle on the VM. The reused [source-only environment](../gcp-sourceonly-6858aa7/README.md) retains its documented worktree warnings and provenance caveats.

[Attempts 1–7](attempt1.log) are retained as individual logs. They exited 1 on dependent adjoint rewriting, a missing domain witness, expansion of the partially defined map, scalar normalization and a final definitional coercion. Their reports include `sorryAx`; they are not certificates. The final run completed with a nonfatal linter warning.

The theorem does not establish the physical chirality or domain hypotheses, the full product operator, the heat response or the paper. A builder stop was requested after the run.

Remaining to-do list: connect the checked domain and action statements as an operator theorem, prove their physical hypotheses, complete response and novelty audits, prepare the manuscript and certify supported claims on GCP.
