# Clean GCP replay: abstract mass resolvent assembly

Run: `paper1-mass-skew-resolvent-clean-20261030b` on
`quantyra-lean-builder-01` (`us-central1-a`, project
`quantyra-lean-cert-20260915`). The replay used Lean 4.30.0, pinned base
source commit `6376ccc794fb05ffe52a6c4e5f24e1e9a0047955`, and nine
SHA-verified source overlays. The exact source hashes are in
`lean-source-sha256.txt`; the output OLean hashes are in
`lean-olean-sha256.txt`. All nine pinned dependency trees and manifest
revisions passed their clean-tree audits. The build completed all 2,352 jobs.

The driver completed with exit code 0 (`exit-code`). It typechecked these
declarations, whose axiom reports contain only Lean's standard `propext`,
`Classical.choice`, and `Quot.sound`:

- `PairedDirac.real_scaled_adjoint_domain_draft`
- `PairedDirac.real_scaled_adjoint_eq_draft`
- `PairedDirac.real_scaled_skew_adjoint_draft`
- `PairedDirac.mass_shift_surjective_from_skew_draft`
- `PairedDirac.mass_shift_solution_bound_draft`
- `PairedDirac.mass_shift_injective_from_skew_draft`
- `PairedDirac.mass_shift_bijective_from_skew_draft`
- `PairedDirac.mass_resolvent_solution_exists_unique_bound_draft`

The driver rejects any `sorryAx`; none was reported. Mathematically, this
establishes the abstract positive-mass map `m + Q` as a bijection from
`Dom(Q)` to `H`, and proves the solution estimate
`m * ‖u‖ ≤ ‖f‖`, conditional on Q being closed, densely defined, and
skew-adjoint on the stated Hilbert space. The scaled-adjoint lemma uses a
real nonzero scalar, as required for positive real mass normalization.

This receipt does not identify Q with the physical paired Dirac realization
or prove its global domain, boundary partner identity, geometric hypotheses,
or density. It does not certify the minus-mass shift, trace estimates, the
complete tangent boundary response, or the paper as a whole. The full run log,
overlay status, source hashes, OLean hashes, and completion record are retained
in this directory.

The exact replay driver is `lean/cloud-mass-skew-resolvent-clean.sh` with
SHA-256 `506f9c17f2a0a5b6100a9c8ea98e42e689d473531edc491368cb2aa1d887be6d`.
It is included with this receipt so the corrected hash pin and run directory
can be audited together.
