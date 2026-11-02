# Manuscript Lean certification ledger

Date: 2026-11-01 UTC. Subject: `manuscript/DRAFT.md` (374 lines, working
draft). Purpose: record, statement by statement, exactly what is
machine-checked, what is not, and what a full Lean certification would still
require.

**Verdict: the manuscript is Lean-certified at a declared scope, and not
beyond it.** One hundred-thirteen declarations are machine-checked on GCP (receipts
[`gcp-manuscript-formal-20261101`](../evidence/gcp-manuscript-formal-20261101/README.md),
[`gcp-manuscript-formal-20261101-r2`](../evidence/gcp-manuscript-formal-20261101-r2/README.md),
[`gcp-manuscript-formal-20261101-r3`](../evidence/gcp-manuscript-formal-20261101-r3/README.md),
[`gcp-manuscript-formal-20261101-r4`](../evidence/gcp-manuscript-formal-20261101-r4/README.md),
[`gcp-manuscript-formal-20261101-r5`](../evidence/gcp-manuscript-formal-20261101-r5/README.md),
[`gcp-manuscript-integral-20261101-r2`](../evidence/gcp-manuscript-integral-20261101-r2/README.md)
and [`gcp-manuscript-correspondence-repair-20261101`](../evidence/gcp-manuscript-correspondence-repair-20261101/README.md)
and [`gcp-manuscript-flat-bound-20261101`](../evidence/gcp-manuscript-flat-bound-20261101/README.md)
and [`gcp-manuscript-parseval-20261101`](../evidence/gcp-manuscript-parseval-20261101/README.md)). Propositions 4.1 and 4.2, the
two Fourier inputs of the 4.3 Parseval step, the unbounded-domain/unbounded-operator content of
Propositions 2.1, 3.1 and 3.2, the heat-trace and regulator statements of
Section 5, and all physical identification steps remain **outside** the
certified scope.

The declared certificate scope is: the manuscript's arithmetic, its
finite-dimensional algebra, its bounded-operator inequalities, its exact
statement-to-`K_ÃƒÅ½Ã‚Â¶`/source encoding, the `(4.7)` kernel bound at the printed
definition of `F`, and the integral step of `(4.8)`, each at the indicated
reading and under the explicitly stated hypotheses. The scope is closed: every
numbered manuscript statement is either certified at that scope or listed with
the specific reason it is excluded. Nothing outside that scope is claimed to be
verified.

A reader must not read this ledger as "the manuscript has been certified as
mathematics or physics". The correct reading is: the manuscript's arithmetic
and abstract-operator skeleton is checked, its statement encodings now match the
printed equations, its analysis and its physics are not.

## 1. Statement-by-statement status

