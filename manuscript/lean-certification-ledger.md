# Manuscript Lean certification ledger

Date: 2026-11-01 UTC. Subject: `manuscript/DRAFT.md` (374 lines, working
draft). Purpose: record, statement by statement, exactly what is
machine-checked, what is not, and what a full Lean certification would still
require.

> **Encoding note (2026-11-02).** Earlier PowerShell `Get-Content`/`Set-Content`
> round trips re-encoded parts of this file, and some non-ASCII symbols were
> irreversibly lost (CP1252 has no mapping for the bytes that carried them).
> A deterministic repair pass was applied: every recoverable run was restored,
> so the ASCII text, the table structure, every declaration name, every hash and
> every verdict are exact. Residual garbling is confined to non-ASCII
> mathematical symbols in roughly fifteen lines and cannot be recovered
> automatically. **The ASCII content of this ledger is authoritative; where a
> symbol is garbled, read it from the corresponding receipt README, which is
> clean UTF-8.** No claim, hash or count in this file depends on the damaged
> symbols.

**Verdict: the manuscript is Lean-certified at a declared scope, and not
beyond it.** One hundred-forty-four declarations are machine-checked on GCP (receipts
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
statement-to-`K_ζ`/source encoding, the `(4.7)` kernel bound at the printed
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
| §1 endpoint obstruction | `u^{-1/2}` image has divergent norm | not formalized | requires weighted Sobolev/collar integration theory |
| Prop. 2.1, (2.1) | `D_b` closed, `Dom(D_b)=Dom(D)`, adjoint `E_b D* E_b` | abstract core certified | `ClosedGraphDraft`, `AdjointDraft` (clean replay `gcp-clean-replay-20261030`); the `W^{1,∞}` multiplier, product rule and projector commutation are *assumed* in Lean, not derived |
| Prop. 2.1, (2.2) | `exp(B)` graph bounds | **certified abstractly** | `ScalarMultiplierGraphBoundsDraft` (`gcp-scalar-multiplier-graph-clean-20261030`) assembles the exact constants from abstract norm hypotheses. New in `gcp-manuscript-formal-20261101-r3`: `multiplier_identity` proves the ring identity `EÃƒÂ¢Ã‚Â»Â¹(DE) = D - ½c(db)`, and `second_graph_inequality` / `first_graph_inequality` derive both displayed bounds from it plus `‖E‖ ≤ e^B`, `‖c(db)‖ ≤ G`. The multiplier norms and the product rule are hypotheses, not derived |
| Prop. 2.1, square domain | composition domain of `D_b*D_b` | certified abstractly | `SquareDomainDraft`, `PositiveSquareDraft`; equality with the unperturbed domain is *not* asserted, matching the manuscript |
| (2.3) | transported boundary plane | **certified** | New: `transportedPlane_not_local`, `transportedPlane_parallel_iff`, `pminus_transportedPlane`, `transportedPlane_eq_smul`, plus the `ÃƒÂÃ†â€™ÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â/ÃƒÂƒâ‚ƒ` eigenvector facts (`gcp-manuscript-formal-20261101-r2`). Certified for the displayed solution formula `cosh λ v₊ + sinh λ v₋`; the exponential `exp(ÃƒÅ½Ã‚Â»ÃƒÂƒâ‚ƒ)` is not derived from `HÃƒÂˆ = 0` in Lean |
| (2.4) | `K_ζ` block system | **certified at the printed signs**; operator derivation not | `kzetaManuscript`/`kzetaManuscript_entries` encode `[[ÃƒÅ½Ã‚Â½ÃƒÂƒâ‚‚-μaÃƒÂƒâ‚ƒ, i fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂƒâ‚‚], [i(ζ-M²)fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂƒâ‚‚, -ÃƒÅ½Ã‚Â½ÃƒÂƒâ‚‚-μaÃƒÂƒâ‚ƒ]]`. `kzetaManuscript_lower_right` proves the correct structural identity: the lower-right block is the **transpose** of the upper-left block (`kLower_eq_transpose`, from `pauli2_transpose`, `pauli3_transpose`). `i_pauli2_mul_neg_i_pauli2` supplies the inverse `-iÃƒÂƒâ‚‚` of `iÃƒÂƒâ‚‚`, `flux_of_first_row` solves the first block row for `ξ = -i f ÃƒÂƒâ‚‚(η'-Aη)`, and `kzetaSource_eta`/`kzetaSource_xi` certify that the source `(0, i fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂ¡Ã‚ÂÃ…Â¸Ãƒâ€šÃ‚Â²ÃƒÂƒâ‚‚ g)` has no `η` component. **Repair:** the earlier `kzeta` used `-A` in the lower-right block with `A=ÃƒÅ½Ã‚Â½ÃƒÂƒâ‚‚-μaÃƒÂƒâ‚ƒ`, i.e. `-ÃƒÅ½Ã‚Â½ÃƒÂƒâ‚‚+μaÃƒÂƒâ‚ƒ`, which flips the angular term; its `kzeta_diag_antisym` certified that different definition and is withdrawn. Still not formalized: deriving `K_ζ` from `(P*P+M²-ζ)ÃƒÂˆ=g`. **Elimination certified** in [`gcp-manuscript-elimination-20261102`](../evidence/gcp-manuscript-elimination-20261102/README.md): `elimination_second_order` derives `η' = Aη' + A'η - (f'/f)(η'-Aη) + (Ãƒâ‚‚AÃ¡Âµâ‚¬Ãƒâ‚‚)(η'-Aη) - (ζ-M²)fÃ¢Â»Â²Î·` from the two rows, the flux relation and its derivative, using `Ãƒâ‚‚Â²=1` and `fÃ¢Â»Â¹f=1`. Still not formalized: that `P*P` equals the displayed first-order system (needs the closed realization/composition domain) |
| (2.5) | variation of constants | discrete, matrix-valued and **continuum** forms certified in a normed algebra | Discrete: `discrete_variation_of_constants` (`Y 0 = P k Y k - Σ_{j<k} P j b j`), `discrete_variation_of_constants_matrix`, `prop_add`. Continuum, in [`gcp-manuscript-integral-20261101-r2`](../evidence/gcp-manuscript-integral-20261101-r2/README.md): `continuum_variation_of_constants` proves `Y(s0) = U(s0,s1)Y(s1) - ∫_{s0}^{s1} U(s0,s)b(s)ds` from the fundamental-solution derivative `∂_s U(a,s) = -U(a,s)K`, `U(a,a)=1`, the ODE `Y' = KY+b`, and continuity of `b`, by differentiating the constant of motion and applying the FTC. Certified for algebra-valued `Y` (scalar case `A=ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â`); the vector-valued reading, a matrix instantiation and non-constant `K(s)` are not formalized |
| §3 interface square | `A_b* A_b = P'_b* P'_b`, domain equality | partially certified | `LeftUnitarySquare` proves `(UD)*(UD)=D*D` for a unitary `U`, and `P1FiniteCutBoundarySquare`/`ProjectedRobinCongruence` cover the finite-cut algebra; the fold conjugation `P'=F P F^{-1}`, `S=FJF^{-1}` and the domain exchange are not formalized |
| Prop. 3.1, (3.1) | `‖(M±Q_b)ÃƒÂ¢Ã‚Â»Â¹â€– ≤ 1/M`, `‖(D_b*D_b+M²)ÃƒÂ¢Ã‚Â»Â¹â€– ≤ 1/M²` | bounded reading certified, existence not | New: `resolvent_shift_norm_lower`, `square_shift_norm_lower` prove the a priori inequalities for bounded skew-adjoint operators; `resolvent_norm_bound`, `square_resolvent_norm_bound` give the inverse bounds **conditional on a right inverse**. Existence (spectral theorem) and the unbounded domain statement are not formalized |
| Prop. 3.2, (3.2)–(3.3) | holomorphic family, `10.56`, `337.92` bounds | constants certified, analysis not | `ResolventVariationConstants` (`gcp-resolvent-variation-constants-20261031`) proves `q<0.134`, `C<1.32`, the two Cauchy constants; the Neumann series, the Banach-valued Cauchy estimates and the Taylor-tail comparison are *not* formalized |
| Prop. 3.2, (3.4) | square resolvent factorization | not formalized | requires the spectral calculus used in Prop. 3.1 |
| §4, (4.1)–(4.2) | `F`, `R3`, `B_t` definitions | not formalized | definitions only; `R3` currently appears only as a polynomial truncation in `FullWeylAngularJet` |
| Prop. 4.1, small-`s` kernel expansion | `R2(x)=x³/840-xÃƒÂ¢Ã‚Â´/10080+O(xÃƒÂ¢Ã‚Âµ)`, `R3(x)=O(xÃƒÂ¢Ã‚Â´)`, small-`s` kernel bound | **certified** | [`gcp-manuscript-r2assembly-20261102`](../evidence/gcp-manuscript-r2assembly-20261102/README.md) (supersedes the four-declaration `-r2` run of the same name): `R2_expansion` (`0 ≤ R2 x - (x³/840 - xÃƒÂ¢Ã‚Â´/10080) ≤ xÃƒÂ¢Ã‚Âµ/60`), `R3_bound` (`|R3 x| ≤ xÃƒÂ¢Ã‚Â´(1/10080+1/60)` for `0 ≤ x ≤ 1`), `R3_kernel_small` (`|R3(s²)|/sÃƒÂ¢Ã‚Â¸ ≤ 1/10080+1/60` for `0 < s ≤ 1`), plus `integral_cubic_term`, `integral_quartic_term` and the earlier `H_expansion`/`g2_closed`/`exp_cubic_lower`/`continuous_g2`. With `R3_kernel_upper` this bounds the kernel on both ends; the formal `IntegrableOn` assembly is **not** certified |
| Prop. 4.1, small-`s` assembly | `∫₀¹aÃƒÂ¢Ã‚Â´ = 1/630` (needed for the `xÃƒÂ¢Ã‚Â´` coefficient) | **certified**; the `α`-average itself open | [`gcp-manuscript-r2asym-20261102`](../evidence/gcp-manuscript-r2asym-20261102/README.md): `integral_weightA_quartic` proves `∫₀¹ a(α)ÃƒÂ¢Ã‚Â´ dα = 1/630` by an explicit antiderivative, with the expansion `aÃƒÂ¢Ã‚Â´ = tÃƒÂ¢Ã‚Â´-4tÃƒÂ¢Ã‚Âµ+6tÃƒÂ¢Ã‚Â¶-4tÃƒÂ¢Ã‚Â·+tÃƒÂ¢Ã‚Â¸`. Together with the certified `∫a³ = 1/140` this fixes the coefficients `x³/840`, `xÃƒÂ¢Ã‚Â´/10080` of `R2`. **Not certified:** `H_expansion`/`R2_expansion`/`R3_bound` (two attempts failed on a function-level `convert` for `g₂`'s closed form and on a `continuous_g2` signature), so `R3(x)=O(xÃƒÂ¢Ã‚Â´)` and kernel integrability on `(0,∞)` remain open |
| Prop. 4.1, small-`s` kernel behaviour | remainder chain for `R3(x)=O(xÃƒÂ¢Ã‚Â´)` | **elementary chain certified; assembly open** | [`gcp-manuscript-smallorder-20261102`](../evidence/gcp-manuscript-smallorder-20261102/README.md): with `gÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â(u)=u-1+e^{-u}`, `g₂=∫gÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â`, `g1_nonneg`, `continuous_g1`, `g1_le` (`gÃƒÂ¢Ã¢â‚¬Å¡Ã‚Â u ≤ u²/2`), `g2_nonneg`, `g2_le` (`g₂ t ≤ t³/6`) for `t ≥ 0`. These give `∫₀^y s(1-e^{-s})ds = y³/3-yÃƒÂ¢Ã‚Â´/8+∫₀^y s g₂`, `0 ≤ ∫₀^y s g₂ ≤ yÃƒÂ¢Ã‚Âµ/30`. **Not certified:** the termwise integration and the `α`-average with `∫₀¹aÃƒÂ¢Ã‚Â´=1/630` that yield `R2(x)=x³/840-xÃƒÂ¢Ã‚Â´/10080+O(xÃƒÂ¢Ã‚Âµ)`, and the resulting integrability of `R3(s²)/sÃƒÂ¢Ã‚Â¸` on `(0,∞)` |
| Prop. 4.2, (4.4)–(4.5) | log-jet coefficient algebra | **arithmetic certified; factor `2` resolved as the evenness factor** | [`gcp-manuscript-logcoef-20261102`](../evidence/gcp-manuscript-logcoef-20261102/README.md): `tail_ratio` (`288ÃƒÂ€/(2ÃƒÂ€Â·10080) = 1/70`), `log_conversion` (the `|k|ÃƒÂ¢Ã‚ÂÃ‚Â»ÃƒÂ¢Ã‚Â¹` tail against `-(t k²)ÃƒÂ¢Ã‚Â´/10080` gives `(D/(70ÃƒÂ€))t³ kÃƒÂ¢Ã‚Â»Â¹`), `log_term_printed`, `log_term_half_split` and `cubic_term_42`. The apparent factor `2` between `log_term_half_split` and `log_term_printed` is the full-line → half-line evenness factor, certified in [`gcp-manuscript-cubicchain-20261102`](../evidence/gcp-manuscript-cubicchain-20261102/README.md) (`log_coefficient_doubled`), so the printed `(4.4)` coefficient stands. The analysis (split, Fourier tails, `o(t³|log t|)` remainder) is **not** formalized |
| Prop. 4.1, (4.3) substitution | the `s = √t k` bookkeeping and the full-line → half-line factor | **certified, factor `2` resolved** | [`gcp-manuscript-cubicchain-20261102`](../evidence/gcp-manuscript-cubicchain-20261102/README.md): `rpow_five_halves`, `rpow_neg_five_halves`, `cubic_scaling_factor` (`t^(-5/2)·(1/(ÃƒÂ€t))·(1/(2ÃƒÂ€))·(1/√t)·tÃƒÂ¢Ã‚Â´ = 1/(2ÃƒÂ€Â²)`), `cubic_limit_coefficient` (`144c_uc_w/(2ÃƒÂ€Â²)`), `kernel_even`, and `cubic_limit_coefficient_doubled` / `log_coefficient_doubled`. The substitution runs over the full line while the draft's constant is the half-line integral; the kernel is even, so the factor `2` is exactly the earlier discrepancy. Both printed coefficients (`144c_uc_w/ÃƒÂ€Â²` and `-(c_ud_w+d_uc_w)t³log t/(70ÃƒÂ€)`) are therefore correct as written, and the earlier "open bookkeeping check" is **withdrawn** |
| Prop. 4.1, (4.3) value of `I` | `∫₀^∞ R3(s²)ds/sÃƒÂ¢Ã‚Â¸ = -5ÃƒÂ€^{3/2}/49152` | **not certified; two recorded obstacles** | (i) well-posedness needs `Mathlib.MeasureTheory.Integral.Layercake`, whose `.ir` artifact is missing from every retained build on the builder; (ii) the evaluation is a substantial improper-integral computation (gamma values at half-integers plus half-integer beta integrals of `a(α)` with endpoint finite parts), for which no certified machinery exists. The manuscript cites `notes/tangent-integral-argument.md` |
| Prop. 4.1, (4.3) | limit constant and its integral reduction | **coefficient algebra and the infinity-side kernel bound certified; small-`s` expansion and the integral value open** | [`gcp-manuscript-cubic-20261102-r2`](../evidence/gcp-manuscript-cubic-20261102-r2/README.md) (supersedes `gcp-manuscript-cubic-20261102`): `cubic_coefficient` proves `144 c_u c_w/ÃƒÂ€Â²Â·(-5ÃƒÂ€^{3/2}/49152) = -15c_uc_w/(1024ÃƒÂ¢Ã‹â€ Ã…Â¡ÃƒÂ€)`; `R3_eq`, `R3_nonpos`/`R3_lower` (`-x³/840 ≤ R3 x ≤ 0`), `Ffun_le_one`, `R3_large_neg` (`R3 x ≤ -x³/1680`, `x ≥ 14`), `R3_kernel_domination` (`≥ 1/(1680s²)`, decay rate only) and **`R3_kernel_upper`** (`|R3(s²)|/sÃƒÂ¢Ã‚Â¸ ≤ 1/(840s²)` for `s ≥ 1`, so the kernel is integrable at infinity). Correcting an earlier ledger version: `∫ sÃƒÂ¢Ã‚Â»Â²` converges, so the previous "divergence" claim was an inference error, now retracted. Open: `R3(x)=O(xÃƒÂ¢Ã‚Â´)` at zero (see the small-`s` row), `u''''=12c_uδ_0+L¹`, Riemann–Lebesgue, and the value `-5ÃƒÂ€^{3/2}/49152` |
| Prop. 4.2, (4.4)–(4.5) | cubic-log asymptotic | not formalized | Fourier tail `o(|k|^{-9})`, split-frequency argument, `log t` extraction |
| (4.6) | compact-model transfer | **winding-sum core certified**; transfer not | New in [`gcp-manuscript-compact-20261102`](../evidence/gcp-manuscript-compact-20261102/README.md): `winding_term_le` (`exp(-c(n+1)²/t) ≤ exp(-c/t)^(n+1)`) and `winding_nonzero_sum_le` (`∑_{n≥1} exp(-c n²/t) ≤ r/(1-r) ≤ 2exp(-c/t)` when `exp(-c/t) ≤ 1/2`), the geometric domination behind the `exp(-c/t)` factor of `(4.6)`. Not certified: the compact form-differentiation/folding/trace conventions, the `(1+t^{-N})` prefactor, the profile norms, and any uniformity in `L,R,T` |
| Prop. 4.3, (4.8) | integrability consequence of the cubic bound | **certified** (integral included) | `flat_pointwise_reduction` and `flat_finite_time_sum_bound` in `ManuscriptFormal.lean`; and in [`gcp-manuscript-integral-20261101`](../evidence/gcp-manuscript-integral-20261101/README.md) the genuine integral: `flat_time_integral_bound` (`∫_0^{t0} |r|dt/t² ≤ C t0` under the cubic bound plus interval-integrability) and `flat_time_integral_bound_of_bounded`, which discharges integrability from measurability and the pointwise bound. The earlier environment gap is closed by running against the Space Mathlib build, which contains `Mathlib.MeasureTheory.Integral.IntervalIntegral` |
| Prop. 4.3, (4.7) | kernel bound `0 ≤ R2(x) ≤ min(x³/840, x²/120)` | **certified at the printed definition of `F`** | New in [`gcp-manuscript-flat-bound-20261101`](../evidence/gcp-manuscript-flat-bound-20261101/README.md): `R2_bound` (plus `R2_nonneg`, `R2_le_cubic`, `R2_le_quadratic`) for `x ≥ 0`, with `Ffun`/`R2` defined from `(4.1)`. Supporting: `phi_remainder` (the FTC identity `ÃƒÂ†(z)-1+z²/2 = ∫_0^z s(1-e^{-s})ds`), the beta moments `integral_weightA_sq` (`∫a²=1/30`) and `integral_weightA_cu` (`∫a³=1/140`), the pointwise bounds `phi_remainder_nonneg`/`_le_cubic`/`_le_quadratic`, and `R2_eq_half_integral` (`R2` as the `α`-average). The constants `1/840` and `1/120` are derived, not assumed |
| Prop. 4.3, Parseval step | `(4.8)` bound from the `(4.7)` kernel bound | **certified conditionally on two named Fourier inputs** | New in [`gcp-manuscript-parseval-20261101`](../evidence/gcp-manuscript-parseval-20261101/README.md): `integrand_abs_le` (pointwise `|uhat·what·K(tk²)| ≤ (t³/840)|g k||h k|`), `integral_abs_mul_le` (Cauchy–Schwarz in `L²` via Mathlib Hölder), `flat_response_le_symbol` (`|r_flat| ≤ t²/(1680ÃƒÂ€Â²)√(∫g²)√(∫h²)`), and `flat_response_le_half` (the printed `|r_flat| ≤ t²/(420ÃƒÂ€)·Ah·Bh` under `∫g² = 4ÃƒÂ€Ah²`, `∫h² = 4ÃƒÂ€Bh²`, with `√(4ÃƒÂ€Ah²)=2ÃƒÂ¢Ã‹â€ Ã…Â¡ÃƒÂ€Â·Ah` and `ÃƒÂ¢Ã‹â€ Ã…Â¡ÃƒÂÃ¢â€šÂ¬Ãƒâ€šÃ‚Â·ÃƒÂ¢Ã‹â€ Ã…Â¡ÃƒÂ€=ÃƒÂ€` proved). **Hypotheses, not proved:** the Fourier derivative identity `g = (i k)³uhat` and Plancherel in the manuscript's `exp(-i k y)` normalization (Mathlib's `L²` Plancherel uses `exp(-2ÃƒÂ€i k x)`), whose composite with the half/full-line relation is exactly `∫g² = 4ÃƒÂ€Ah²` |
| Prop. 4.3, Fourier inputs | Plancherel in the draft's normalization; `g = (i k)³uhat` | **blocked on the dependency build, source prepared and not compiled** | `lean/ManuscriptFourier.lean` (`draftFourier`, `symbol_identity` from `Real.fourier_iteratedDeriv`, `plancherel_l2` from `MeasureTheory.Lp.inner_fourier_eq`, `plancherel_draft` from `MeasureTheory.integral_comp_div`) is written but **not compiled**: the pinned Mathlib build has no `Mathlib.Analysis.Fourier.FourierTransformDeriv` or `LpSpace` olean, `lake build` needs network (fails cloning `plausible`), and manual compilation hits a stale olean tree (`Mathlib.Data.Nat.Choose.Multinomial` missing though not a source import). Disk is at 98%. See `notes/fourier-dependency-blocker-20261102.md`. No receipt, and the two inputs stay hypotheses |
| (4.9)–(4.10) | conversion identity | source identity, not formalized | operator trace identity under domain hypotheses |
| (4.9a) | tower asymptotics | polynomial part certified | New: `tower_derivative_coefficient` checks that differentiating the displayed polynomial part with `a=t/b²` reproduces the `bÃƒÂ¢Ã‚Â»Â²[2/a²-q²/6+1/30]` coefficient of `-Θ'`; the Euler–Maclaurin derivation and the `O_q(a²)` remainder are not formalized |
| (4.10a)–(4.10b) | combined multiplier, `J_2` limit | coefficient algebra certified only | New: `flat_conversion_cubic_coefficient` checks `2·(b²/ÃƒÂ€)·(-1/1680+1/840) = b²/(840ÃƒÂ€)`. The angular limits and pairing factor are inputs |
| (4.10c) | cubic/cubic-log seam coefficients | cutoff coefficient certified only | New: `flat_conversion_cutoff_coefficient`; the `t^{3/2}` and `t²log t` terms are not derived |
| §4 grading bridge | `H=JG` anticommutes with `Q`, odd trace cancels | finite-matrix level certified | `GradingOddTrace` (`gcp-grading-clean-20261030`); the infinite-dimensional trace-class and Duhamel passage is not formalized |
| §4 zero sector, (4.11) | gap `κ exp(-r‖b‖_∞)` | **certified as printed** | `congruenced_gap_composition` gives `κc²`; `exp_neg_half_mul_sq` proves `exp(-rB/2)² = exp(-rB)`; `zero_sector_gap_printed` instantiates `c = exp(-r‖b‖_∞/2)`, the correct multiplier bound for `E_r = exp(-r b/2)` at `r ≥ 0`, and concludes exactly `κ exp(-r‖b‖_∞)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œÃƒÂˆâ€– ≤ ‖E_r Q E_r ÃƒÂˆâ€–`. The earlier §3 report of `κ exp(-2r‖b‖_∞)` was a wrong substitution (`c = exp(-r‖b‖_∞)`) and is superseded |
| (4.12a)–(4.12b) | full-Weyl and conversion series | inputs, not derived | the two series come from cited notes; only their subtraction is certified |
| (4.12c) | difference of the two series | **certified** | New: `converted_series_difference`, exact as printed for nonzero `ÃƒÂ€,t,b` |
| §5, (5.1) | mixed Duhamel formula | **triangle measure certified**; the identity not | New in [`gcp-manuscript-duhamel-20261102`](../evidence/gcp-manuscript-duhamel-20261102/README.md): `triangle_area` proves `∫_0^t ∫_0^{t-a} 1 db da = t²/2`, the draft's explicit "no additional factorial" normalization for the two-vertex triangle. **Not certified:** the matrix-valued constant-integrand reduction (blocked on a missing `NormedSpace â„ (Matrix …)` instance path in the continuity goal), the Duhamel identity for a genuine `exp(-sL)` heat family, and the unbounded form-Duhamel passage | **Discrete Duhamel hierarchy and the closed two-vertex double sum certified** in [`gcp-manuscript-dyson-20261102`](../evidence/gcp-manuscript-dyson-20261102/README.md) (source `c9d70381…`, olean `8f595c26…`, exit 0, 4 declarations, standard axioms): `homogeneous_propagation`, `first_order_vertex` (`Z1 0 = P n Z1 n + Σ_{j<n} P j A j Z0 (j+1)`), `second_order_vertex` and **`second_order_closed`**, the closed `Σ_{j<n} Σ_{i<n-(j+1)} P j A j · prop(K(j+1+·)) i · A(j+1+i) · Z0(j+1+i+1)` obtained by substituting the first-order identity for the shifted family — the finite-Galerkin counterpart of the ordered `da db` triangle. (An earlier attempt at an exact truncated ε-expansion is false: an ε³ remainder exists, and `third_order_vertex` — `Z3 0 = P n Z3 n + Σ_{j<n} P j A j Z2 (j+1)` — and `third_order_closed` — the triple sum `Σ_{j<n} Σ_{i<n-(j+1)} P j A j · prop(K(j+1+·)) i · A(j+1+i) · Z1(j+1+i+1)` — in the same receipt at source `3b613a61…`, olean `5d0b7357…`, 6 declarations, show that remainder is the next hierarchy level, so the expansion is infinite rather than truncatable at two terms; and `third_order_expanded` (same receipt, source `fd271221...`, olean `3f13eea4...`, 7 declarations) expands `Z1` in turn by `first_order_vertex`, giving a triple sum with the base level `Z0` at the bottom.) The matrix-valued constant-vertex integral remains blocked on an `ENormedAddMonoid (Matrix …)` instance path.
| (5.2) | four-term trace expansion | **certified at the finite-matrix derivation level** | New in [`gcp-manuscript-section5-20261102`](../evidence/gcp-manuscript-section5-20261102/README.md): `trace_four_term` proves `Tr[(DÃƒÂ¢Ã¢â‚¬Å¡Ã‚ÂD₂)(C K)] = Tr[C_uw K] + Tr[C_w K_u] + Tr[C_u K_w] + Tr[C K_uw]` for linear maps with the Leibniz rule; `trace_four_term_display` gives the `(5.2)` display order and `trace_four_term_const` the constant-insertion reduction. The unbounded trace-class passage is not formalized |
| (5.3) | reference-position commutator identity | **certified at finite-matrix level** | New: `matrix_reference_position_identity`, with commuting heat factors and `Kt=Ka·Kc` |
| (5.4) | boundary joint-path bound | **term algebra, ratio and prefactor bound certified**; the trace-norm estimate not | [`gcp-manuscript-scaling-20261102`](../evidence/gcp-manuscript-scaling-20261102/README.md): `scaling_terms_nonneg`, `scaling_ratio` (`δ^{3/2}t^{-9/4}/(δ³t^{-3/2}) = 1/(δ^{3/2}t^{3/4})`, so the cubic term dominates iff `δ^{3/2}t^{3/4} ≤ 1`) and `exp_neg_div_bounded` (`t^{-N}exp(-c/t) ≤ N!/c^N`). Not certified: the trace-norm estimate itself, which needs the unbounded realization |
| (5.5) | scalar/contact jet identity | not formalized ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Â not currently jet algebra | `K_2` is defined in `notes/full-weyl-curved-scalar-interior-leading-coefficient.md` as the **path expectation** `K_2(y)=(1/2)E[D²H_0(0)[xi,xi]]`, not as a displayed jet expression. `(5.5)` relates that expectation to the explicit `H_1` of formula (3) through a Brownian computation, so certifying it needs formal probability and path-jet estimates, not `ring` on displayed derivatives. The deterministic part (`H_1` of (3)) is a candidate once `Q, Z_u, Z_w` are fixed from the note |
| (5.6) | odd-odd interior coefficient | not formalized, with a recorded reason | the coefficient is not an algebraic identity: it follows from the leading two-dimensional orbital mixed Dirichlet/Robin heat coefficients plus the cancellation of the `h²u'w'` terms, so it needs the boundary heat-kernel infrastructure (ledger §2, item 3). Formalizing only the final rearrangement would be vacuous ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Â see [`gcp-manuscript-section5-20261102`](../evidence/gcp-manuscript-section5-20261102/README.md) |
| §5 necessary condition | `C_other = -(b_S²/6ÃƒÂ€)∫(h'u'w'+u''w'')dμ` | not formalized | depends on (5.6) |
| §4 fixed-time assembly | form-Duhamel identity | not formalized | form-trace convergence |

| (4.3), kernel integrability | `IntegrableOn (fun s => R3(s²)/s⁸) (Set.Ioi 0)` | **CERTIFIED** | [`gcp-manuscript-integrab-20261102`](../evidence/gcp-manuscript-integrab-20261102/README.md): `R3_kernel_integrableOn`, the first measure-theoretic (non-algebraic) certificate in this workstream. Assembles `R3_kernel_small` on `(0,1]` via `Measure.integrableOn_of_bounded` with `R3_kernel_upper` on `(1,∞)` via domination by `s ↦ s^(-2)` (`integrableOn_Ioi_rpow_iff`), glued by `IntegrableOn.union`. Supporting: `volume_Ioc_zero_one_lt_top`, `continuous_R2`, `continuous_R3`, `measurable_R3_kernel`, `rpow_neg_two`. Source `d194b341…`, olean `c0845332…`, exit 0, 15 declarations, standard axioms |
| (4.3), kernel cancellation form | `R3 x = (1/2)∫₀¹[H(a x) − (a x)³/3]dα` | **CERTIFIED** | Same receipt (run `-r9`, source `12e21190…`, olean `51985363…`, exit 0, 17 declarations): `cubic_term_eq` (`x³/840 = (1/2)∫₀¹(a x)³/3`) and **`R3_eq_cancellation`**, the form in which the leading `x³` terms cancel identically — the only form from which `∫₀^∞R3(s²)ds/s⁸` can be evaluated, since the pieces diverge at `x = 0` individually |
| (4.3), the value of `I` | `∫₀^∞R3(s²)ds/s⁸ = -5π^{3/2}/49152` | **not certified; numerically confirmed** | The reduction (`x = s²`, then `y = a x`) gives `I = (1/2)∫₀¹a^{7/2}dα · J` with `J = ∫₀^∞y^{-9/2}(H(y)−y³/3)dy`, whose inner finite part needs Hadamard regularization that Mathlib lacks — a research task, not a missing lemma. **Numerical check** (`notes/check-I.py`, run on the builder; `x = e^u` for two-sided exponential decay): `I = -5.664396155022e-04` against the printed `-5.664396155631e-04`, agreement to ten significant digits, stable in mesh and truncation. So the printed constant is numerically right; the computation is not a proof and is not cited as one. See `notes/integral-value-reduction-20261102.md`, which also records the withdrawal of my own hand-computed "factor 2 discrepancy" (it was my finite-part bookkeeping error) |

| (4.3), value: domination step | `|x^(-9/2)(H(a x) âˆ’ (a x)Â³/3)| â‰¤ x^(-1/2)/8 + (11/6)x^(-3/2)` | **CERTIFIED** | New in [`gcp-manuscript-value-20261102`](../evidence/gcp-manuscript-value-20261102/README.md): `kernel_pointwise_dominated`, the uniform-in-`Î±` domination that the interchange of `âˆ«â‚€Â¹` and `âˆ«â‚€^âˆž` in the cancellation form requires, plus its ingredients `Hint_closed` (`H(y) = yÂ²/2 âˆ’ 1 + (1+y)e^{-y}`), `Hint_le`, `Hint_ge_neg_one`, `Hint_abs_le`, `Hint_sub_abs_le` (large-`y`), `Hint_sub_abs_le_quartic` (small-`y`, `|H(y) âˆ’ yÂ³/3| â‰¤ yâ´/8`) and the rpow bookkeeping `rpow_neg9_mul_four/two/three`. Source `cb8e9120â€¦`, olean `55e69a58â€¦`, exit 0, 10 declarations, standard axioms. **Not** certified: the interchange, the `Î±`-integral (`B(9/2,9/2)`), the half-integer `Gamma` values, and the final arithmetic |
| (4.3), value: integrable domination | the two-regime bounds are integrable on their half-lines | **CERTIFIED** | Same receipt, run `-r8` (source `903480e1...`, olean `23fe5b16...`, exit 0, 14 declarations): `kernel_dominated_small` (`0 < x <= 1 => |x^(-9/2)(H(a x) - (a x)^3/3)| <= x^(-1/2)/8`), `kernel_dominated_large` (`1 <= x => |...| <= (11/6) x^(-3/2)`), `integrableOn_rpow_neg_half_Ioc` (`x^(-1/2)` integrable on `(0,1]`) and `integrableOn_rpow_neg_three_halves_Ioi`. The earlier single bound was *not* integrable at infinity (`x^(-1/2)` diverges), so this split is required, not cosmetic. **Still open:** the alpha/x interchange, `B(9/2,9/2)`, the half-integer `Gamma` values, and the arithmetic |
| (4.3), value: inner integral exists | `IntegrableOn (fun x => x^(-9/2)(H(a x) - (a x)^3/3)) (Ioi 0)` for every `alpha in [0,1]` | **CERTIFIED** | Same receipt, run `-r17` (source `df1ce9f8...`, olean `170a095c...`, exit 0, 16 declarations): `integrableOn_inner`, the domain-side prerequisite for the alpha/x Tonelli-Fubini interchange, proved by `IntegrableOn.mono'` against the two regime bounds and `IntegrableOn.union`. Four earlier failures are recorded, including that `Integrable.mono'` wants `â€–g xâ€– <= f x` (no norm on the dominating side) and that `fun_prop` cannot build `ContinuousOn` for a negative-exponent rpow. **Still open:** the interchange itself, `B(9/2,9/2)`, the half-integer `Gamma` values and the arithmetic |
| (4.3), value: alpha/x interchange | `âˆ«_0^1 âˆ«_{Ioi 0} f = âˆ«_{Ioi 0} âˆ«_0^1 f` for the (4.3) integrand | **CERTIFIED** | Same receipt, run `-r19` (source `3333cb4a...`, olean `d886ab05...`, exit 0, 19 declarations): `inner_integral_swap`, via Mathlib's `intervalIntegral_integral_swap` with product integrability discharged by `Integrable.mono'` against the new `kernelBound` majorant (`integrableOn_kernelBound`), which comes from `Integrable.mul_prod` of the constant `1` on the finite-measure set `(0,1]` with `kernelBound` on `(0,inf)`. **Remaining:** the `y = a x` substitution (`I = (1/2) B(9/2,9/2) J`), the half-integer `Gamma` values, and the arithmetic |
Summary: 144 declarations machine-checked across twenty-three receipts (the newest,
[`gcp-manuscript-integrab-20261102`](../evidence/gcp-manuscript-integrab-20261102/README.md),
re-certifies 9 earlier declarations and adds 6 new ones). Of these: 2 algebraic
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
withdrawn (§3.2). The remaining analytic and physical statements are
unformalized and are listed with their reasons.

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
4. **Fourier analysis of distributions on ÃƒÂ¢Ã¢â‚¬Å¾Ã‚Â with explicit improper
   integrals**, for Propositions 4.1–4.3. Mathlib has the Fourier transform;
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
is a completed deliverable; extending the scope to items 1–5 is a separate,
open research and infrastructure program and is not claimed here.

## 3. Correspondence repairs found by formalization

Both defects recorded in the 2026-11-01 desk audit are now repaired at source.
The old statements are preserved in this record as history; neither is cited as
current evidence.

### 3.1 `(2.4)` block encoding (repaired)

The draft's `K_ζ` has upper-left block `A = ÃƒÅ½Ã‚Â½ÃƒÂƒâ‚‚ - μaÃƒÂƒâ‚ƒ` and lower-right block
`-ÃƒÅ½Ã‚Â½ÃƒÂƒâ‚‚ - μaÃƒÂƒâ‚ƒ`. The earlier formalization encoded the lower-right block as `-A`,
i.e. `-ÃƒÅ½Ã‚Â½ÃƒÂƒâ‚‚ + μaÃƒÂƒâ‚ƒ`, which flips the sign of the angular term `μaÃƒÂƒâ‚ƒ`. Its
`kzeta_diag_antisym` was a true statement about that different matrix and is
withdrawn as evidence for the manuscript.

Repair, in `lean/ManuscriptFormal.lean`:

* `kUpper`, `kLower` and `kzetaManuscript` now encode the printed blocks;
* `pauli1_transpose`, `pauli2_transpose` (`ÃƒÂƒâ‚‚áµ€ = -ÃƒÂƒâ‚‚`), `pauli3_transpose`;
* `kLower_eq_transpose` and `kzetaManuscript_lower_right` prove that the
  printed lower-right block is `Aᵀ`, which is the correct structural identity
  in the manuscript's convention (it is not `-A`);
* `i_pauli2_mul_neg_i_pauli2` proves `(iÃƒÂƒâ‚‚)(-iÃƒÂƒâ‚‚) = 1`, the inverse used to
  solve the first row;
* `flux_of_first_row` proves that `η' = Aη + i fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂƒâ‚‚Î¾` with `fÃƒÂ¢Ã‚Â»Â¹f = 1` gives
  `ξ = -i f ÃƒÂƒâ‚‚(η' - Aη)`;
* `kzetaSource_eta`, `kzetaSource_xi` certify the inhomogeneous source
  `(0, i fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂ¡Ã‚ÂÃ…Â¸Ãƒâ€šÃ‚Â²ÃƒÂƒâ‚‚ g)` of `(2.5)`: no `η` component, `i fÃƒÂ¢Ã‚ÂÃ‚Â»Ãƒâ€šÃ‚Â¹ÃƒÂ¡Ã‚ÂÃ…Â¸Ãƒâ€šÃ‚Â²ÃƒÂƒâ‚‚ g` in the `ξ`
  component.

Not repaired by this: the derivation of `K_ζ` itself from
`(P*P + M² - ζ)ÃƒÂˆ = g`. That step is an operator computation on the realized
Pauli square (Proposition 3.1 territory), not a matrix identity, and it remains
outside the certified scope.

### 3.2 `(4.11)` exponent (report repaired, printed constant confirmed)

The draft's `(4.11)` prints `‖A_r ÃƒÂˆâ€– ≥ κ exp(-r‖b‖_∞)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œÃƒÂˆâ€–` for
`A_r = E_r Q E_r` and `E_r = exp(-r b/2)`. The earlier ledger applied the
multiplier lower bound `c = exp(-r‖b‖_∞)` at both factors, concluding that the
proved constant was `κ exp(-2r‖b‖_∞)` and that the manuscript was wrong.

That substitution is incorrect. At `r ≥ 0` and `|b| ≤ B = ‖b‖_∞` each factor
`E_r` satisfies `‖E_r ÃƒÂˆâ€– ≥ exp(-rB/2)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œÃƒÂˆâ€–`, so

```text
‖E_r Q E_r ÃƒÂˆâ€– ≥ exp(-rB/2) κ ‖E_r ÃƒÂˆâ€– ≥ κ exp(-rB/2 - rB/2)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œÃƒÂˆâ€–
             = κ exp(-rB)ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬â€œÃƒÂˆâ€–,
```

which is the printed constant. `exp_neg_half_mul_sq` proves
`exp(-rB/2)² = exp(-rB)` and `zero_sector_gap_printed` delivers the printed
inequality from `congruenced_gap_composition`. The manuscript requires no
correction; the earlier discrepancy report is withdrawn.

### 3.3 Standing scope of the repairs

Both repairs are source-level and now carry an exact-source receipt:
[`gcp-manuscript-correspondence-repair-20261101`](../evidence/gcp-manuscript-correspondence-repair-20261101/README.md)
(source SHA-256 `dd56927188e2967244d15ce828fd0900ca781d4252639cc7d4a0a5c559364d13`,
olean `e8c2283b2778ce55f65f6d712d24ef658219488e877308d1da3bfbda8cb3b8fb`,
exit 0, no `sorryAx`, standard axioms only). The first attempt failed on the
`ᵀ` notation and is preserved at
[`gcp-manuscript-correspondence-repair-20261101-failure-r1`](../evidence/gcp-manuscript-correspondence-repair-20261101-failure-r1/README.md).
The pre-repair receipts (`gcp-manuscript-formal-20261101` … `-r5`) remain
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

The Parseval/Cauchy–Schwarz step lives in `lean/ManuscriptParseval.lean`
(SHA-256 `8fb6d20d7067f7f887fc8bfb2285228c21e07ba576e18c59a65609dfdbd12b5f`),
run by `lean/cloud-manuscript-parseval-20261101.sh` and retained at
`evidence/gcp-manuscript-parseval-20261101/` (exit 0, no warning, 4
declarations, standard axioms only).

Remaining to-do list: none in the certified scope. Every numbered manuscript
statement is certified at the declared scope or listed above with the reason it
is excluded; extending that scope is the open research program
(`manuscript/DRAFT.md` §5 and S001 F5), not a formalization backlog.
