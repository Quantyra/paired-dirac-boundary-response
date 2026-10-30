# GCP lapse domain from multiplier invariance

Run `paper1-lapse-adjoint-domain-20261030c` exited 0 on
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`, using Lean 4.30.0. The new declaration
`PairedDirac.left_multiplier_square_domain_from_invariance` derives equality
of the one-sided multiplier square domains from dense first-order domain,
symmetry, and separate forward and inverse preservation of the adjoint
domain. It builds on the previously checked adjoint-domain identity. Its
axioms are `propext`, `Classical.choice`, and `Quot.sound`.

The source SHA-256 is
`78a9fc86771efeeeb386ccb6b7dee48fb9f80f39fd20d94253632679dcbb1684`,
matching the remote value in [the log](run.log). The log SHA-256 is
`47f9b11d4378e8e99425f704615ac21fab2813494d189cbd4b31049571890eb2`.
The run rebuilds the preceding square-domain source and reuses GCP `.olean`
prerequisites. It inherits the dependency and build provenance caveats in
the [source-only environment receipt](../gcp-sourceonly-6858aa7/README.md).
The earlier successful source and initial failed attempt remain identified
in the [adjoint-domain receipt](../gcp-lapse-adjoint-domain-20261030/README.md).

This abstract theorem assumes the multiplier-preservation conditions; it
does not establish the physical H¹ trace theorem, H² regularity or response.
It is not certification of Paper 1.

Remaining to-do list: prove physical hypotheses and response, resolve prior
art, prepare the manuscript, and certify its supported claims in Lean on GCP.