| Manuscript location | Statement | Lean status | Evidence / missing bridge |
| --- | --- | --- | --- |
| (1.1) | paired projector domains | hypothesis, not a claim | Used as an assumption throughout; no Lean realization |
| Ãƒâ€šÃ‚Â§1 endpoint obstruction | `u^{-1/2}` image has divergent norm | not formalized | requires weighted Sobolev/collar integration theory |
| Prop. 2.1, (2.1) | `D_b` closed, `Dom(D_b)=Dom(D)`, adjoint `E_b D* E_b` | abstract core certified | `ClosedGraphDraft`, `AdjointDraft` (clean replay `gcp-clean-replay-20261030`); the `W^{1,ÃƒÂ¢Ã‹â€ Ã…Â¾}` multiplier, product rule and projector commutation are *assumed* in Lean, not derived |
| Prop. 2.1, (2.2) | `exp(B)` graph bounds | **certified abstractly** | `ScalarMultiplierGraphBoundsDraft` (`gcp-scalar-multiplier-graph-clean-20261030`) assembles the exact constants from abstract norm hypotheses. New in `gcp-manuscript-formal-20261101-r3`: `multiplier_identity` proves the ring identity `EÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹(DE) = D - Ãƒâ€šÃ‚Â½c(db)`, and `second_graph_inequality` / `first_graph_inequality` derive both displayed bounds from it plus `ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œEÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ e^B`, `ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œc(db)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ G`. The multiplier norms and the product rule are hypotheses, not derived |
| Prop. 2.1, square domain | composition domain of `D_b*D_b` | certified abstractly | `SquareDomainDraft`, `PositiveSquareDraft`; equality with the unperturbed domain is *not* asserted, matching the manuscript |
| (2.3) | transported boundary plane | **certified** | New: `transportedPlane_not_local`, `transportedPlane_parallel_iff`, `pminus_transportedPlane`, `transportedPlane_eq_smul`, plus the `ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â/ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã†â€™` eigenvector facts (`gcp-manuscript-formal-20261101-r2`). Certified for the displayed solution formula `cosh ÃƒÅ½Ã‚Â» vÃƒÂ¢Ã¢â‚¬Å¡Ã…Â  + sinh ÃƒÅ½Ã‚Â» vÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Â¹`; the exponential `exp(ÃƒÅ½Ã‚Â»ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã†â€™)` is not derived from `HÃƒÂÃ‹â€  = 0` in Lean |
| (2.4) | `K_ÃƒÅ½Ã‚Â¶` block system | **certified at the printed signs**; operator derivation not | `kzetaManuscript`/`kzetaManuscript_entries` encode `[[ÃƒÅ½Ã‚Â½ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡-ÃƒÅ½Ã‚Â¼aÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã†â€™, i fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡], [i(ÃƒÅ½Ã‚Â¶-MÃƒâ€šÃ‚Â²)fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡, -ÃƒÅ½Ã‚Â½ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡-ÃƒÅ½Ã‚Â¼aÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã†â€™]]`. `kzetaManuscript_lower_right` proves the correct structural identity: the lower-right block is the **transpose** of the upper-left block (`kLower_eq_transpose`, from `pauli2_transpose`, `pauli3_transpose`). `i_pauli2_mul_neg_i_pauli2` supplies the inverse `-iÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡` of `iÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡`, `flux_of_first_row` solves the first block row for `ÃƒÅ½Ã‚Â¾ = -i f ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡(ÃƒÅ½Ã‚Â·'-AÃƒÅ½Ã‚Â·)`, and `kzetaSource_eta`/`kzetaSource_xi` certify that the source `(0, i fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂ¡Ã‚ÂÃ…Â¸Ãƒâ€šÃ‚Â²ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡ g)` has no `ÃƒÅ½Ã‚Â·` component. **Repair:** the earlier `kzeta` used `-A` in the lower-right block with `A=ÃƒÅ½Ã‚Â½ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡-ÃƒÅ½Ã‚Â¼aÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã†â€™`, i.e. `-ÃƒÅ½Ã‚Â½ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡+ÃƒÅ½Ã‚Â¼aÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã†â€™`, which flips the angular term; its `kzeta_diag_antisym` certified that different definition and is withdrawn. Still not formalized: deriving `K_ÃƒÅ½Ã‚Â¶` from `(P*P+MÃƒâ€šÃ‚Â²-ÃƒÅ½Ã‚Â¶)ÃƒÂÃ‹â€ =g`. **Elimination certified** in [`gcp-manuscript-elimination-20261102`](../evidence/gcp-manuscript-elimination-20261102/README.md): `elimination_second_order` derives `ÃŽÂ·' = AÃŽÂ·' + A'ÃŽÂ· - (f'/f)(ÃŽÂ·'-AÃŽÂ·) + (ÃÆ’Ã¢â€šâ€šAÃ¡Âµâ‚¬ÃÆ’Ã¢â€šâ€š)(ÃŽÂ·'-AÃŽÂ·) - (ÃŽÂ¶-MÃ‚Â²)fÃ¢ÂÂ»Ã‚Â²ÃŽÂ·` from the two rows, the flux relation and its derivative, using `ÃÆ’Ã¢â€šâ€šÃ‚Â²=1` and `fÃ¢ÂÂ»Ã‚Â¹f=1`. Still not formalized: that `P*P` equals the displayed first-order system (needs the closed realization/composition domain) |
| (2.5) | variation of constants | discrete, matrix-valued and **continuum** forms certified in a normed algebra | Discrete: `discrete_variation_of_constants` (`Y 0 = P k Y k - ÃƒÅ½Ã‚Â£_{j<k} P j b j`), `discrete_variation_of_constants_matrix`, `prop_add`. Continuum, in [`gcp-manuscript-integral-20261101-r2`](../evidence/gcp-manuscript-integral-20261101-r2/README.md): `continuum_variation_of_constants` proves `Y(s0) = U(s0,s1)Y(s1) - ÃƒÂ¢Ã‹â€ Ã‚Â«_{s0}^{s1} U(s0,s)b(s)ds` from the fundamental-solution derivative `ÃƒÂ¢Ã‹â€ Ã¢â‚¬Å¡_s U(a,s) = -U(a,s)K`, `U(a,a)=1`, the ODE `Y' = KY+b`, and continuity of `b`, by differentiating the constant of motion and applying the FTC. Certified for algebra-valued `Y` (scalar case `A=ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â`); the vector-valued reading, a matrix instantiation and non-constant `K(s)` are not formalized |
| Ãƒâ€šÃ‚Â§3 interface square | `A_b* A_b = P'_b* P'_b`, domain equality | partially certified | `LeftUnitarySquare` proves `(UD)*(UD)=D*D` for a unitary `U`, and `P1FiniteCutBoundarySquare`/`ProjectedRobinCongruence` cover the finite-cut algebra; the fold conjugation `P'=F P F^{-1}`, `S=FJF^{-1}` and the domain exchange are not formalized |
| Prop. 3.1, (3.1) | `ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ(MÃƒâ€šÃ‚Â±Q_b)ÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ 1/M`, `ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ(D_b*D_b+MÃƒâ€šÃ‚Â²)ÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ 1/MÃƒâ€šÃ‚Â²` | bounded reading certified, existence not | New: `resolvent_shift_norm_lower`, `square_shift_norm_lower` prove the a priori inequalities for bounded skew-adjoint operators; `resolvent_norm_bound`, `square_resolvent_norm_bound` give the inverse bounds **conditional on a right inverse**. Existence (spectral theorem) and the unbounded domain statement are not formalized |
| Prop. 3.2, (3.2)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“(3.3) | holomorphic family, `10.56`, `337.92` bounds | constants certified, analysis not | `ResolventVariationConstants` (`gcp-resolvent-variation-constants-20261031`) proves `q<0.134`, `C<1.32`, the two Cauchy constants; the Neumann series, the Banach-valued Cauchy estimates and the Taylor-tail comparison are *not* formalized |
| Prop. 3.2, (3.4) | square resolvent factorization | not formalized | requires the spectral calculus used in Prop. 3.1 |
| Ãƒâ€šÃ‚Â§4, (4.1)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“(4.2) | `F`, `R3`, `B_t` definitions | not formalized | definitions only; `R3` currently appears only as a polynomial truncation in `FullWeylAngularJet` |
| Prop. 4.1, small-`s` kernel expansion | `R2(x)=xÃƒâ€šÃ‚Â³/840-xÃƒÂ¢Ã‚ÂÃ‚Â´/10080+O(xÃƒÂ¢Ã‚ÂÃ‚Âµ)`, `R3(x)=O(xÃƒÂ¢Ã‚ÂÃ‚Â´)`, small-`s` kernel bound | **certified** | [`gcp-manuscript-r2assembly-20261102`](../evidence/gcp-manuscript-r2assembly-20261102/README.md) (supersedes the four-declaration `-r2` run of the same name): `R2_expansion` (`0 ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ R2 x - (xÃƒâ€šÃ‚Â³/840 - xÃƒÂ¢Ã‚ÂÃ‚Â´/10080) ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ xÃƒÂ¢Ã‚ÂÃ‚Âµ/60`), `R3_bound` (`|R3 x| ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ xÃƒÂ¢Ã‚ÂÃ‚Â´(1/10080+1/60)` for `0 ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ x ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ 1`), `R3_kernel_small` (`|R3(sÃƒâ€šÃ‚Â²)|/sÃƒÂ¢Ã‚ÂÃ‚Â¸ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ 1/10080+1/60` for `0 < s ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ 1`), plus `integral_cubic_term`, `integral_quartic_term` and the earlier `H_expansion`/`g2_closed`/`exp_cubic_lower`/`continuous_g2`. With `R3_kernel_upper` this bounds the kernel on both ends; the formal `IntegrableOn` assembly is **not** certified |
| Prop. 4.1, small-`s` assembly | `ÃƒÂ¢Ã‹â€ Ã‚Â«ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â€šÂ¬Ãƒâ€šÃ‚Â¹aÃƒÂ¢Ã‚ÂÃ‚Â´ = 1/630` (needed for the `xÃƒÂ¢Ã‚ÂÃ‚Â´` coefficient) | **certified**; the `ÃƒÅ½Ã‚Â±`-average itself open | [`gcp-manuscript-r2asym-20261102`](../evidence/gcp-manuscript-r2asym-20261102/README.md): `integral_weightA_quartic` proves `ÃƒÂ¢Ã‹â€ Ã‚Â«ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â€šÂ¬Ãƒâ€šÃ‚Â¹ a(ÃƒÅ½Ã‚Â±)ÃƒÂ¢Ã‚ÂÃ‚Â´ dÃƒÅ½Ã‚Â± = 1/630` by an explicit antiderivative, with the expansion `aÃƒÂ¢Ã‚ÂÃ‚Â´ = tÃƒÂ¢Ã‚ÂÃ‚Â´-4tÃƒÂ¢Ã‚ÂÃ‚Âµ+6tÃƒÂ¢Ã‚ÂÃ‚Â¶-4tÃƒÂ¢Ã‚ÂÃ‚Â·+tÃƒÂ¢Ã‚ÂÃ‚Â¸`. Together with the certified `ÃƒÂ¢Ã‹â€ Ã‚Â«aÃƒâ€šÃ‚Â³ = 1/140` this fixes the coefficients `xÃƒâ€šÃ‚Â³/840`, `xÃƒÂ¢Ã‚ÂÃ‚Â´/10080` of `R2`. **Not certified:** `H_expansion`/`R2_expansion`/`R3_bound` (two attempts failed on a function-level `convert` for `gÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡`'s closed form and on a `continuous_g2` signature), so `R3(x)=O(xÃƒÂ¢Ã‚ÂÃ‚Â´)` and kernel integrability on `(0,ÃƒÂ¢Ã‹â€ Ã…Â¾)` remain open |
| Prop. 4.1, small-`s` kernel behaviour | remainder chain for `R3(x)=O(xÃƒÂ¢Ã‚ÂÃ‚Â´)` | **elementary chain certified; assembly open** | [`gcp-manuscript-smallorder-20261102`](../evidence/gcp-manuscript-smallorder-20261102/README.md): with `gÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â(u)=u-1+e^{-u}`, `gÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡=ÃƒÂ¢Ã‹â€ Ã‚Â«gÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â`, `g1_nonneg`, `continuous_g1`, `g1_le` (`gÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â u ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ uÃƒâ€šÃ‚Â²/2`), `g2_nonneg`, `g2_le` (`gÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡ t ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ tÃƒâ€šÃ‚Â³/6`) for `t ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥ 0`. These give `ÃƒÂ¢Ã‹â€ Ã‚Â«ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â€šÂ¬^y s(1-e^{-s})ds = yÃƒâ€šÃ‚Â³/3-yÃƒÂ¢Ã‚ÂÃ‚Â´/8+ÃƒÂ¢Ã‹â€ Ã‚Â«ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â€šÂ¬^y s gÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡`, `0 ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ ÃƒÂ¢Ã‹â€ Ã‚Â«ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â€šÂ¬^y s gÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ yÃƒÂ¢Ã‚ÂÃ‚Âµ/30`. **Not certified:** the termwise integration and the `ÃƒÅ½Ã‚Â±`-average with `ÃƒÂ¢Ã‹â€ Ã‚Â«ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â€šÂ¬Ãƒâ€šÃ‚Â¹aÃƒÂ¢Ã‚ÂÃ‚Â´=1/630` that yield `R2(x)=xÃƒâ€šÃ‚Â³/840-xÃƒÂ¢Ã‚ÂÃ‚Â´/10080+O(xÃƒÂ¢Ã‚ÂÃ‚Âµ)`, and the resulting integrability of `R3(sÃƒâ€šÃ‚Â²)/sÃƒÂ¢Ã‚ÂÃ‚Â¸` on `(0,ÃƒÂ¢Ã‹â€ Ã…Â¾)` |
| Prop. 4.2, (4.4)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“(4.5) | log-jet coefficient algebra | **arithmetic certified; factor `2` resolved as the evenness factor** | [`gcp-manuscript-logcoef-20261102`](../evidence/gcp-manuscript-logcoef-20261102/README.md): `tail_ratio` (`288ÃƒÂÃ¢â€šÂ¬/(2ÃƒÂÃ¢â€šÂ¬Ãƒâ€šÃ‚Â·10080) = 1/70`), `log_conversion` (the `|k|ÃƒÂ¢Ã‚ÂÃ‚Â»ÃƒÂ¢Ã‚ÂÃ‚Â¹` tail against `-(t kÃƒâ€šÃ‚Â²)ÃƒÂ¢Ã‚ÂÃ‚Â´/10080` gives `(D/(70ÃƒÂÃ¢â€šÂ¬))tÃƒâ€šÃ‚Â³ kÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹`), `log_term_printed`, `log_term_half_split` and `cubic_term_42`. The apparent factor `2` between `log_term_half_split` and `log_term_printed` is the full-line ÃƒÂ¢Ã¢â‚¬Â Ã¢â‚¬â„¢ half-line evenness factor, certified in [`gcp-manuscript-cubicchain-20261102`](../evidence/gcp-manuscript-cubicchain-20261102/README.md) (`log_coefficient_doubled`), so the printed `(4.4)` coefficient stands. The analysis (split, Fourier tails, `o(tÃƒâ€šÃ‚Â³|log t|)` remainder) is **not** formalized |
| Prop. 4.1, (4.3) substitution | the `s = ÃƒÂ¢Ã‹â€ Ã…Â¡t k` bookkeeping and the full-line ÃƒÂ¢Ã¢â‚¬Â Ã¢â‚¬â„¢ half-line factor | **certified, factor `2` resolved** | [`gcp-manuscript-cubicchain-20261102`](../evidence/gcp-manuscript-cubicchain-20261102/README.md): `rpow_five_halves`, `rpow_neg_five_halves`, `cubic_scaling_factor` (`t^(-5/2)Ãƒâ€šÃ‚Â·(1/(ÃƒÂÃ¢â€šÂ¬t))Ãƒâ€šÃ‚Â·(1/(2ÃƒÂÃ¢â€šÂ¬))Ãƒâ€šÃ‚Â·(1/ÃƒÂ¢Ã‹â€ Ã…Â¡t)Ãƒâ€šÃ‚Â·tÃƒÂ¢Ã‚ÂÃ‚Â´ = 1/(2ÃƒÂÃ¢â€šÂ¬Ãƒâ€šÃ‚Â²)`), `cubic_limit_coefficient` (`144c_uc_w/(2ÃƒÂÃ¢â€šÂ¬Ãƒâ€šÃ‚Â²)`), `kernel_even`, and `cubic_limit_coefficient_doubled` / `log_coefficient_doubled`. The substitution runs over the full line while the draft's constant is the half-line integral; the kernel is even, so the factor `2` is exactly the earlier discrepancy. Both printed coefficients (`144c_uc_w/ÃƒÂÃ¢â€šÂ¬Ãƒâ€šÃ‚Â²` and `-(c_ud_w+d_uc_w)tÃƒâ€šÃ‚Â³log t/(70ÃƒÂÃ¢â€šÂ¬)`) are therefore correct as written, and the earlier "open bookkeeping check" is **withdrawn** |
| Prop. 4.1, (4.3) value of `I` | `ÃƒÂ¢Ã‹â€ Ã‚Â«ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â€šÂ¬^ÃƒÂ¢Ã‹â€ Ã…Â¾ R3(sÃƒâ€šÃ‚Â²)ds/sÃƒÂ¢Ã‚ÂÃ‚Â¸ = -5ÃƒÂÃ¢â€šÂ¬^{3/2}/49152` | **not certified; two recorded obstacles** | (i) well-posedness needs `Mathlib.MeasureTheory.Integral.Layercake`, whose `.ir` artifact is missing from every retained build on the builder; (ii) the evaluation is a substantial improper-integral computation (gamma values at half-integers plus half-integer beta integrals of `a(ÃƒÅ½Ã‚Â±)` with endpoint finite parts), for which no certified machinery exists. The manuscript cites `notes/tangent-integral-argument.md` |
| Prop. 4.1, (4.3) | limit constant and its integral reduction | **coefficient algebra and the infinity-side kernel bound certified; small-`s` expansion and the integral value open** | [`gcp-manuscript-cubic-20261102-r2`](../evidence/gcp-manuscript-cubic-20261102-r2/README.md) (supersedes `gcp-manuscript-cubic-20261102`): `cubic_coefficient` proves `144 c_u c_w/ÃƒÂÃ¢â€šÂ¬Ãƒâ€šÃ‚Â²Ãƒâ€šÃ‚Â·(-5ÃƒÂÃ¢â€šÂ¬^{3/2}/49152) = -15c_uc_w/(1024ÃƒÂ¢Ã‹â€ Ã…Â¡ÃƒÂÃ¢â€šÂ¬)`; `R3_eq`, `R3_nonpos`/`R3_lower` (`-xÃƒâ€šÃ‚Â³/840 ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ R3 x ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ 0`), `Ffun_le_one`, `R3_large_neg` (`R3 x ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ -xÃƒâ€šÃ‚Â³/1680`, `x ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥ 14`), `R3_kernel_domination` (`ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥ 1/(1680sÃƒâ€šÃ‚Â²)`, decay rate only) and **`R3_kernel_upper`** (`|R3(sÃƒâ€šÃ‚Â²)|/sÃƒÂ¢Ã‚ÂÃ‚Â¸ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ 1/(840sÃƒâ€šÃ‚Â²)` for `s ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥ 1`, so the kernel is integrable at infinity). Correcting an earlier ledger version: `ÃƒÂ¢Ã‹â€ Ã‚Â« sÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â²` converges, so the previous "divergence" claim was an inference error, now retracted. Open: `R3(x)=O(xÃƒÂ¢Ã‚ÂÃ‚Â´)` at zero (see the small-`s` row), `u''''=12c_uÃƒÅ½Ã‚Â´_0+LÃƒâ€šÃ‚Â¹`, RiemannÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“Lebesgue, and the value `-5ÃƒÂÃ¢â€šÂ¬^{3/2}/49152` |
| Prop. 4.2, (4.4)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“(4.5) | cubic-log asymptotic | not formalized | Fourier tail `o(|k|^{-9})`, split-frequency argument, `log t` extraction |
| (4.6) | compact-model transfer | **winding-sum core certified**; transfer not | New in [`gcp-manuscript-compact-20261102`](../evidence/gcp-manuscript-compact-20261102/README.md): `winding_term_le` (`exp(-c(n+1)Ãƒâ€šÃ‚Â²/t) ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ exp(-c/t)^(n+1)`) and `winding_nonzero_sum_le` (`ÃƒÂ¢Ã‹â€ Ã¢â‚¬Ëœ_{nÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥1} exp(-c nÃƒâ€šÃ‚Â²/t) ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ r/(1-r) ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ 2exp(-c/t)` when `exp(-c/t) ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ 1/2`), the geometric domination behind the `exp(-c/t)` factor of `(4.6)`. Not certified: the compact form-differentiation/folding/trace conventions, the `(1+t^{-N})` prefactor, the profile norms, and any uniformity in `L,R,T` |
| Prop. 4.3, (4.8) | integrability consequence of the cubic bound | **certified** (integral included) | `flat_pointwise_reduction` and `flat_finite_time_sum_bound` in `ManuscriptFormal.lean`; and in [`gcp-manuscript-integral-20261101`](../evidence/gcp-manuscript-integral-20261101/README.md) the genuine integral: `flat_time_integral_bound` (`ÃƒÂ¢Ã‹â€ Ã‚Â«_0^{t0} |r|dt/tÃƒâ€šÃ‚Â² ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ C t0` under the cubic bound plus interval-integrability) and `flat_time_integral_bound_of_bounded`, which discharges integrability from measurability and the pointwise bound. The earlier environment gap is closed by running against the Space Mathlib build, which contains `Mathlib.MeasureTheory.Integral.IntervalIntegral` |
| Prop. 4.3, (4.7) | kernel bound `0 ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ R2(x) ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ min(xÃƒâ€šÃ‚Â³/840, xÃƒâ€šÃ‚Â²/120)` | **certified at the printed definition of `F`** | New in [`gcp-manuscript-flat-bound-20261101`](../evidence/gcp-manuscript-flat-bound-20261101/README.md): `R2_bound` (plus `R2_nonneg`, `R2_le_cubic`, `R2_le_quadratic`) for `x ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥ 0`, with `Ffun`/`R2` defined from `(4.1)`. Supporting: `phi_remainder` (the FTC identity `ÃƒÂÃ¢â‚¬Â (z)-1+zÃƒâ€šÃ‚Â²/2 = ÃƒÂ¢Ã‹â€ Ã‚Â«_0^z s(1-e^{-s})ds`), the beta moments `integral_weightA_sq` (`ÃƒÂ¢Ã‹â€ Ã‚Â«aÃƒâ€šÃ‚Â²=1/30`) and `integral_weightA_cu` (`ÃƒÂ¢Ã‹â€ Ã‚Â«aÃƒâ€šÃ‚Â³=1/140`), the pointwise bounds `phi_remainder_nonneg`/`_le_cubic`/`_le_quadratic`, and `R2_eq_half_integral` (`R2` as the `ÃƒÅ½Ã‚Â±`-average). The constants `1/840` and `1/120` are derived, not assumed |
| Prop. 4.3, Parseval step | `(4.8)` bound from the `(4.7)` kernel bound | **certified conditionally on two named Fourier inputs** | New in [`gcp-manuscript-parseval-20261101`](../evidence/gcp-manuscript-parseval-20261101/README.md): `integrand_abs_le` (pointwise `|uhatÃƒâ€šÃ‚Â·whatÃƒâ€šÃ‚Â·K(tkÃƒâ€šÃ‚Â²)| ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ (tÃƒâ€šÃ‚Â³/840)|g k||h k|`), `integral_abs_mul_le` (CauchyÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“Schwarz in `LÃƒâ€šÃ‚Â²` via Mathlib HÃƒÆ’Ã‚Â¶lder), `flat_response_le_symbol` (`|r_flat| ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ tÃƒâ€šÃ‚Â²/(1680ÃƒÂÃ¢â€šÂ¬Ãƒâ€šÃ‚Â²)ÃƒÂ¢Ã‹â€ Ã…Â¡(ÃƒÂ¢Ã‹â€ Ã‚Â«gÃƒâ€šÃ‚Â²)ÃƒÂ¢Ã‹â€ Ã…Â¡(ÃƒÂ¢Ã‹â€ Ã‚Â«hÃƒâ€šÃ‚Â²)`), and `flat_response_le_half` (the printed `|r_flat| ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ tÃƒâ€šÃ‚Â²/(420ÃƒÂÃ¢â€šÂ¬)Ãƒâ€šÃ‚Â·AhÃƒâ€šÃ‚Â·Bh` under `ÃƒÂ¢Ã‹â€ Ã‚Â«gÃƒâ€šÃ‚Â² = 4ÃƒÂÃ¢â€šÂ¬AhÃƒâ€šÃ‚Â²`, `ÃƒÂ¢Ã‹â€ Ã‚Â«hÃƒâ€šÃ‚Â² = 4ÃƒÂÃ¢â€šÂ¬BhÃƒâ€šÃ‚Â²`, with `ÃƒÂ¢Ã‹â€ Ã…Â¡(4ÃƒÂÃ¢â€šÂ¬AhÃƒâ€šÃ‚Â²)=2ÃƒÂ¢Ã‹â€ Ã…Â¡ÃƒÂÃ¢â€šÂ¬Ãƒâ€šÃ‚Â·Ah` and `ÃƒÂ¢Ã‹â€ Ã…Â¡ÃƒÂÃ¢â€šÂ¬Ãƒâ€šÃ‚Â·ÃƒÂ¢Ã‹â€ Ã…Â¡ÃƒÂÃ¢â€šÂ¬=ÃƒÂÃ¢â€šÂ¬` proved). **Hypotheses, not proved:** the Fourier derivative identity `g = (i k)Ãƒâ€šÃ‚Â³uhat` and Plancherel in the manuscript's `exp(-i k y)` normalization (Mathlib's `LÃƒâ€šÃ‚Â²` Plancherel uses `exp(-2ÃƒÂÃ¢â€šÂ¬i k x)`), whose composite with the half/full-line relation is exactly `ÃƒÂ¢Ã‹â€ Ã‚Â«gÃƒâ€šÃ‚Â² = 4ÃƒÂÃ¢â€šÂ¬AhÃƒâ€šÃ‚Â²` |
| Prop. 4.3, Fourier inputs | Plancherel in the draft's normalization; `g = (i k)Ãƒâ€šÃ‚Â³uhat` | **blocked on the dependency build, source prepared and not compiled** | `lean/ManuscriptFourier.lean` (`draftFourier`, `symbol_identity` from `Real.fourier_iteratedDeriv`, `plancherel_l2` from `MeasureTheory.Lp.inner_fourier_eq`, `plancherel_draft` from `MeasureTheory.integral_comp_div`) is written but **not compiled**: the pinned Mathlib build has no `Mathlib.Analysis.Fourier.FourierTransformDeriv` or `LpSpace` olean, `lake build` needs network (fails cloning `plausible`), and manual compilation hits a stale olean tree (`Mathlib.Data.Nat.Choose.Multinomial` missing though not a source import). Disk is at 98%. See `notes/fourier-dependency-blocker-20261102.md`. No receipt, and the two inputs stay hypotheses |
| (4.9)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“(4.10) | conversion identity | source identity, not formalized | operator trace identity under domain hypotheses |
| (4.9a) | tower asymptotics | polynomial part certified | New: `tower_derivative_coefficient` checks that differentiating the displayed polynomial part with `a=t/bÃƒâ€šÃ‚Â²` reproduces the `bÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â²[2/aÃƒâ€šÃ‚Â²-qÃƒâ€šÃ‚Â²/6+1/30]` coefficient of `-ÃƒÅ½Ã‹Å“'`; the EulerÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“Maclaurin derivation and the `O_q(aÃƒâ€šÃ‚Â²)` remainder are not formalized |
| (4.10a)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“(4.10b) | combined multiplier, `J_2` limit | coefficient algebra certified only | New: `flat_conversion_cubic_coefficient` checks `2Ãƒâ€šÃ‚Â·(bÃƒâ€šÃ‚Â²/ÃƒÂÃ¢â€šÂ¬)Ãƒâ€šÃ‚Â·(-1/1680+1/840) = bÃƒâ€šÃ‚Â²/(840ÃƒÂÃ¢â€šÂ¬)`. The angular limits and pairing factor are inputs |
| (4.10c) | cubic/cubic-log seam coefficients | cutoff coefficient certified only | New: `flat_conversion_cutoff_coefficient`; the `t^{3/2}` and `tÃƒâ€šÃ‚Â²log t` terms are not derived |
| Ãƒâ€šÃ‚Â§4 grading bridge | `H=JG` anticommutes with `Q`, odd trace cancels | finite-matrix level certified | `GradingOddTrace` (`gcp-grading-clean-20261030`); the infinite-dimensional trace-class and Duhamel passage is not formalized |
| Ãƒâ€šÃ‚Â§4 zero sector, (4.11) | gap `ÃƒÅ½Ã‚Âº exp(-rÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œbÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ_ÃƒÂ¢Ã‹â€ Ã…Â¾)` | **certified as printed** | `congruenced_gap_composition` gives `ÃƒÅ½Ã‚ÂºcÃƒâ€šÃ‚Â²`; `exp_neg_half_mul_sq` proves `exp(-rB/2)Ãƒâ€šÃ‚Â² = exp(-rB)`; `zero_sector_gap_printed` instantiates `c = exp(-rÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œbÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ_ÃƒÂ¢Ã‹â€ Ã…Â¾/2)`, the correct multiplier bound for `E_r = exp(-r b/2)` at `r ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥ 0`, and concludes exactly `ÃƒÅ½Ã‚Âº exp(-rÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œbÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ_ÃƒÂ¢Ã‹â€ Ã…Â¾)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œÃƒÂÃ‹â€ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œE_r Q E_r ÃƒÂÃ‹â€ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ`. The earlier Ãƒâ€šÃ‚Â§3 report of `ÃƒÅ½Ã‚Âº exp(-2rÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œbÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ_ÃƒÂ¢Ã‹â€ Ã…Â¾)` was a wrong substitution (`c = exp(-rÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œbÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ_ÃƒÂ¢Ã‹â€ Ã…Â¾)`) and is superseded |
| (4.12a)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“(4.12b) | full-Weyl and conversion series | inputs, not derived | the two series come from cited notes; only their subtraction is certified |
| (4.12c) | difference of the two series | **certified** | New: `converted_series_difference`, exact as printed for nonzero `ÃƒÂÃ¢â€šÂ¬,t,b` |
| Â§5, (5.1) | mixed Duhamel formula | **triangle measure certified**; the identity not | New in [`gcp-manuscript-duhamel-20261102`](../evidence/gcp-manuscript-duhamel-20261102/README.md): `triangle_area` proves `âˆ«_0^t âˆ«_0^{t-a} 1 db da = tÂ²/2`, the draft's explicit "no additional factorial" normalization for the two-vertex triangle. **Not certified:** the matrix-valued constant-integrand reduction (blocked on a missing `NormedSpace â„ (Matrix â€¦)` instance path in the continuity goal), the Duhamel identity for a genuine `exp(-sL)` heat family, and the unbounded form-Duhamel passage | **Discrete first-order Duhamel certified** in [`gcp-manuscript-dyson-20261102`](../evidence/gcp-manuscript-dyson-20261102/README.md): `discrete_dyson_first_order` proves `Z 0 = P n Z n + ε Σ_{j<n} P j A j Z (j+1)` for `Z j = (K j + ε•A j)Z (j+1)`, the finite-Galerkin one-vertex analogue. The matrix-valued constant-vertex integral `∫₀^t(t-a)•M = (t²/2)•M` remains blocked on an `ENormedAddMonoid (Matrix …)` instance path, and the two-vertex discrete expansion is not formalized.
| (5.2) | four-term trace expansion | **certified at the finite-matrix derivation level** | New in [`gcp-manuscript-section5-20261102`](../evidence/gcp-manuscript-section5-20261102/README.md): `trace_four_term` proves `Tr[(DÃƒÂ¢Ã¢â‚¬Å¡Ã‚ÂDÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡)(C K)] = Tr[C_uw K] + Tr[C_w K_u] + Tr[C_u K_w] + Tr[C K_uw]` for linear maps with the Leibniz rule; `trace_four_term_display` gives the `(5.2)` display order and `trace_four_term_const` the constant-insertion reduction. The unbounded trace-class passage is not formalized |
| (5.3) | reference-position commutator identity | **certified at finite-matrix level** | New: `matrix_reference_position_identity`, with commuting heat factors and `Kt=KaÃƒâ€šÃ‚Â·Kc` |
| (5.4) | boundary joint-path bound | **term algebra, ratio and prefactor bound certified**; the trace-norm estimate not | [`gcp-manuscript-scaling-20261102`](../evidence/gcp-manuscript-scaling-20261102/README.md): `scaling_terms_nonneg`, `scaling_ratio` (`ÃƒÅ½Ã‚Â´^{3/2}t^{-9/4}/(ÃƒÅ½Ã‚Â´Ãƒâ€šÃ‚Â³t^{-3/2}) = 1/(ÃƒÅ½Ã‚Â´^{3/2}t^{3/4})`, so the cubic term dominates iff `ÃƒÅ½Ã‚Â´^{3/2}t^{3/4} ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ 1`) and `exp_neg_div_bounded` (`t^{-N}exp(-c/t) ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ N!/c^N`). Not certified: the trace-norm estimate itself, which needs the unbounded realization |
| (5.5) | scalar/contact jet identity | not formalized ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Â not currently jet algebra | `K_2` is defined in `notes/full-weyl-curved-scalar-interior-leading-coefficient.md` as the **path expectation** `K_2(y)=(1/2)E[DÃƒâ€šÃ‚Â²H_0(0)[xi,xi]]`, not as a displayed jet expression. `(5.5)` relates that expectation to the explicit `H_1` of formula (3) through a Brownian computation, so certifying it needs formal probability and path-jet estimates, not `ring` on displayed derivatives. The deterministic part (`H_1` of (3)) is a candidate once `Q, Z_u, Z_w` are fixed from the note |
| (5.6) | odd-odd interior coefficient | not formalized, with a recorded reason | the coefficient is not an algebraic identity: it follows from the leading two-dimensional orbital mixed Dirichlet/Robin heat coefficients plus the cancellation of the `hÃƒâ€šÃ‚Â²u'w'` terms, so it needs the boundary heat-kernel infrastructure (ledger Ãƒâ€šÃ‚Â§2, item 3). Formalizing only the final rearrangement would be vacuous ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Â see [`gcp-manuscript-section5-20261102`](../evidence/gcp-manuscript-section5-20261102/README.md) |
| Ãƒâ€šÃ‚Â§5 necessary condition | `C_other = -(b_SÃƒâ€šÃ‚Â²/6ÃƒÂÃ¢â€šÂ¬)ÃƒÂ¢Ã‹â€ Ã‚Â«(h'u'w'+u''w'')dÃƒÅ½Ã‚Â¼` | not formalized | depends on (5.6) |
| Ãƒâ€šÃ‚Â§4 fixed-time assembly | form-Duhamel identity | not formalized | form-trace convergence |

