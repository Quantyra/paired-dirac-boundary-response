# Lean certification status

Status: **finalized at the certificate scope stated below (2026-11-01 UTC).**
Every Lean source in `lean/` is matched to a retained GCP receipt, and no
source in the repository is left uncompiled. This is a statement about the
formal-algebra certificates, not about the paper's analytic or physical
theorems.

What "finalized" means here, and what it does not mean:

- Every source now has an exact-source, GCP-only run recorded with exit code,
  Lean/Lake versions, source hash, and (except where the legacy receipt is
  explicitly qualified) a compiled `.olean`.
- The reconciliation is reproducible: `scripts/audit-lean-receipts.ps1`
  recomputes both the committed LF SHA-256 and the Windows CRLF SHA-256 of
  each source and searches the receipts. Its current output, which must show
  zero unmatched sources, is [`notes/lean-receipt-audit.md`](lean-receipt-audit.md).
- It does **not** certify any analytic input, operator realization, domain or
  boundary identification, heat-trace or regulator limit, physical
  normalization, the P1-C observable, novelty, or any wormhole existence or
  stability claim. Those obligations remain open in
  [`notes/proof-audit.md`](proof-audit.md) and the S001 story.

## Inventory

56 sources are audited. They fall into the following certified families; each
family links the receipt that records its exact source and axiom report.

