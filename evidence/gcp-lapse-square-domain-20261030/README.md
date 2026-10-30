# GCP lapse square-domain transfer

Run `paper1-lapse-square-domain-20261030a` exited 0 on
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`, using Lean 4.30.0. It checks
`PairedDirac.lapse_positive_square_domain`: two abstract positive squares
have equal composition domains if their first-order domains agree, one
first-order action is the other followed by a linear equivalence E, the
stated adjoint-domain relation holds, and E squared preserves the original
adjoint domain in both directions. The reported axioms are `propext`,
`Classical.choice`, and `Quot.sound`.

The source SHA-256 is
`8ea4e0d3be4f09dc8a137f90e3a250676449df7627c6e2414ad3823435dba670`,
matching the transferred source recorded in [the log](run.log). The log
SHA-256 is `0365c3a7998a78793645554ba3327b292596cee3b0dbb9945d89a5d9c71e0e8a`.
The run reuses previously built GCP `.olean` prerequisites; key hashes and
Lake warnings are recorded. It inherits the dependency and build provenance
caveats in [the source-only receipt](../gcp-sourceonly-6858aa7/README.md).

The abstract theorem assumes rather than proves the formula for the adjoint
of the one-sided multiplication, the H¹ projector-domain preservation,
closedness, the product rule and the uniform H² estimate. It does not certify
the physical domains, heat response or paper.

Remaining to-do list: establish and formalize the physical inputs and
response, resolve prior art, prepare the manuscript, and certify the full
supported theorem package on GCP.