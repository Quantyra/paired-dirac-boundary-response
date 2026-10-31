# GCP flat source-contact ledger replay

Status: the exact coefficient-algebra source compiled successfully on the
Quantyra GCP Lean builder. This certifies only the rational identities in
`FlatSourceContactLedger.lean`; it does not certify the analytic inputs,
physical normalization, common-regulator response, endpoint-domain match, or
Paper 1 as a whole.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Run directory: `paper1-flat-source-contact-ledger-20261031-retry3`
- Base source identity: `6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Source SHA-256: `b21468d3fe08878c15b33ed29578599676ba3aabdbd0c0288c71b3269672f67f`
- OLean SHA-256: `34360df975d55b2a27ef6f1e2395e1327f1cadfb3fe2461c22d683a2cc8a6c64`
- Exit code: `0`

The source was compiled against the retained Mathlib/package build located in
`paper1-domain-exact-tree-f7b70c1-20261029`, with Lean 4.30.0. These dependency
artifacts were reused rather than rebuilt in this run; this receipt does not
hash each imported `.olean` or independently establish its source/build
provenance. The runner is
`lean/cloud-flat-source-contact-ledger-20261031.sh`. It verifies the base
source commit and source hash, loads the cached package libraries, compiles the
copied source, records theorem output and hashes, and fails if `sorryAx`
appears.

Lean reported these four declarations, each depending only on the standard
axioms `propext`, `Classical.choice`, and `Quot.sound`:

- `source_contact_coefficient_eq`
- `physical_half_correction_eq`
- `correction_minus_contact_eq`
- `total_flat_ledger_eq`

## Receipt contents

This directory preserves the copied Lean source, compiled `.olean`, Lean and
Lake version output, full run log, source and `.olean` hashes, terminal exit
code, and finish time from GCP. The source itself states the analytic and
physical inputs it assumes; the successful compilation does not prove those
inputs or the paper's response theorem.
