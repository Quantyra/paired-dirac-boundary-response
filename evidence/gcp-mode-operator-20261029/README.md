# GCP partially defined mode square-domain check

Run `paper1-mode-operator-62cd5a9-20261029` exited 0 on `quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone `us-central1-a`, using Lean 4.30.0. It checked the partially defined `modeOperator` and `mode_square_domain_draft`; the theorem's axiom report lists `propext`, `Classical.choice`, and `Quot.sound`. The theorem proves equality of the actual `LinearPMap` composition domains under the explicitly assumed equality of adjoint domains and the mapping of the original domain into that adjoint domain. It does not prove those hypotheses, the square action, or the physical realization.

Remote and local source SHA-256 for `ModeOperatorDraft.lean` match `0081f5b8fc3f06d436147fec9e350569019fa91037bd88b42357d9572d307b7d`; its local Git blob `90869faddadad93c85cc6f0f040211d4155a4d71` matches commit `62cd5a9`. The unchanged mode-domain source SHA-256 matches `e2470a7ab630cd080610ffdb0aabe8c4779d6c3944bcdfd73999b7f00e3bf83c`, with blob `203fdf5c239ed11973380e778d3a59966717978e` at that commit. The [success log](success.log) SHA-256 is `94b4ccb2c7d86d328475874fa434cba2a7e935c94c96fc00fddb31c57fba0cbb`.

The [first run](failed.log) exited 1 because the proof did not apply the assumed adjoint-domain equality before unfolding the mode operator; its axiom report includes `sorryAx` and is not a certificate. The corrected run uses an explicit rewrite. The success run rebuilt the mode-domain dependency and reused a recorded `SquareDomainDraft.olean` from the earlier source-only GCP run. Source files were transferred by SCP and compared by hash, not by a verified full bundle on the VM. The reused [source-only environment](../gcp-sourceonly-6858aa7/README.md) retains documented worktree warnings and provenance caveats.

A builder stop was requested after the run. This is not certification of the physical mode square, heat response or paper.

Remaining to-do list: prove the adjoint and chirality hypotheses and square action for the actual operator, verify physical geometry and response, complete novelty and manuscript, and certify the supported theorem package in Lean on GCP.
