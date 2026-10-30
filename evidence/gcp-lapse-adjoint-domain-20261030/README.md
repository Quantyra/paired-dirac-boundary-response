# GCP one-sided multiplier adjoint and square domains

Run `paper1-lapse-adjoint-domain-20261030b` exited 0 on
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`, with Lean 4.30.0. The checked declarations derive the
adjoint-domain relation for the one-sided operator E A from dense definition
and symmetry of E, and then derive equality of positive-square composition
domains assuming that E squared preserves the adjoint domain in both
directions. The latter relation is no longer assumed separately. All three
reported axiom sets are `propext`, `Classical.choice`, and `Quot.sound`.

The source SHA-256 is
`99999b2dee493bf7638c06d36485aeefcb9685c8217a6da9a2b81fb983fd4648`,
matching the transferred source in [the log](run.log). The log SHA-256 is
`174712f49cdb9e4971b2abccd6f3469c5ed6e2e71632f36c7afdefa8e7a92db1`.
The run rebuilds the preceding square-domain source and reuses GCP `.olean`
prerequisites; key hashes and Lake warnings appear in the log. The
[source-only environment receipt](../gcp-sourceonly-6858aa7/README.md)
records inherited provenance caveats. The [first attempt](attempt.log)
failed on an incorrectly inferred density hypothesis and contains `sorryAx`;
it is not a successful certificate.

The result remains abstract. It does not establish that the physical scalar
multiplier preserves the actual adjoint domain, the H² estimate, physical
locality or the response, nor certify the paper.

Remaining to-do list: verify physical hypotheses and response, resolve prior
art, prepare the manuscript, and certify the full supported claims on GCP.