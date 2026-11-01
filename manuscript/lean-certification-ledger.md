# Manuscript Lean certification ledger

Date: 2026-11-01 UTC. Subject: `manuscript/DRAFT.md` (374 lines, working
draft). Purpose: record, statement by statement, exactly what is
machine-checked, what is not, and what a full Lean certification would still
require.

**Verdict: the manuscript is not Lean-certified.** Thirty-seven declarations
are now machine-checked on GCP (receipts
[`gcp-manuscript-formal-20261101`](../evidence/gcp-manuscript-formal-20261101/README.md),
[`gcp-manuscript-formal-20261101-r2`](../evidence/gcp-manuscript-formal-20261101-r2/README.md),
[`gcp-manuscript-formal-20261101-r3`](../evidence/gcp-manuscript-formal-20261101-r3/README.md),
[`gcp-manuscript-formal-20261101-r4`](../evidence/gcp-manuscript-formal-20261101-r4/README.md),
[`gcp-manuscript-formal-20261101-r5`](../evidence/gcp-manuscript-formal-20261101-r5/README.md)
and [`gcp-manuscript-integral-20261101`](../evidence/gcp-manuscript-integral-20261101/README.md)).
Every analytic proposition (4.1, 4.2, 4.3), the unbounded-domain/unbounded-operator
content of Propositions 2.1, 3.1 and 3.2, the heat-trace and regulator
statements of Section 5, and all physical identification steps remain
outside formal verification.

A reader must not read this ledger as "the manuscript has been certified".
The correct reading is: the manuscript's arithmetic and abstract-operator
skeleton is checked; its analysis and its physics are not.

## 1. Statement-by-statement status