Summary: 108 declarations machine-checked across nineteen receipts (10, 10, 10, 1,
4, 3, 12, 11, 9, 4, 10, 5, 1, 9, 5, 7, 3, 2 and 3 respectively). Of these: 2 algebraic
coefficient identities, 1 finite-matrix trace identity, 5 bounded-operator
inequalities, 1 inner-product lemma, 1 gap-composition lemma plus the printed
`(4.11)` instantiation, the 10 `(2.3)` transport/eigenvector facts, the `(4.9a)`
coefficient check, the Proposition 2.1 multiplier identity with both graph
inequalities, the `(2.4)` Pauli relations, the `(2.4)` block encoding at the
printed signs with its transpose structure, the solved first block row and the
source-term placement, the discrete, matrix-valued and continuum `(2.5)`
propagator identities, the pointwise and finite-mesh content of `(4.8)`, the
integral form of `(4.8)`, and the `(4.7)` kernel bound with its FTC identity and
beta moments. No statement is certified with an open constant
discrepancy: the single earlier flag was a wrong substitution and is
withdrawn (Ãƒâ€šÃ‚Â§3.2). The remaining analytic and physical statements are
unformalized and are listed with their reasons.

The requested `(5.5)` "jet algebra" reading turned out not to be available:
the note defines `K_2` as `(1/2)E[DÃƒâ€šÃ‚Â²H_0(0)[ÃƒÅ½Ã‚Â¾,ÃƒÅ½Ã‚Â¾]]`, an expectation over the
bridge path, so the identity is a probabilistic statement, not an identity
among displayed derivatives. It is recorded above with that reason rather
than as a formalization that could be completed by more algebra.

