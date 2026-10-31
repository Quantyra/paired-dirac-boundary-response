# Clean GCP replay: conditional mass resolvent components

Run: `paper1-mass-resolvent-components-clean-20261030a` on
`quantyra-lean-builder-01` (`us-central1-a`, project
`quantyra-lean-cert-20260915`). The source-only replay used Lean 4.30.0 and
base source commit `6376ccc794fb05ffe52a6c4e5f24e1e9a0047955`, with five
source overlays: `PartnerSkewDraft.lean`, `PartnerSkewOperatorDraft.lean`,
`MassSkewLowerDraft.lean`, `MassSkewOperatorLowerDraft.lean`, and
`MassSkewSurjectiveDraft.lean`. Their hashes were checked before building;
see `lean-source-sha256.txt`. The clean pinned dependency archive audit passed.

The driver completed with exit code 0 (`exit-code`), and the expected Lean
source and OLean hash manifests are retained here. The relevant declarations
typechecked:

- `PairedDirac.partner_skew_operator_draft`
- `PairedDirac.mass_skew_lower_bound_draft`
- `PairedDirac.skew_mass_lower_draft`
- `PairedDirac.skew_add_one_surjective_draft`

The axiom reports show only Lean's standard `propext`, `Classical.choice`,
and `Quot.sound`; no `sorryAx` was reported. This certifies these abstract
conditional declarations against the recorded source snapshot and clean
dependency trees. In particular, it does not certify the physical global
paired domain, the partner assumptions for the actual realization, scaled
adjointness for arbitrary positive mass, the composed physical square, an
inverse/resolvent theorem assembled for that realization, or the complete
tangent response. The source and OLean hash manifests, build log, and
overlay/dependency audit are included for inspection.

The replay script was `lean/cloud-mass-resolvent-components-clean.sh` from
technical source commit `87e4f2e`.