| Manuscript location | Statement | Lean status | Evidence / missing bridge |
| --- | --- | --- | --- |
| (1.1) | paired projector domains | hypothesis, not a claim | Used as an assumption throughout; no Lean realization |
| §1 endpoint obstruction | `u^{-1/2}` image has divergent norm | not formalized | requires weighted Sobolev/collar integration theory |
| Prop. 2.1, (2.1) | `D_b` closed, `Dom(D_b)=Dom(D)`, adjoint `E_b D* E_b` | abstract core certified | `ClosedGraphDraft`, `AdjointDraft` (clean replay `gcp-clean-replay-20261030`); the `W^{1,∞}` multiplier, product rule and projector commutation are *assumed* in Lean, not derived |
| Prop. 2.1, (2.2) | `exp(B)` graph bounds | **certified abstractly** | `ScalarMultiplierGraphBoundsDraft` (`gcp-scalar-multiplier-graph-clean-20261030`) assembles the exact constants from abstract norm hypotheses. New in `gcp-manuscript-formal-20261101-r3`: `multiplier_identity` proves the ring identity `E⁻¹(DE) = D - ½c(db)`, and `second_graph_inequality` / `first_graph_inequality` derive both displayed bounds from it plus `‖E‖ ≤ e^B`, `‖c(db)‖ ≤ G`. The multiplier norms and the product rule are hypotheses, not derived |
| Prop. 2.1, square domain | composition domain of `D_b*D_b` | certified abstractly | `SquareDomainDraft`, `PositiveSquareDraft`; equality with the unperturbed domain is *not* asserted, matching the manuscript |
| (2.3) | transported boundary plane | **certified** | New: `transportedPlane_not_local`, `transportedPlane_parallel_iff`, `pminus_transportedPlane`, `transportedPlane_eq_smul`, plus the `σ₁/σ₃` eigenvector facts (`gcp-manuscript-formal-20261101-r2`). Certified for the displayed solution formula `cosh λ v₊ + sinh λ v₋`; the exponential `exp(λσ₃)` is not derived from `Hψ = 0` in Lean |
| (2.4) | `K_ζ` block system | algebraic ingredients **certified**, derivation not | New: `pauli1_sq`, `pauli2_sq`, `pauli3_sq`, `pauli2_mul_pauli1` (`σ₂σ₁=-iσ₃`), `pauli2_mul_pauli3`, and `kzeta_diag_antisym`/`kzeta_entries` for the block form `[[A,B],[C,-A]]`. The elimination from `(P*P+M²-ζ)ψ=g` to `Y'=K_ζY+source` is not formalized. Resolving the first row under `σ₂σ₁=-iσ₃` gives `(μaσ₃-νσ₂, -i f⁻¹σ₂)`, i.e. the printed signs correspond to the opposite `σ₂` convention or reversed orientation; this is a convention note, not a proof of the printed signs |
| (2.5) | variation of constants | discrete and matrix-valued forms **certified**, continuum not | New: `discrete_variation_of_constants` proves `Y 0 = P k Y k - Σ_{j<k} P j b j` for `Y j = U j Y (j+1) - b j` with `P k = U 0 ⋯ U (k-1)`; `discrete_variation_of_constants_matrix` gives the matrix-source form, and `prop_add` shows the propagator composes over consecutive blocks. The integral, the fundamental-matrix equation and the partition limit are not formalized |
| §3 interface square | `A_b* A_b = P'_b* P'_b`, domain equality | partially certified | `LeftUnitarySquare` proves `(UD)*(UD)=D*D` for a unitary `U`, and `P1FiniteCutBoundarySquare`/`ProjectedRobinCongruence` cover the finite-cut algebra; the fold conjugation `P'=F P F^{-1}`, `S=FJF^{-1}` and the domain exchange are not formalized |
| Prop. 3.1, (3.1) | `‖(M±Q_b)⁻¹‖ ≤ 1/M`, `‖(D_b*D_b+M²)⁻¹‖ ≤ 1/M²` | bounded reading certified, existence not | New: `resolvent_shift_norm_lower`, `square_shift_norm_lower` prove the a priori inequalities for bounded skew-adjoint operators; `resolvent_norm_bound`, `square_resolvent_norm_bound` give the inverse bounds **conditional on a right inverse**. Existence (spectral theorem) and the unbounded domain statement are not formalized |
| Prop. 3.2, (3.2)–(3.3) | holomorphic family, `10.56`, `337.92` bounds | constants certified, analysis not | `ResolventVariationConstants` (`gcp-resolvent-variation-constants-20261031`) proves `q<0.134`, `C<1.32`, the two Cauchy constants; the Neumann series, the Banach-valued Cauchy estimates and the Taylor-tail comparison are *not* formalized |
| Prop. 3.2, (3.4) | square resolvent factorization | not formalized | requires the spectral calculus used in Prop. 3.1 |
| §4, (4.1)–(4.2) | `F`, `R3`, `B_t` definitions | not formalized | definitions only; `R3` currently appears only as a polynomial truncation in `FullWeylAngularJet` |
| Prop. 4.1, (4.3) | `lim t^{-5/2} B_t = -15c_uc_w/(1024√π)` | not formalized | distributional fourth derivative, Riemann–Lebesgue, dominated convergence and an explicit improper integral; the integral value itself is not formalized |
| Prop. 4.2, (4.4)–(4.5) | cubic-log asymptotic | not formalized | Fourier tail `o(|k|^{-9})`, split-frequency argument, `log t` extraction |
| (4.6) | compact-model transfer | not formalized | compact flat-model heat kernel and winding sums |
| Prop. 4.3, (4.8) | integrability consequence of the cubic bound | **certified** (integral included) | `flat_pointwise_reduction` and `flat_finite_time_sum_bound` in `ManuscriptFormal.lean`; and in [`gcp-manuscript-integral-20261101`](../evidence/gcp-manuscript-integral-20261101/README.md) the genuine integral: `flat_time_integral_bound` (`∫_0^{t0} |r|dt/t² ≤ C t0` under the cubic bound plus interval-integrability) and `flat_time_integral_bound_of_bounded`, which discharges integrability from measurability and the pointwise bound. The earlier environment gap is closed by running against the Space Mathlib build, which contains `Mathlib.MeasureTheory.Integral.IntervalIntegral` |
| Prop. 4.3, (4.7) and the Parseval step | all-frequency bound | not formalized | requires `0 ≤ R2 ≤ min(x³/840, x²/120)`, the Fourier transform and Parseval with the half/full-line norm relation |
| (4.9)–(4.10) | conversion identity | source identity, not formalized | operator trace identity under domain hypotheses |
| (4.9a) | tower asymptotics | polynomial part certified | New: `tower_derivative_coefficient` checks that differentiating the displayed polynomial part with `a=t/b²` reproduces the `b⁻²[2/a²-q²/6+1/30]` coefficient of `-Θ'`; the Euler–Maclaurin derivation and the `O_q(a²)` remainder are not formalized |
| (4.10a)–(4.10b) | combined multiplier, `J_2` limit | coefficient algebra certified only | New: `flat_conversion_cubic_coefficient` checks `2·(b²/π)·(-1/1680+1/840) = b²/(840π)`. The angular limits and pairing factor are inputs |
| (4.10c) | cubic/cubic-log seam coefficients | cutoff coefficient certified only | New: `flat_conversion_cutoff_coefficient`; the `t^{3/2}` and `t²log t` terms are not derived |
| §4 grading bridge | `H=JG` anticommutes with `Q`, odd trace cancels | finite-matrix level certified | `GradingOddTrace` (`gcp-grading-clean-20261030`); the infinite-dimensional trace-class and Duhamel passage is not formalized |
| §4 zero sector, (4.11) | gap `κ exp(-r‖b‖_∞)` | composition bound certified, constant differs | New: `congruenced_gap_composition` gives `κc²`. With `c=exp(-r‖b‖_∞)` this is `κ exp(-2r‖b‖_∞)`, **not** the printed `κ exp(-r‖b‖_∞)`. See §3 below |
| (4.12a)–(4.12b) | full-Weyl and conversion series | inputs, not derived | the two series come from cited notes; only their subtraction is certified |
| (4.12c) | difference of the two series | **certified** | New: `converted_series_difference`, exact as printed for nonzero `π,t,b` |
| §5, (5.1) | mixed Duhamel formula | not formalized | finite-Galerkin heat derivative |
| (5.2) | four-term trace expansion | not formalized | product rule for parameter-dependent traces |
| (5.3) | reference-position commutator identity | **certified at finite-matrix level** | New: `matrix_reference_position_identity`, with commuting heat factors and `Kt=Ka·Kc` |
| (5.4) | boundary joint-path bound | not formalized | trace-class heat estimates |
| (5.5) | scalar/contact jet identity | not formalized — not currently jet algebra | `K_2` is defined in `notes/full-weyl-curved-scalar-interior-leading-coefficient.md` as the **path expectation** `K_2(y)=(1/2)E[D²H_0(0)[xi,xi]]`, not as a displayed jet expression. `(5.5)` relates that expectation to the explicit `H_1` of formula (3) through a Brownian computation, so certifying it needs formal probability and path-jet estimates, not `ring` on displayed derivatives. The deterministic part (`H_1` of (3)) is a candidate once `Q, Z_u, Z_w` are fixed from the note |
| (5.6) | odd-odd interior coefficient | not formalized | heat-kernel coefficient identity |
| §5 necessary condition | `C_other = -(b_S²/6π)∫(h'u'w'+u''w'')dμ` | not formalized | depends on (5.6) |
| §4 fixed-time assembly | form-Duhamel identity | not formalized | form-trace convergence |