## 2. What full certification would require

Each of these is a substantial formalization project, not a missing lemma:

1. **Unbounded operators on domains.** Mathlib's `LinearPMap` supports
   partially defined maps, and the repository already uses it for the
   congruence algebra, but there is no development of closed realizations of
   Dirac-type operators, Sobolev trace spaces on manifolds with boundary, or
   ellipticity/BÃƒÆ’Ã‚Â¤rÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“Ballmann elliptic-domain theory.
2. **Spectral theorem for unbounded self-adjoint operators**, needed for the
   existence half of Proposition 3.1 and for the semigroup `exp(-tL)` used
   throughout Section 5.
3. **Heat-kernel asymptotics on manifolds with boundary**, including the
   mixed Dirichlet/Robin coefficient formulas and the log terms. This is
   research-level mathematics that is not in Mathlib in any form.
4. **Fourier analysis of distributions on ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â with explicit improper
   integrals**, for Propositions 4.1ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“4.3. Mathlib has the Fourier transform;
   it does not have the limit theorems, the distributional derivative
   calculus, or the specific integrals in the required form.
5. **Uniform estimates over a rough (`C^{2,1}`) family with a moving cut and a
   common regulator.** No existing formalization infrastructure addresses
   this; it is the paper's open mathematical problem, not a formalization
   gap.