| Family | Main declarations | Receipt(s) | Certified content |
| --- | --- | --- | --- |
| Paired congruence algebra | `congruence_isClosed_draft`, `congruence_adjoint_eq_draft`, `congruence_squareDomain_draft`, `congruence_graph_upper_draft`, `congruence_graph_lower_draft`, `congruence_graph_lower_composed_draft` | [`gcp-clean-replay-20261030`](../evidence/gcp-clean-replay-20261030/README.md), [`gcp-graph-clean-20261030`](../evidence/gcp-graph-clean-20261030/README.md) | Closedness, adjoint identity, natural square domain and graph bounds for an abstract partially defined operator under explicit invariance hypotheses |
| Scalar graph constants | `scalar_congruence_graph_bounds_draft` | [`gcp-scalar-multiplier-graph-clean-20261030`](../evidence/gcp-scalar-multiplier-graph-clean-20261030/README.md) | The manuscript's `exp(B)` graph constants assembled from abstract norm hypotheses |
| Positive square | `positiveSquare_inner_draft`, `positiveSquare_nonneg_draft`, `positiveSquare_symmetric_draft`, `positiveSquare_selfAdjoint_draft` | [`gcp-clean-replay-20261030`](../evidence/gcp-clean-replay-20261030/README.md), [`gcp-grading-clean-20261030`](../evidence/gcp-grading-clean-20261030/README.md) | Norm-square identity, nonnegativity, symmetry and self-adjointness of the formal square under dense-domain hypotheses |
| Partner / skew / resolvent | `partner_skew_domain_draft`, `partner_skew_action_draft`, `partner_skew_operator_draft`, `real_scaled_skew_adjoint_draft`, `mass_shift_surjective_from_skew_draft`, `mass_shift_solution_bound_draft`, `mass_shift_injective_from_skew_draft`, `mass_shift_bijective_from_skew_draft`, `mass_resolvent_solution_exists_unique_bound_draft` | [`gcp-partner-skew-clean-20261030`](../evidence/gcp-partner-skew-clean-20261030/README.md), [`gcp-partner-skew-operator-clean-20261030`](../evidence/gcp-partner-skew-operator-clean-20261030/README.md), [`gcp-mass-skew-resolvent-clean-20261030`](../evidence/gcp-mass-skew-resolvent-clean-20261030/README.md) | Adjoint-domain and action identities for `JD` under a partner hypothesis, real scaling of adjoints, and `m + Q` bijective on `Dom(Q)` with `m‖u‖ ≤ ‖f‖` for closed, dense, skew-adjoint `Q` |
| Paired unitary square | `left_unitary_positive_square` | [`gcp-left-unitary-square-20261030`](../evidence/gcp-left-unitary-square-20261030/README.md) | `(UD)*(UD) = D*D` as partially defined operators, including domains |
| Finite-cut interface square | `p1_finite_cut_boundary_square`, `composition_domain_reduction`, `projected_robin_congruence` | [`gcp-p1-finite-cut-boundary-square-20261031`](../evidence/gcp-p1-finite-cut-boundary-square-20261031/README.md), [`gcp-finite-cut-congruence-domain-20261031`](../evidence/gcp-finite-cut-congruence-domain-20261031/README.md), [`gcp-projected-robin-congruence-20261031`](../evidence/gcp-projected-robin-congruence-20261031/README.md) | Set-domain reduction of the composition domain, the projected Robin coefficient algebra `(K - b_n)/2`, and the finite-cut boundary square under explicit preservation hypotheses |
| Lapse domains | `lapse_positive_square_domain`, `projected_trace_lapse_square_domain` | [`gcp-lapse-adjoint-domain-20261030`](../evidence/gcp-lapse-adjoint-domain-20261030/README.md), [`gcp-lapse-square-domain-20261030`](../evidence/gcp-lapse-square-domain-20261030/README.md), [`gcp-lapse-trace-domain-20261030`](../evidence/gcp-lapse-trace-domain-20261030/README.md) | One-sided multiplier adjoint-domain identity and square-domain equality from forward/inverse preservation |
| Modes, orbit and chirality | `mode_*`, `orbit_*`, `product_chirality_*`, `partner_chirality_*`, `ModeRealMassBridge.*` | [`gcp-mode-operator-20261029`](../evidence/gcp-mode-operator-20261029/README.md), [`gcp-combined-mode-domain-7a944d9`](../evidence/gcp-combined-mode-domain-7a944d9/README.md), [`gcp-mode-real-mass-20261030`](../evidence/gcp-mode-real-mass-20261030/README.md), [`gcp-partner-chirality-20261030`](../evidence/gcp-partner-chirality-20261030/README.md) | Angular-mode operator/adjoint/square identities, the grading-odd commutator, and `JD`/`JG` domain-aware anticommutation under explicit hypotheses |
| Grading trace | `grading_odd_trace_zero` | [`gcp-grading-clean-20261030`](../evidence/gcp-grading-clean-20261030/README.md), [`gcp-grading-revised-pass-d`](../evidence/gcp-grading-revised-pass-d/README.md) | Finite-matrix grading-odd trace cancellation |
| Transported congruence | `transported_congruence_action` | [`gcp-transported-congruence-20261030`](../evidence/gcp-transported-congruence-20261030/README.md) | Algebraic action identity for total linear maps and commuting equivalences |
| Endpoint algebra | `source_geometric_endpoint_action` | [`gcp-source-endpoint-algebra-20261030`](../evidence/gcp-source-endpoint-algebra-20261030/README.md) | The bounded scalar action identity `E(D + M exp b)E = EDE + M` |
| Flat tangent / contact algebra | `FlatFormFactorIntegral.*`, `FlatFormFactorObstruction.*`, `FlatSourceContactLedger.*`, `RawTangentFormFactor.*` | [`gcp-flat-integral-20261030`](../evidence/gcp-flat-integral-20261030/README.md), [`gcp-flat-form-factor-20261030`](../evidence/gcp-flat-form-factor-20261030/README.md), [`gcp-flat-source-contact-ledger-20261031`](../evidence/gcp-flat-source-contact-ledger-20261031/README.md), [`gcp-raw-tangent-sourceonly-20261030`](../evidence/gcp-raw-tangent-sourceonly-20261030/README.md) | Rational form-factor identities and the exact flat source-contact coefficient ledger |
| Full-Weyl mode algebra | `full_weyl_mode_square_identity`, `fullWeyl_cubic_difference`, `fullWeyl_log_difference`, `full_weyl_leading_angular_jet`, `full_weyl_subtracted_jet_through_fourth_order`, `FullWeylConstantModeBenchmark.*`, orbit-correction vertex | [`gcp-full-weyl-square-algebra-20261030`](../evidence/gcp-full-weyl-square-algebra-20261030/README.md), [`gcp-full-weyl-seam-coefficient-comparison-corrected-20261031`](../evidence/gcp-full-weyl-seam-coefficient-comparison-corrected-20261031/README.md), [`gcp-full-weyl-angular-jet-exact-20261031`](../evidence/gcp-full-weyl-angular-jet-exact-20261031/README.md), [`gcp-full-weyl-constant-mode-20261031`](../evidence/gcp-full-weyl-constant-mode-20261031/README.md), [`gcp-full-weyl-orbit-correction-vertices-20261031`](../evidence/gcp-full-weyl-orbit-correction-vertices-20261031/README.md) | Noncommutative square expansion under partner/grading/commutation assumptions, corrected cubic and cubic-log seam coefficient differences, the angular jet through fourth order, one-mode Hessian benchmarks, and the mixed commutator vertex |
| Curved scalar contact | `CurvedScalarContactJet.*` | [`gcp-curved-scalar-contact-jet-20261031`](../evidence/gcp-curved-scalar-contact-jet-20261031/README.md) | Two jet/coefficient identities for the curved scalar contact |
| Resolvent constants | seven rational constants | [`gcp-resolvent-variation-constants-20261031`](../evidence/gcp-resolvent-variation-constants-20261031/README.md) | `q < 0.134`, `C < 1.32`, `264/25`, `8448/25` as exact rational inequalities |
| Radial gap | three scalar radial-gap inequalities | [`gcp-radial-mass-gap-20261030`](../evidence/gcp-radial-mass-gap-20261030/README.md) | Conditional scalar inequalities, not an operator or physical gap |

`PairedDirac.lean` is the shared definition library, and `AuditHash.lean` is a
hash-reporting utility that the 29-source clean replay deliberately excluded;
neither states a paper theorem. Both are still audited for byte identity.

## What remains open

No certificate in this inventory discharges any of the following, and none may
be cited as if it did:

- the actual smooth/rough paired geometry, bundle identification, bolt and
  conformal-infinity boundary conditions;
- the physical H1 projector domains, boundary transgression, contact/density
  and LLL transfers;
- the analytic Taylor remainders, Euler--Maclaurin tails, mode sums and
  Fourier integrals that the algebra only parametrizes;
- any common-regulator subtraction, curved remainder or renormalized response;
- the P1-C observable map, the P1-D endpoint match and the novelty decision.

## Reproduce

```powershell
powershell -ExecutionPolicy Bypass -File scripts/audit-lean-receipts.ps1 -OutFile notes/lean-receipt-audit.md
```

The script must exit 0 and report `unmatched: 0`. Any Lean rerun must still
execute on GCP under the Space protocol; nothing here authorizes a local Lean
build.

Remaining to-do list: close the analytic, physical and regulator gates; finish
the closest-prior-art comparison; record the S001 decision.
