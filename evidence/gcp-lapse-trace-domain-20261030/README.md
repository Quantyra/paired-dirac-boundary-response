# GCP projected-trace lapse domain check

Run `paper1-lapse-trace-domain-20261030a` exited 0 on
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`, using Lean 4.30.0. It checks
`PairedDirac.projected_trace_lapse_square_domain`, connecting the projected
trace multiplier-invariance lemma to the one-sided lapse square-domain
identity. The declaration reports `propext`, `Classical.choice`, and
`Quot.sound` as axioms.

The checked source SHA-256 is
`3e49b0804999c868970ae4642dc7dfbfdc3c55b743684b9b2c69340d204f1896`;
the transferred trace source hash is
`c9ea495178d6fd9970608ed23c80b4673d2927cb6382be401afd3ceb6de9aa6c`.
Both match [the run log](run.log), whose SHA-256 is
`71dca9e8c54e9cfb05b8d853a9a2fbb835debc34eaefd22dc9f43c214fa664ef`
(with the embedded space removed). The run rebuilds the lapse and trace
source prerequisites and reuses other GCP `.olean` files; key hashes and
Lake warnings appear in the log. The [source-only environment receipt](../gcp-sourceonly-6858aa7/README.md)
records inherited provenance caveats.

The theorem assumes the adjoint domain is the stated projected-trace kernel,
Sobolev-space multiplier preservation and trace intertwining, boundary
commutation, density and multiplier symmetry. It does not establish those
geometric or analytic hypotheses for the actual paired realization, the H²
estimate, the response or the paper.

Remaining to-do list: prove physical hypotheses and response, resolve prior
art, prepare the manuscript, and certify the full supported claims on GCP.