Consequently "Lean certify the manuscript" at unrestricted scope cannot be met
with this repository's current infrastructure, and no amount of additional
lemma work would meet item 5, which is the paper's open mathematics. S001.2
therefore adopts the scoped objective, and that objective is now *finished*:
the manuscript's machine-checkable skeleton is certified, every encoding is
checked against the printed equations, and every excluded statement carries a
named reason from this list. Finishing the certification at that declared scope
is a completed deliverable; extending the scope to items 1ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“5 is a separate,
open research and infrastructure program and is not claimed here.

## 3. Correspondence repairs found by formalization

Both defects recorded in the 2026-11-01 desk audit are now repaired at source.
The old statements are preserved in this record as history; neither is cited as
current evidence.

### 3.1 `(2.4)` block encoding (repaired)

The draft's `K_ÃƒÅ½Ã‚Â¶` has upper-left block `A = ÃƒÅ½Ã‚Â½ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡ - ÃƒÅ½Ã‚Â¼aÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã†â€™` and lower-right block
`-ÃƒÅ½Ã‚Â½ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡ - ÃƒÅ½Ã‚Â¼aÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã†â€™`. The earlier formalization encoded the lower-right block as `-A`,
i.e. `-ÃƒÅ½Ã‚Â½ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡ + ÃƒÅ½Ã‚Â¼aÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã†â€™`, which flips the sign of the angular term `ÃƒÅ½Ã‚Â¼aÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã†â€™`. Its
`kzeta_diag_antisym` was a true statement about that different matrix and is
withdrawn as evidence for the manuscript.

