# GCP real-frequency mode-square specialization

Run `paper1-real-frequency-20261030b` exited 0 on GCP instance
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`, with Lean 4.30.0. It checks
`PairedDirac.mode_positive_square_real_frequency`: the prior abstract
operator-square theorem specialized to a purely imaginary mode parameter
`(mu : Complex) * I`, with the shift simplified to `mu * mu`. The result
includes the operator equality and its composition domains, under the same
explicit dense-domain, symmetry, mapping, intertwining and involution
hypotheses. The axiom report is `propext`, `Classical.choice`, `Quot.sound`.

The source SHA-256 is
`caec4ddabf2cebe0bf322efb54ad1ed4ba02dc583ef7b57d5f1359e6776d15bf`,
matching the transferred file recorded in [the run log](run.log). The raw
log SHA-256 is
`80a620d192364c6260d9140594dc8336ff6f79461a2471f8542db9ee4df953a4`.
The run rebuilt `ModeSquareOperatorDraft.olean` from the previously checked
source and reused other GCP `.olean` files; the log records key hashes. It
uses the source-only development environment and inherits the dependency and
build provenance caveats in [its receipt](../gcp-sourceonly-6858aa7/README.md).
The first attempt failed because `ModeOperatorDraft.olean` was absent from
the search path; its [log](failed-path.log) is retained. The successful
script adds the previously built module directory.

This is a conditional abstract specialization, not verification of the
physical bundle, domain, global mode decomposition, response, or paper. No
numerical or physical admission conclusion follows.

Remaining to-do list: establish the physical hypotheses and response,
complete the novelty decision and manuscript, and certify the supported
full theorem package on GCP.