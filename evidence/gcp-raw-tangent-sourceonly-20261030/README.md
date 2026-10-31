# GCP source-only replay: raw tangent form factor

Run date: 2026-10-30 HST (2026-10-31 UTC). Result: exit code 0 on
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`, using Lean 4.30.0 (`d024af099ca4bf2c86f649261ebf59565dc8c622`).

The replay recompiles `FlatFormFactorIntegral.lean` and checks
`RawTangentFormFactor.lean`, including `#print axioms` for
`PairedDirac.raw_tangent_form_factor`. The declaration reports only
`propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx` is reported.
It proves equality of the stated real interval integral and the compact
`diracF` representation for every real argument. It does not prove the
momentum/heat-trace derivation, physical folding, the full tangent response,
physical normalization, curved/common-regulator limit, novelty, or the paper.

## Exact inputs and environment

- Paper source revision: `724f80d`.
- `FlatFormFactorIntegral.lean` SHA-256:
  `0bda3ceb94db5f69ef4a8ec878974905a4552c0646a70a3aa4605881c5e0b22b`.
- `RawTangentFormFactor.lean` SHA-256:
  `5be3b10ce9494eb8354abf058e995ede4ede361a0a7a3cdf1b7c1a1a0b13b5a9`.
- Dependency project: source-only base commit
  `6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5`, with the nine dependency
  archives and manifest described in
  [`gcp-sourceonly-6858aa7`](../gcp-sourceonly-6858aa7/README.md).
- GCP run directory:
  `/home/dfredriksen_quantyra_org/quantyra-space-runs/paper1-raw-tangent-sourceonly-20261030`.

Lake reported local-change warnings for the nine reconstructed dependency
repositories while obtaining `LEAN_PATH`. The source-only setup audits their
archived tracked trees, but this replay is not described as a fresh, warning-
free dependency rebuild. The warning and complete command output are retained
in `run.log` (SHA-256
`eb8498a9363ce3bb2acd7927410f3d9cfddde89a293db7c6398960896756d868`); the
exit marker is `exit-code` and the completion timestamp is `finished-utc`.
The `.olean` is retained as the compiled artifact.

Remaining to-do list: certify the supported operator/domain results and any
further claim-matched response lemmas on GCP; prove the physical response and
common-regulator bridge; finish novelty, manuscript and S001.3.