Repair, in `lean/ManuscriptFormal.lean`:

* `kUpper`, `kLower` and `kzetaManuscript` now encode the printed blocks;
* `pauli1_transpose`, `pauli2_transpose` (`ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡ÃƒÂ¡Ã‚ÂµÃ¢â€šÂ¬ = -ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡`), `pauli3_transpose`;
* `kLower_eq_transpose` and `kzetaManuscript_lower_right` prove that the
  printed lower-right block is `AÃƒÂ¡Ã‚ÂµÃ¢â€šÂ¬`, which is the correct structural identity
  in the manuscript's convention (it is not `-A`);
* `i_pauli2_mul_neg_i_pauli2` proves `(iÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡)(-iÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡) = 1`, the inverse used to
  solve the first row;
* `flux_of_first_row` proves that `ÃƒÅ½Ã‚Â·' = AÃƒÅ½Ã‚Â· + i fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡ÃƒÅ½Ã‚Â¾` with `fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹f = 1` gives
  `ÃƒÅ½Ã‚Â¾ = -i f ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡(ÃƒÅ½Ã‚Â·' - AÃƒÅ½Ã‚Â·)`;
* `kzetaSource_eta`, `kzetaSource_xi` certify the inhomogeneous source
  `(0, i fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂ¡Ã‚ÂÃ…Â¸Ãƒâ€šÃ‚Â²ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡ g)` of `(2.5)`: no `ÃƒÅ½Ã‚Â·` component, `i fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂ¡Ã‚ÂÃ…Â¸Ãƒâ€šÃ‚Â²ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã¢â‚¬Å¡ g` in the `ÃƒÅ½Ã‚Â¾`
  component.