Summary: 37 declarations machine-checked across six receipts (10, 10, 10, 1,
4 and 2 respectively). Of these: 2 algebraic coefficient identities, 1
finite-matrix trace identity, 5 bounded-operator inequalities, 1 inner-product
lemma, 1 gap-composition lemma, the 10 `(2.3)` transport/eigenvector facts, the
`(4.9a)` coefficient check, the Proposition 2.1 multiplier identity with both
graph inequalities, the `(2.4)` Pauli relations and block form, the discrete
`(2.5)` telescoping identity with its matrix-valued and composition forms, the
pointwise and finite-mesh content of `(4.8)`, and now the integral form of
`(4.8)` itself.
1 statement is certified with a constant discrepancy that needs a manuscript
correction. The remaining analytic and physical statements are unformalized.

The requested `(5.5)` "jet algebra" reading turned out not to be available:
the note defines `K_2` as `(1/2)E[D²H_0(0)[ξ,ξ]]`, an expectation over the
bridge path, so the identity is a probabilistic statement, not an identity
among displayed derivatives. It is recorded above with that reason rather
than as a formalization that could be completed by more algebra.

## 2. What full certification would require

Each of these is a substantial formalization project, not a missing lemma:

1. **Unbounded operators on domains.** Mathlib's `LinearPMap` supports
   partially defined maps, and the repository already uses it for the
   congruence algebra, but there is no development of closed realizations of
   Dirac-type operators, Sobolev trace spaces on manifolds with boundary, or
   ellipticity/Bär–Ballmann elliptic-domain theory.
