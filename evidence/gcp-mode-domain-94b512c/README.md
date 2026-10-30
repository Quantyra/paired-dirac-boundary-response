# GCP sphere-mode composition-domain check

Run `paper1-mode-domain-94b512c-20261029` exited 0 on `quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone `us-central1-a`, with Lean 4.30.0. It checked `PairedDirac.mode_composition_domain` and reported axioms `propext`, `Classical.choice`, and `Quot.sound`. This algebraic lemma says adding a vector already in a submodule does not change whether the other summand is in that submodule. Its intended use is the mode composition-domain step in [the ordinary argument](../../notes/product-sphere-mixed-response.md).

The remote and local source SHA-256 are `e40e2fddf29d09b56a2c06d50de16989b3e307d733ecce290e3abe683c55fb03`; the local Git blob `2f0163bd6b83225fd5d6cba2a432104029371744` matches commit `94b512c`. The [raw log](run.log) has SHA-256 `fe158120f46c246f5743d600d85bc9413b7042a31ab5314bceeaa411cfdfaddb`. Source was transferred by SCP and its hash compared, not via an independently verified full bundle on the VM.

The reused [source-only dependency environment](../gcp-sourceonly-6858aa7/README.md) emitted the previously documented local-change warnings and retains its acceptance caveats. The lemma assumes membership in an abstract submodule; it does not establish the chirality/domain hypothesis, the unbounded adjoint or square identity, the physical product realization, or any heat response. It is not certification of the paper.

The VM start operation reported a fingerprint-change error; a subsequent direct status check returned RUNNING, and the recorded check was executed on that instance. A stop was requested after the run.

Remaining to-do list: formalize the full mode-square and geometric domains, settle the response and novelty audit, prepare the manuscript and certify its supported claims on GCP.