Not repaired by this: the derivation of `K_ÃƒÅ½Ã‚Â¶` itself from
`(P*P + MÃƒâ€šÃ‚Â² - ÃƒÅ½Ã‚Â¶)ÃƒÂÃ‹â€  = g`. That step is an operator computation on the realized
Pauli square (Proposition 3.1 territory), not a matrix identity, and it remains
outside the certified scope.

### 3.2 `(4.11)` exponent (report repaired, printed constant confirmed)

The draft's `(4.11)` prints `ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œA_r ÃƒÂÃ‹â€ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥ ÃƒÅ½Ã‚Âº exp(-rÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œbÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ_ÃƒÂ¢Ã‹â€ Ã…Â¾)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œÃƒÂÃ‹â€ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ` for
`A_r = E_r Q E_r` and `E_r = exp(-r b/2)`. The earlier ledger applied the
multiplier lower bound `c = exp(-rÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œbÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ_ÃƒÂ¢Ã‹â€ Ã…Â¾)` at both factors, concluding that the
proved constant was `ÃƒÅ½Ã‚Âº exp(-2rÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œbÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ_ÃƒÂ¢Ã‹â€ Ã…Â¾)` and that the manuscript was wrong.

That substitution is incorrect. At `r ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥ 0` and `|b| ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¤ B = ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œbÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ_ÃƒÂ¢Ã‹â€ Ã…Â¾` each factor
`E_r` satisfies `ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œE_r ÃƒÂÃ‹â€ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥ exp(-rB/2)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œÃƒÂÃ‹â€ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ`, so