2. **Spectral theorem for unbounded self-adjoint operators**, needed for the
   existence half of Proposition 3.1 and for the semigroup `exp(-tL)` used
   throughout Section 5.
3. **Heat-kernel asymptotics on manifolds with boundary**, including the
   mixed Dirichlet/Robin coefficient formulas and the log terms. This is
   research-level mathematics that is not in Mathlib in any form.
4. **Fourier analysis of distributions on ℝ with explicit improper
   integrals**, for Propositions 4.1–4.3. Mathlib has the Fourier transform;
   it does not have the limit theorems, the distributional derivative
   calculus, or the specific integrals in the required form.
5. **Uniform estimates over a rough (`C^{2,1}`) family with a moving cut and a
   common regulator.** No existing formalization infrastructure addresses
   this; it is the paper's open mathematical problem, not a formalization
   gap.

Consequently the objective "Lean certify the manuscript" cannot be met with
this repository's current scope. What *can* be met, and now is, is a
machine-checked algebraic skeleton plus an explicit, auditable statement of
the gap.

## 3. Discrepancy found by formalization

`(4.11)` prints `‖A_r ψ‖ ≥ κ exp(-r‖b‖_∞)‖ψ‖` for `A_r = E_r Q E_r` with
`E_r = exp(-r b/2)`. The displayed argument uses the multiplier lower bound
at both factors of `E_r`:

```text
‖E_r Q E_r ψ‖ ≥ e^{-rB} ‖Q E_r ψ‖ ≥ e^{-rB} κ ‖E_r ψ‖ ≥ e^{-2rB} κ ‖ψ‖.
```

The formal `congruenced_gap_composition` proves exactly `κ c²`. Since the
manuscript's constant is not justified by its printed argument, the ledger
records this as an open manuscript check: either the constant is corrected to
`e^{-2rB}`, or a sharper argument (using positivity/self-adjointness of `E_r`
rather than only its norm bound) is supplied. No Lean statement asserts the
`e^{-rB}` version.

## 4. Reproduce

```powershell
powershell -ExecutionPolicy Bypass -File scripts/audit-lean-receipts.ps1
```

All Lean runs remain GCP-only. The new source is
`lean/ManuscriptFormal.lean`; its executed runner is
`lean/cloud-manuscript-formal-20261101.sh`; the receipt is
`evidence/gcp-manuscript-formal-20261101/`.

Remaining to-do list: formalize or explicitly exclude each unformalized
statement; resolve the `(4.11)` constant; and record the resulting scope in
the manuscript itself.
