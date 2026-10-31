# GCP curved scalar/contact jet replay: retained failure

Status: failed. Exit code `1`. This receipt is retained as required evidence
that the first prepared version of the curved scalar/contact jet source did
not compile. No result from this run may be cited.

## Reproduction record

- GCP project: `quantyra-lean-cert-20260915`
- VM: `quantyra-lean-builder-01`, zone `us-central1-a`
- Run directory: `paper1-curved-scalar-contact-jet-6a952be2-20261031`
- Base source identity: `6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5`
- Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`
- Lake: `5.0.0-src+d024af0`
- Source SHA-256: `6a952be2f8139ac62cc6e1e84aef31bda5ccb814f080a57cb6b3b5ebb51255b3`
- Exit code: `1`
- Finished: `Sat Oct 31 22:39:21 UTC 2026`
- No `.olean` was produced.

## What failed

Lean reported both theorems as depending on `sorryAx`:

- `curved_scalar_contact_jet_identity` —
  `[propext, sorryAx, Classical.choice, Quot.sound]`
- `flat_local_coefficient_difference` —
  `[propext, sorryAx, Classical.choice, Quot.sound]`

Two independent source defects, visible in the retained `lean.log`:

1. `Real.pi` is an unknown constant under the file's imports
   (`Mathlib.Data.Real.Basic` and `Mathlib.Tactic.Ring` do not provide it).
   This produced ten `unknownIdentifier` errors and three
   `dependsOnNoncomputable` errors, and left `sorry` in place of `Real.pi`
   throughout the second theorem's goal.
2. Each proof ended with `<;> ring` on its own line following
   `field_simp [...]`. This did not parse: Lean reported `unknown tactic` at
   lines 29 and 67, and both goals were left unsolved.

Neither defect concerns the mathematical content. The statements were checked
by hand and are correct; the corrected source at SHA-256
`e8bc85145e142ea6fd0dea295fe37f2297343ab5d803bb7a02e566512c770ba1` compiles
with standard axioms only and is recorded in
[`gcp-curved-scalar-contact-jet-20261031`](../gcp-curved-scalar-contact-jet-20261031/README.md).

## Receipt contents

This directory preserves the copied failing Lean source, Lean and Lake
version output, the complete Lean error log, the full run log, the source
hash, the nonzero exit code, and the finish time from GCP.

## Hash verification caveat

The repository has `core.autocrlf=true`, so the text files here are stored in
Git with LF endings and checked out on Windows with CRLF. The recorded
SHA-256 values are for the LF bytes that GCP produced and that Git stores.
Recompute them against the stored blob (for example `git show` or
`git cat-file blob`), not against a CRLF working copy. The `.olean` files are
binary and are stored and restored verbatim.