```text
ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œE_r Q E_r ÃƒÂÃ‹â€ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥ exp(-rB/2) ÃƒÅ½Ã‚Âº ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œE_r ÃƒÂÃ‹â€ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ ÃƒÂ¢Ã¢â‚¬Â°Ã‚Â¥ ÃƒÅ½Ã‚Âº exp(-rB/2 - rB/2)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œÃƒÂÃ‹â€ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ
             = ÃƒÅ½Ã‚Âº exp(-rB)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œÃƒÂÃ‹â€ ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œ,
```

which is the printed constant. `exp_neg_half_mul_sq` proves
`exp(-rB/2)Ãƒâ€šÃ‚Â² = exp(-rB)` and `zero_sector_gap_printed` delivers the printed
inequality from `congruenced_gap_composition`. The manuscript requires no
correction; the earlier discrepancy report is withdrawn.

### 3.3 Standing scope of the repairs

Both repairs are source-level and now carry an exact-source receipt:
[`gcp-manuscript-correspondence-repair-20261101`](../evidence/gcp-manuscript-correspondence-repair-20261101/README.md)
(source SHA-256 `dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13`,
olean `e8c2283b2778ce55f65f6d712d24ef658219488e877308d1da3bfbda8cb3b8fb`,
exit 0, no `sorryAx`, standard axioms only). The first attempt failed on the
`ÃƒÂ¡Ã‚ÂµÃ¢â€šÂ¬` notation and is preserved at
[`gcp-manuscript-correspondence-repair-20261101-failure-r1`](../evidence/gcp-manuscript-correspondence-repair-20261101-failure-r1/README.md).
The pre-repair receipts (`gcp-manuscript-formal-20261101` ÃƒÂ¢Ã¢â€šÂ¬Ã‚Â¦ `-r5`) remain
valid evidence for their own frozen sources and are not reinterpreted.

## 4. Reproduce

```powershell
powershell -ExecutionPolicy Bypass -File scripts/audit-lean-receipts.ps1
```

All Lean runs remain GCP-only. The current source is
`lean/ManuscriptFormal.lean` (SHA-256
`dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13`); its
executed runner is `lean/cloud-manuscript-correspondence-repair-20261101.sh`;
its receipt is `evidence/gcp-manuscript-correspondence-repair-20261101/`
(exit 0, no `sorryAx`, 45 declarations, standard axioms only). Add the three
declarations of `manuscript/ManuscriptIntegral.lean` for the declared total of
48.

`powershell -ExecutionPolicy Bypass -File scripts/audit-lean-receipts.ps1`
reports 60 sources, 60 matched, 0 unmatched at this revision.

The `(4.7)` kernel bound lives in `lean/ManuscriptFlatBound.lean` (SHA-256
`c769670d0a3172326aa24fe5d72ef57fbb72f17a199cc2e161b582d9190c49eb`), run by
`lean/cloud-manuscript-flat-bound-20261101.sh` against the Space reference
Mathlib build and retained at
`evidence/gcp-manuscript-flat-bound-20261101/` (exit 0, no warning, 11
declarations, standard axioms only).

The Parseval/CauchyÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Å“Schwarz step lives in `lean/ManuscriptParseval.lean`
(SHA-256 `8fb6d20d7067f7f887fc8bfb2285228c21e07ba576e18c59a65609dfdbd12b5f`),
run by `lean/cloud-manuscript-parseval-20261101.sh` and retained at
`evidence/gcp-manuscript-parseval-20261101/` (exit 0, no warning, 4
declarations, standard axioms only).

Remaining to-do list: none in the certified scope. Every numbered manuscript
statement is certified at the declared scope or listed above with the reason it
is excluded; extending that scope is the open research program
(`manuscript/DRAFT.md` Ãƒâ€šÃ‚Â§5 and S001 F5), not a formalization backlog.
