# Paper 1 prior-art comparison: working assessment

This is the S001.2 comparison in progress, not a final novelty verdict or a publication decision. It uses the proposed P1-A through P1-C claims in [the ledger](claim-dependencies.md); P1-D is an unproved extension, not a proved result. Detailed comparisons and open normalization issues are linked below. Sources were rechecked at their versioned preprint URLs; later literature and the final theorem statement still need review.

| Primary source | Result and overlap | Difference requiring proof, not merely assertion |
| --- | --- | --- |
| Ronge, [Perturbations of APS Boundary Conditions for Lorentzian Dirac Operators](https://arxiv.org/abs/2408.16696), arXiv v3 / SIGMA 21 (2025), Theorems 4.1–4.2 | Gives Fredholmness and index stability for Lorentzian Dirac operators under perturbations of APS boundary projections. Theorem 4.1 uses the squared Calkin-norm distances to the endpoint APS projections with sum `<1`; Theorem 4.2 treats graph boundary conditions when the product of the two Calkin norms is `<1`. | Adjacent to the endpoint/domain audit, but the setting is spatially compact globally hyperbolic Lorentzian evolution and Fredholm pairs of projections. It does not treat the paper's Riemannian paired realization, mass/log Weyl congruence, heat trace or mixed response, nor does it control a common proper-time regulator. Cite it when delimiting boundary-perturbation novelty, not as a substitute for the P1 domain or response argument. |
| Bär and Ballmann, [Guide to elliptic boundary value problems for Dirac-type operators](https://arxiv.org/html/1307.3021v2), Corollary 4.18 and Theorems 4.6, 4.9–4.10 | Gives the smooth-boundary ellipticity, adjoint, regularity and smooth-core machinery underlying the H1 projector realization. See [the application audit](finite-cut-elliptic-domain-bridge.md). | Verify the actual folded bundle, Green pairing, projector and physical realization. An application of this general theorem alone is not a new domain theorem. |
| Bandara and Rosén, [Riesz continuity under local boundary perturbations](https://research.chalmers.se/publication/513241/file/513241_Fulltext.pdf), Theorems 2.1 and 3.1 (2019) | Prove functional-calculus perturbation estimates under explicit geometric, common-domain, regularity and self-adjointness hypotheses, and Riesz continuity for specified local Dirac boundary conditions, controlled by the L-infinity distance of boundary projectors. | Compare the eventual operator perturbation claim against these estimates. The paper's first-order D is not self-adjoint; applicability to its self-adjoint partner requires checking the actual operator and boundary hypotheses. The mode-dependent, spectral-parameter-dependent transported cut relation is not automatically a local subbundle or a fixed self-adjoint domain, and the zero-energy angular projectors are not small in full L2 norm. This result does not itself establish the tangent trace response or common-regulator limit. |
| Beneventano and Santangelo, [finite-temperature Dirac operator under local boundary conditions](https://arxiv.org/abs/hep-th/0404115v2), Sections 3-5, Eqs. (3.3), (3.6), (3.9)-(3.11), (4.1)-(4.2) | Computes finite-temperature spectra and zeta-regularized free energy/fermion number for a free 1+1 dimensional Euclidean Dirac operator on a segment with two local self-adjoint boundary conditions; it explicitly separates an asymmetric boundary spectrum. | This establishes finite-temperature determinant and local-boundary analysis as prior art. It does not treat a curved four-dimensional paired realization, mass/log mixed Hessian, angular tower with LLL allocation, rough seam, or physical common regulator. Compare the final P1 observable and boundary bundle directly; do not claim novelty from finite temperature, local Dirac boundary data, or zeta regularization alone. |
| Gilkey, Kirsten and Vassilevich, [transfer conditions](https://arxiv.org/html/hep-th/0208130v1), Eq. (1.1) and Theorem 1.2 | Studies heat coefficients for a pair of smooth manifolds with finite matrix transfer conditions; its boundary value space differs from a mixed projector condition. | [The detailed comparison](transfer-transmittal-comparison.md) shows a boundary-jet distinction for finite transfer matrices; matching operators and coefficients remains necessary. |
| Gilkey, Kirsten and Vassilevich, [transmittal conditions](https://arxiv.org/html/hep-th/0101105v1), sections 2–5 | Studies Laplace-type operators across an interface and derives heat coefficients. Its value matching becomes a mixed Dirichlet/Robin structure after changing copy basis. | A mixed boundary structure itself is not a novelty claim. Compare the exact connection, Robin term, normal convention, first-order domain and differentiated physical response. |
| Miyazaki, [Spectral asymptotics for Dirichlet elliptic operators with non-smooth coefficients](https://ir.library.osaka-u.ac.jp/repo/ouka/all/7806/ojm46_02_441.pdf), Osaka J. Math. 46 (2009), Theorem 1.3 and Corollary 1.4 | For the specified divergence-form Dirichlet realization with Hölder leading coefficients, gives a local spectral-function remainder separating coefficient regularity from distance to the boundary, and a bounded-domain counting-function asymptotic. | This is a spectral estimate, not the mixed paired Dirac Hessian or a regulator-uniform differentiated heat trace. Check the paper's hypotheses (H0)–(H2), dimensional constants and final paper scope before importing any bound; it does not replace review of the separate 2011 heat-asymptotics theorem. |
| Miyazaki, [Heat asymptotics for Dirichlet elliptic operators with non-smooth coefficients](https://doi.org/10.3233/ASY-2010-1024), Asymptotic Analysis 72 (2011), 125–167 | The publisher abstract states finite-order heat-trace asymptotics for Dirichlet divergence-form elliptic operators of order 2m with C^σ coefficients, σ>0, on bounded C^ρ domains, where ρ=1 for σ≤1 and ρ=σ+1 for σ>1; it also reports heat-kernel asymptotics in the full space, half-space and bounded C^1 domains. | This is relevant variable-coefficient prior art beyond scalar-potential regularity. The publisher full text is restricted; theorem-level assumptions, coefficient order, systems coverage and any uniform parameter dependence have not been checked. Compare these before claiming a distinct rough-coefficient result; the abstract alone does not establish the paired mixed-domain response. |
| Smith, [Schrödinger heat traces and regularity of potentials](https://arxiv.org/html/1809.05614v1), Theorem 1.1 | Establishes a sharp link between Sobolev regularity of a scalar compactly supported potential and finite-order relative heat expansions. See [the regularity comparison](finite-regularity-prior-art.md). | The proposed problem changes a Dirac square's principal coefficients and boundary realization; prove the relevant response and boundary result, then compare the actual theorem rather than claiming novelty from different hypotheses alone. |
| Gilkey and Grubb, [logarithmic heat traces for Dirac spectral boundary conditions](https://archive.mpim-bonn.mpg.de/1832/1/preprint_1996_163.pdf), section 2 and Theorem 2.6 | Establishes logarithmic terms and their generic nonvanishing for stated smooth product Dirac problems with nonlocal spectral boundary conditions. | Logarithms in Dirac heat traces are established prior art; compare the candidate local projector, mixed response and rough jet as detailed [here](prior-art-spectral-boundary-logarithms.md). |
| Grubb, [logarithmic terms for APS problems](https://arxiv.org/pdf/math/0302289), Section 3, Theorem 3.5 and Corollary 3.7 | For smooth first-order elliptic operators with the same well-posed pseudodifferential boundary projection, analyzes trace-expansion changes when the operator difference vanishes to order `l` in the normal variable; initial log coefficients have stability ranges and selected power terms change locally. | Close prior art for boundary-vanishing variations. Match its smooth operator, fixed spectral boundary condition and perturbation form to P1's local paired projector, full Weyl congruence and rough/log jets; see the [detailed scope audit](prior-art-spectral-boundary-logarithms.md). It does not establish P1's mixed response or common regulator. |
| van den Berg, Gilkey and Kirsten, [singular weights II](https://arxiv.org/html/1006.5644v1), sections 1.4–1.9 | Derives boundary asymptotics for singular scalar smearing weights with mixed boundary conditions. | The weight is an insertion for a fixed smooth Laplace-type operator; it does not by itself establish the candidate's variable-principal-symbol Dirac Hessian or its log-seam coefficient. |
| Kersten, [weighted heat traces on Lipschitz domains](https://arxiv.org/html/2609.16746v1), Theorem 1.1 (2026 preprint) | Gives leading boundary-weighted scalar Dirichlet heat asymptotics, including a logarithm for the critical inverse-distance weight. | The operator is fixed and scalar; the theorem does not supply the paired Dirac mixed metric variation or regulator-uniform remainder. See [the comparison](prior-art-lipschitz-weighted-heat-2026.md). |
| Franchino-Viñas, [resummed surface form factors](https://arxiv.org/html/2208.11979v2), Theorem 3 and Eqs. (5.9)–(5.10) | Gives second-order scalar-potential form factors and states an interface-to-Dirichlet/Robin coefficient relation for reflected data. | Compare the complete Dirac first and second vertices, boundary terms and normalization against the scalar form factors. Its theorem neglects total derivatives and does not automatically cover the candidate's nonsmooth jet; see [the detailed audit](prior-art-resummed-surface-form-factors.md). |
| Bordag and Vassilevich, [nonsmooth backgrounds](https://arxiv.org/html/hep-th/0404069v2), Eqs. (20), (22), (27)–(32) | Calculates surface terms caused by derivative jumps of scalar potentials. The p=1 term has the same t^(5/2) power as the candidate's cubic-seam diagnostic. | [The jump comparison](prior-art-derivative-jumps.md) and [general-order calculation](scalar-jump-general-order.md) identify a preprint normalization discrepancy. An [independent-profile benchmark](scalar-jump-quadrature-check.md) supports the latter calculation and includes an analytic bound for its exact integral, but does not resolve the published version. The variable-principal-symbol Dirac vertex is not yet identified with a scalar potential; resolve conventions and check the published version before a numerical comparison. |

## Common-domain comparison with Bandara–Rosén

Under the paper's conditional finite-cut hypotheses, set S=iJD and E=exp(-b/2), with J parallel and commuting with scalar E. The self-adjoint partner of the congruence is S_b=ESE on the common first-order domain. Formally, and on that domain once the weak product rule is justified,

    S_b-S = (exp(-b)-1) S + i J E [D,E].

The first term is a bounded coefficient multiplying the seed first-order operator; the second is a bounded zeroth-order coefficient controlled by exp(||b||_infinity)||db||_infinity. Thus this family is a candidate for the distributional A1 nabla + div A2 + A3 framework of Theorem 2.1, with A2=0 after expressing S in a suitable connection. This observation is a route for comparing operator-norm continuity, not an application of the theorem: its A1–A9 requirements include common self-adjoint H1 domains, multiplier commutators, graph estimates, and an H2 estimate for the square of the reference operator. The global bundled realization, core and square regularity must be verified, as must the constants for the field family. The theorem gives a bounded holomorphic functional-calculus perturbation estimate; it does not by itself give the paper's explicit mass-dependent first and second derivative constants or a trace-class differentiated heat response. Theorem 3.1 concerns specified local boundary subbundles and does not directly cover an angular-nonlocal, spectral-parameter-dependent effective boundary relation.

This comparison makes the general continuity of the operator family insufficient as a standalone novelty claim. It does not decide whether the explicit parameter derivatives together with the normalized tangent response constitute a new result.
The candidate's potentially distinctive package is the actual paired first-order realization together with explicitly normalized mixed mass/log tangent response, if those statements are proved and not subsumed by prior interface results. The listed papers already cover general elliptic boundary machinery, transfer/transmittal heat coefficients, scalar finite-regularity trace theory, and derivative-jump surface terms. A shared power or a different notation is insufficient evidence of novelty. The logarithmic coefficient is presently conditional on a definite log jet and Fourier tail, not on the original weight bound alone.

Current disposition: **undecided**. The remaining physical folding and full-response dependencies, scalar benchmark discrepancy, final-scope comparison and later-literature search prevent an evidence-backed continue/narrow/merge/park decision. No wormhole existence, stability, curved regulator theorem or Lean certification follows from this comparison.

## Focused later-literature screen (2026-10-30)

A targeted arXiv/web search used combinations of `Dirac heat trace metric
variation rough coefficients boundary`, `Dirac determinant boundary heat
trace metric perturbation`, `mixed boundary Dirac heat kernel interface
Weyl`, and `heat trace response Dirac discontinuous metric coefficient
boundary`. The directly relevant items returned were the established smooth
spectral-boundary heat asymptotics already listed above and Ronge's 2025
Lorentzian APS Fredholm-perturbation paper. No exact statement matching the
paired Riemannian realization, full scalar Weyl congruence, rough/log seam,
and common-regulator mixed response appeared in these results. This is a
limited discovery screen, not an exhaustive priority search or evidence of
novelty; broaden and rerun it after P1's actual theorem statement is frozen.

Remaining to-do list: close the physical response bridge, broaden the
theorem-specific literature comparison, resolve the scalar benchmark issue,
record the supported S001.3 decision, complete the manuscript, and certify
its claims in Lean on GCP.

## Additional close prior art: smooth mixed-boundary heat coefficients

The primary-source audit now includes Branson, Gilkey, Kirsten and Vassilevich, *Heat kernel asymptotics with mixed boundary conditions*, arXiv:hep-th/9906144v1 (1999), published in *Nuclear Physics B* 563 (1999), 603–626. The source states Theorem 2.4 for the complete `a_5(F,D,B)` coefficient for Laplace-type operators on compact smooth manifolds with smooth boundary and a smooth bundle splitting into Dirichlet and Robin components; it explicitly includes the interaction terms between the two subbundles. In dimension four, `a_5` multiplies `t^(1/2)` in the heat trace. Section 6, Lemma 6.1 and Appendix B record conformal-variation identities for those local coefficients and geometric data. See the [primary arXiv version](https://arxiv.org/html/hep-th/9906144) and its [version/journal record](https://arxiv.org/abs/hep-th/9906144).

This is a close overlap for the explicit smooth fixed-cut coefficient `a5` and its conformal variation. Under the proposed finite-cut smoothness and actual mixed composition-boundary hypotheses, the P1 square is a Laplace-type operator with a mixed boundary realization. Theorem 2.4 therefore supplies a lower-coefficient baseline. Keep the response families distinct: the orbit-only fixed-angular diagnostic has a `t^(5/2)` term (`a9` order), whereas the full-Weyl angular-tower diagnostic has a cubic `t^(3/2)` term (`a7` order) and a cubic-log `t^2 log(t)` term (logarithmic `a8` order). The existing full-Weyl note computes the latter only in the fixed-product tangent model. The `a5` source directly computes neither target coefficient; physical transfer and rough/log limits remain separate work.

The source does **not** by itself prove the P1 claim. P1 still must establish that its actual paired composition square and boundary splitting satisfy the source hypotheses, differentiate the moving scalar-congruence family with the correct operator and boundary data, and track the physical-half, density, contact, angular-tower and LLL normalization. The source assumes smooth compact data and gives local coefficients; it does not establish the cubic/log rough-family limit, the weighted physical endpoint domain, a common-regulator mixed response, or the P1-D uniform curved remainder. Those are the potential application-specific contributions, if they can be proved and are not covered by the other cited interface and finite-regularity results.

**Audit consequence.** Restrict any novelty statement based on P1-C to a fully matched higher-order coefficient/rough-log paired response or another explicitly unaddressed consequence. The fixed-cut smooth local coefficient calculation is supporting algebra/analysis, not the standalone contribution. The orbit-only `t^(5/2)` term needs an `a9`-order comparison; the full-Weyl tower `t^(3/2)` term is `a7` order and its `t^2 log(t)` term is logarithmic `a8` order. Existing tangent calculations provide conditional model coefficients, but no coefficient has yet been matched to the physical half-trace, source conversion and common regulator.

Remaining to-do list: verify the mixed-square hypotheses and coefficient substitution; compare the rough/log remainder against finite-regularity heat theory; close the physical endpoint and common-regulator bridge; decide novelty, then certify the supported claim and prepare the manuscript.

The conditional fixed-cut operator match is detailed in [smooth-finite-cut-heat-prior-art-instantiation.md](smooth-finite-cut-heat-prior-art-instantiation.md): `D_b^*D_b` has scalar Laplace principal symbol for `g_b=e^(2b)g` and, on its composition domain, mixed Dirichlet/Robin boundary conditions. A density unitary puts it in the smooth Laplace-type class of Branson et al.'s Theorem 2.4 when the stated smooth elliptic hypotheses hold. Their `a_5` formula gives the `t^(1/2)` coefficient in dimension four. It is lower-order prior art for the orbit-only `t^(5/2)` (`a9`) term and the full-Weyl `t^(3/2)` (`a7`) seam term; it does not directly calculate either. The full-Weyl tangent note gives a conditional `a7`-order model calculation, but its physical normalization and source transfer remain open.

## Additional close prior art: d=4 Dirac boundary conformal anomaly

The versioned primary source Faraji Astaneh and Solodukhin, [*Fermions, boundaries, and conformal and chiral anomalies in d=3, 4 and 5 dimensions*](https://arxiv.org/abs/2308.10351v3), published as *Phys. Rev. D* 108, 085015 (2023), is directly relevant. Equation (41) specifies mixed Dirichlet/conformal-Robin projectors for Dirac spinors; Eq. (53) identifies the integrated d-dimensional conformal anomaly with the heat coefficient `a_d`; and Sec. V.A, Eqs. (66)--(68), computes the d=4 Dirac anomaly, including its boundary terms. The paper states that this d=4 conformal-anomaly calculation reproduces earlier work; its novel extensions concern other dimensions and chiral-anomaly terms.

This makes the general smooth d=4 mixed-boundary Dirac conformal anomaly and its local `a4` coefficient unavailable as a P1 novelty claim. The paper does not derive P1's full scalar-congruence first and mixed response with mass variation, the actual paired composition-domain transfer, cubic/log seam jets, full angular sum, separate LLL allocation, or a common physical regulator. In particular, its `a4` anomaly does not compute the candidate full-Weyl cubic seam term at `a7` (`t^(3/2)`) or cubic-log term at logarithmic `a8` (`t^2 log t`) order. Its boundary realization matches P1's fixed-cut Robin structure at the seed under the identified projector/Gauss and normal-convention hypotheses, as detailed below. Treat it as direct smooth prior art for that structure and the a4 anomaly; a novelty argument must identify and prove a higher-order or rough/log response result beyond this anomaly.
### Boundary-condition match for the 2023 anomaly source

The mixed boundary class is more than merely adjacent. In `smooth-finite-cut-heat-prior-art-instantiation.md`, P1's fixed-cut square domain is `Pi_- psi=0` and `Pi_+ (nabla_n+K/2-(1/2) partial_n b) psi=0`, under the declared projector and Gauss hypotheses. At the seed, and for the zero-normal-jet family used in the fixed square-domain comparison, this is `Pi_- psi=0` with `Pi_+ (nabla_n+K/2) psi=0`. Faraji Astaneh--Solodukhin's arXiv v3 Eq. (41) has `Pi_- psi=0` and `(nabla_n-S)Pi_+ psi=0`; its Appendix C, Eqs. (C.6)--(C.7), gives `S=-K Pi_+/2`. Thus the Robin expressions agree after matching the normal convention, subject to verifying the folded bundle/projector identification in P1. For nonzero normal multiplier jet, the P1 Robin endomorphism changes and must be compared separately.

This closes the structural mixed-boundary comparison at the smooth seed level. The 2023 work is prior art for the smooth d=4 conformal-anomaly coefficient `a4` in this boundary class. It still does not provide the full scalar-congruence mixed response, the higher-order cubic/log seam coefficients, the rough family limit, or the physical common-regulator transfer. Do not describe P1's smooth mixed-boundary anomaly or seed Robin structure alone as novel.

## Recent endpoint-domain and state comparison: Dirac fields on AdS

Dappiaggi and Parpinel, [*Boundary conditions and Dirac fields on AdS_n*](https://arxiv.org/abs/2511.10225v1), arXiv v1 (2025), published as *Phys. Rev. D* 113, 125028 (2026), is relevant to the endpoint realization audit. Sections 2–5 classify mass-dependent boundary conditions at conformal infinity for Lorentzian global and Poincaré AdS, construct advanced/retarded propagators, and give four-dimensional examples including a ground-state two-point function for the MIT-bag case and a normalizable bound mode for a generalized condition. The published record is [APS DOI 10.1103/2t3p-pwz3](https://doi.org/10.1103/2t3p-pwz3).

This result confirms that conformal-infinity domain and state choices are substantive parts of a Dirac problem; they cannot be supplied by the formal conformal operator map alone. Its geometry is pure Lorentzian AdS, its boundary conditions are chosen for a well-posed hyperbolic problem, and its conclusions concern propagators and states. It does not establish the Euclidean RN paired projector realization, the physical/product-frame heat-trace map, the LLL allocation, or a common proper-time regulator. The exact boundary-condition overlap with P1 has not been demonstrated. Use this as endpoint/state prior art and as a prompt to state P1's Euclidean Hilbert space and state prescription precisely, not as a matching theorem or a novelty verdict.

## Screen of recent higher-derivative boundary anomaly work (2026-10-31)

A focused update found Paci and Solodukhin, [*Auxiliary-Field Formalism for Higher-Derivative Boundary CFTs*](https://arxiv.org/abs/2512.18017v1), arXiv v1 submitted 2025-12-19. It treats the fourth-order scalar operator `Box^2` on four-dimensional manifolds with boundary, maps boundary conditions through an auxiliary second-order system, computes flat-space heat kernels and Seeley--DeWitt coefficients, and constructs a curved Weyl-invariant action with boundary terms and anomaly charges. This is adjacent boundary-anomaly methodology, not a direct P1 match: the field and operator are scalar and fourth order, and the paper does not treat a paired first-order Dirac domain, the full-Weyl Dirac mixed response, or its physical common-regulator limit. Retain it as contextual prior art; it does not change the current undecided novelty status.

This update was prompted by searches for recent Dirac mixed-boundary Weyl-response work and newer boundary anomaly calculations. It is a limited screen, not an exhaustive priority search. The frozen paper claim and remaining direct comparisons still control the novelty decision.

Remaining to-do list: audit the precise Euclidean endpoint/domain relation against this Lorentzian AdS literature; close the physical source and common-regulator bridge; complete the theorem-specific prior-art comparison and S001.3 decision; certify only the supported claims on GCP.

## Focused exact-form search (2026-10-31)

A follow-up search used the operator-level phrases “Dirac heat kernel scalar
congruence,” “second variation heat trace mixed boundary mass,” and
“Dirac discontinuous metric derivative jump.” The directly relevant primary
hit was again Faraji Astaneh--Solodukhin's smooth d=4 mixed-boundary conformal
anomaly calculation, already compared above. It establishes the smooth
boundary anomaly / `a4` result, not the paired scalar-congruence mixed
mass/log response or its physical common-regulator transfer. No exact
operator-level match surfaced in this focused search; that is a search record,
not evidence of absence or a novelty verdict. The comparison still requires
the exact transformed-Dirac source audit and the proved P1 claim to be fixed.

The finite-cut source-operator part of that audit is now explicit:
[`physical-product-contact-operator-gap.md`](physical-product-contact-operator-gap.md)
proves that the physical square and its transported full-Weyl square have
identical fixed-cut heat traces under the unitary L2 map, with the actual
composition domain. This does not identify that trace with the bare
product-frame/orbit trace or the canonical Lorentzian Hamiltonian contact.
The remaining source audit is the common-regulator and endpoint comparison,
not the finite-cut unitary transport.

Remaining to-do list: establish the physical full-Weyl source/common-regulator
bridge; finish the transformed-Dirac comparison and final novelty disposition;
certify only the supported claims on GCP.

## Additional complete-end heat-kernel screen (2026-10-31)

The primary-source screen also checked Talebi and Vertman, [*Spectral geometry on manifolds with fibred boundary metrics II: heat kernel asymptotics*](https://arxiv.org/abs/2101.08844), published in *Analysis and Mathematical Physics* 12 (2022), article 62, [Theorem 1.1](https://doi.org/10.1007/s13324-022-00648-y). They construct a polyhomogeneous heat kernel for the Hodge Laplacian on complete fibred-boundary (`phi`) metrics and extend the result to Laplace-type operators whose normal operator has the specified scalar-Laplacian structure, including the square of a spin Dirac operator. This is relevant background for complete-end heat-kernel methods and means such methods cannot be described as new in themselves.

The theorem concerns a fixed operator on a prescribed smooth fibred-boundary geometry. It does not give a mixed second variation of a Weyl-congruence family, P1's paired local projector and composition domains, the angular-mass/commutator vertices, the source's contact/density/LLL allocation, or a common-regulator comparison with the canonical observable. The geometry and normal-operator hypotheses have not been matched to the paper's physical endpoint. This is adjacent endpoint/heat-calculus prior art, not a direct P1 theorem or a novelty verdict. The literature search remains limited.

Remaining to-do list: complete the physical source/common-regulator bridge, match the full transformed Hessian and its coefficients, finish the novelty decision and manuscript, and certify supported claims on GCP.

## Close structural prior art: symmetric Dirac interfaces

The focused screen also checked Herzog, Huang and Vassilevich, [*Interface
Conformal Anomalies*](https://arxiv.org/abs/2005.01689), arXiv v1 (2020),
Sections 2--3, especially Eqs. (4), (11)--(15), (20), (32)--(37). This is
closer structurally than the previously listed scalar and generic
transmittal comparisons. It treats a four-dimensional massless Dirac field
on a symmetric codimension-one interface: the metric is continuous but can
fail to be smooth, the two extrinsic curvatures need not match, and the
spinor has continuous value with a jump condition on the sum of inward
normal derivatives. The Dirac-square matching coefficient is
`U=(K^+ + K^-)/2`, and the connection jump is specified explicitly. In the
reflection-symmetric case the authors fold the interface into boundary
problems; they state the spinor heat coefficients are twice those of the
folded conformal-spinor boundary problem. Their four-dimensional result
computes the integrated conformal anomaly from `a_4`, including cubic
extrinsic-curvature invariants and normal derivatives of the smearing
function.

This removes any broad novelty claim for paired/folded Dirac interface
conditions, symmetric-interface Dirac conformal anomalies, or the mere
presence of cubic extrinsic-curvature terms. It is not yet an exact match to
P1. Its interface problem is a massless symmetric Dirac transmission model
with a particular matching and trace-anomaly observable. P1's candidate
full-Weyl response varies a scalar congruence and mass on a declared paired
realization, and its conditional cubic and cubic-log terms occur at
`a_7` (`t^(3/2)`) and log-`a_8` (`t^2 log t`) orders, not the integrated
four-dimensional `a_4` anomaly computed there. No derivation identifies
P1's actual bundle, connection, physical density/contact/LLL allocation,
or common regulator with their folded heat trace. The `a_4` formulas must
not be cited as direct calculations of P1's higher-order coefficients.

Required follow-up before a novelty disposition: compare P1's full operator
vertices and trace normalization with the interface/folding conventions, and
determine whether any P1 coefficient is already a specialization of the
known interface heat coefficients. The finite-cut boundary and square match
is now established conditionally below. The source is close prior art and
materially raises the comparison bar; it does not itself establish P1's
higher-order mixed response or its physical common-regulator limit. This
source-level comparison is evidence-based but not an independent
rederivation of its heat-coefficient formulas.

### Boundary-jet normalization audit

The interface source's equations (4) and (14) do give a precise folded
boundary-jet comparison, conditional on identifying the two side bundles
and covariant derivatives at the interface. Set
`psi_e=(psi^+ + psi^-)/sqrt(2)` and
`psi_o=(psi^+ - psi^-)/sqrt(2)`. Continuity gives `psi_o|Sigma=0` and
`psi^+|Sigma=psi_e/sqrt(2)`. If the identified inward derivatives are folded
with the same copy map, the derivative-sum condition becomes

    nabla_n psi_e = (U/2) psi_e.

For the symmetric geometry of their Section 2, `K^+=K^-=K_int`, and the
spinor matching formula `U=(K^+ + K^-)/2` gives the Robin coefficient
magnitude `K_int/2`. Thus the folded value/normal-derivative data have the
same Dirichlet-plus-Robin structure and factor of two as P1's seed square
condition `Pi_- psi=0`, `Pi_+(nabla_n+K/2)psi=0`, subject to aligning which
normal is inward/outward and the sign convention for `K`. This is an explicit
structural match, not merely a dimension count.

The boundary comparison now has a sharper finite-cut scope. The pinned
source transition check establishes the global partner `J` for its stipulated
identical-copy bundle. The [finite-cut square
crosswalk](finite-cut-interface-square-crosswalk.md) matches the varying
Robin coefficient, including a nonzero normal jet, and the varying
tangential connection under reflection symmetry. With the pinned global `J`,
its fold and side-sign factorization establish equality of the positive
closed interface square and the density-transported P1 composition square,
including actual domains and trace multiplicity, at that smooth finite cut.
This does not identify the first-order P1 realization with the self-adjoint
interface Dirac or establish the moving endpoint or physical response.
Neither the four-dimensional `a4` anomaly formulas nor their folding
statement computes P1's proposed higher-order response or its physical
regulator limit.

### Screened order coverage

The primary transmittal source, Gilkey, Kirsten and Vassilevich,
[*Heat trace asymptotics with transmittal boundary conditions and quantum
brane-world scenario*](https://arxiv.org/abs/hep-th/0101105), Theorem 2.3
and Section 7, determines the singular-interface invariants through order
`a_4^Sigma`. Section 8 explicitly says a complete `a_5` calculation is
impractical there and gives a special reflection-symmetric `a_5` result
under matching assumptions on invariants through dimension four. The later
spinor interface paper uses the `a_4` trace-anomaly coefficient. The screened
transfer source, Gilkey, Kirsten and Vassilevich, [arXiv:hep-th/0208130](https://arxiv.org/abs/hep-th/0208130),
states that it computes the first
five terms for Laplace-type operators with transfer conditions. These are
substantial low-order interface and boundary-condition results; none of
these sources, in the text reviewed for this audit, supplies P1's candidate
full-Weyl `t^(3/2)` (`a_7`) or logarithmic `t^2 log(t)` term (log-`a_8`).

This order comparison does not prove that no other literature contains an
`a_7`-level specialization. The search is not exhaustive, and an exact
specialization of P1's operator and directions into the available invariant
bases remains unchecked. It establishes that the cited `a_4` anomaly and
the classic transmittal/transfer results through the stated orders do not by
themselves close or pre-empt the P1 higher-order coefficient claim.

### Fixed-cut geometric conformal-family crosswalk

There is an exact operator identity strengthening the fixed-cut comparison.
In dimension four set `E_b=e^(-b/2)`, `D_b=E_b D_g E_b`, and let
`W_b=e^(-2b)` be the unitary from `L^2(g)` to `L^2(g_b)` for
`g_b=e^(2b)g`. Under the canonical spinor identification, conformal
covariance gives

    W_b D_b W_b^(-1) = e^(-5b/2) D_g e^(3b/2) = D_(g_b).

Thus the smooth finite-cut full-Weyl family is the geometric massless Dirac
family for `g_b`, including its lower-order connection terms, not merely a
Laplace-type family with the same principal symbol. Its square and actual
composition domain transport unitarily as well. This is consistent with the
already recorded fixed-cut identity and the boundary term
`(K-b_n)/2` in [the mixed-square calculation](multiplier-square-boundary.md);
the conformal normal and mean-curvature conventions must be aligned when
expressing the transported Robin operator in `g_b`.

Under the pinned identical-copy bundle and global `J` hypotheses, the
[finite-cut square crosswalk](finite-cut-interface-square-crosswalk.md)
establishes the square-domain transmittal match and trace multiplicity.
Consequently P1's smooth finite-cut conformal *square* lies in the geometric
interface Laplace-type class treated by Gilkey--Kirsten--Vassilevich for that
conditional model. Their 2001 analysis explicitly applies a conformal
variation with a continuous parameter that need not be smooth across the
interface and determines the interface heat invariants through `a4`; their
2020 paper specializes the `a4` anomaly to a conformal spinor. Thus the
smooth fixed-cut `a4` coefficient is close conditional prior art. This
identification does not match the physical endpoint, source normalization,
mass-mixed vertices or common-regulator observable.

There is a first-order realization distinction that prevents a shortcut.
For P1, the source finite-cut operator has complementary adjoint domains and
is not self-adjoint: its Green form is the normal Clifford pairing, which
does not vanish on the allowed `Pi_+` trace space. The interface Dirac
realization instead has continuous spinor data across two sides, for which
the two oppositely oriented boundary Green terms cancel. A unitary
identification cannot equate these first-order closed operators. The
square-level comparison is now closed conditionally by the exact side-sign
factorization: the constructed interface square is unitarily equal to the
density-transported P1 composition square, with no additional trace
multiplier. This proves the square relationship directly rather than
inferring it from equality of the `D^*D` and `DD^*` spectra. The P1
first-order realization remains distinct from the self-adjoint interface
first-order realization.

### Angular-mass vertices under the four-dimensional conformal map

The mode-dependent angular-mass correction must be retained in the
coefficient comparison; it is not absent from the interface formulation.
Before mode reduction, the finite-cut operator is the four-dimensional
geometric Dirac family `D_(g_b)`. In the product-mode frame write
`D_(mu,b)=m_b(D+i mu G)m_b`, with `m_b=exp(-b/2)`. Its positive square
decomposes as

    Q_full,mu(b) = D_b^* D_b + mu^2 exp(-2b)
                   + i mu G [D_b,exp(-b)],

where `D_b=m_b D m_b`. Relative to the orbit-only square with the angular
mass frozen, the correction is
`Delta_mu(b)=mu^2(exp(-2b)-1)+i mu G[D_b,exp(-b)]`. Its seed jets are
`Delta_mu'[u]=-2 mu^2 u-i mu G c(du)` and
`Delta_mu''[u,w]=4 mu^2 uw+2i mu G c(d(uw))`; see
[`full-weyl-orbit-correction-vertices.md`](full-weyl-orbit-correction-vertices.md)
for their full mixed Duhamel response. The unitary conformal identity above
already includes these terms when the full four-dimensional operator is
kept. They must therefore be included when specializing an interface heat
coefficient; they are not a separate operator-equivalence obstruction for
the conditional finite-cut full-Dirac square.

This observation does not compute the mixed mass/log coefficient. The
screened spinor-interface anomaly is an `a4` result, whereas the candidate
fixed-product response is at `a7` and log-`a8` order. A higher-order
coefficient specialization, including the declared localized directions
and trace normalization, remains open. So do the physical moving endpoint,
source contact/density/LLL allocation and common-regulator limit.

The conditional finite-cut square identification still does not close P1.
Its hypotheses do not establish the source's moving endpoint; the published
interface formulas do not establish P1's common-regulator,
contact/density/LLL allocation, or source-observable map; and the screened
interface formulas do not supply P1's proposed `a7` or log-`a8` mixed
mass/log response. The exact higher-order coefficient specialization and
physical endpoint transfer remain open.

Remaining to-do list: specialize the interface coefficients at the first
relevant P1 order with localized directions and matched trace normalization;
close the physical source/common-regulator bridge; then complete the novelty
decision, supported manuscript and GCP Lean certification.

## Focused follow-up search (2026-10-31)

A further arXiv-focused screen used the combinations `Dirac operator heat kernel boundary metric perturbation rough coefficients`, `paired Dirac local boundary conditions heat trace perturbation response`, and `Dirac heat trace interface logarithmic metric variation`. The relevant results were already represented in the comparison above: the smooth mixed-boundary `a_5` heat-coefficient work, general smooth Dirac boundary-domain theory, and Lorentzian APS boundary perturbation criteria. No new source returned a direct match for the candidate's paired Euclidean scalar congruence with simultaneous mass/log mixed response, cubic/log seam class and common physical regulator.

This is a bounded search-engine screen with no validated completeness claim. It does not prove priority or novelty, and the same-source exact-specialization check for P1's full conformal square and higher-order response remains open. It does not change the current `undecided` disposition.

Concrete claim: this query set did not surface an additional direct-match source beyond the adjacent works already catalogued. First unsupported implication: an exhaustive theorem-specific literature comparison after freezing the final supported claim. Numerical role: none.

Remaining to-do list: freeze the supported P1 claim; complete source-level coefficient and hypothesis comparison against the closest interface/mixed-boundary work; then decide continue, narrow, merge or park before manuscript readiness and GCP Lean certification.

## Additional close prior art: metric-induced moving square domain and weighted response

A focused primary-source audit adds Kurkov and Vassilevich, [*Gravitational parity anomaly with and without boundaries*](https://arxiv.org/abs/1801.02049v3), JHEP 03 (2018) 072. In four dimensions, their Eqs. (4.1)–(4.5) impose a local bag projector and derive the complementary Robin condition for the self-adjoint Dirac square. Their Section 4.2 explicitly notes that a general metric variation changes both boundary conditions and therefore the trace space. Under their restricted variations preserving Gaussian boundary coordinates, the first projector remains fixed, while the second square condition varies. Equations (2.12) and (4.12) reduce the parity-anomaly variation to a weighted heat coefficient, `delta W_odd=-i sqrt(pi) a_3(delta D,D^2)`, evaluated in four dimensions through the connection variation of `a_5`. Appendix B addresses the varying eigenspaces and volume inner product.

This is close prior art for metric variation of a Dirac operator whose composed boundary domain changes, and for expressing that response with weighted heat coefficients. A novelty claim cannot rest on those steps alone. The source studies a parity-odd eta observable and first variation, assumes a fixed local bag projector and restricted smooth metric variations, and does not treat P1's paired first-order realization, scalar mass/log congruence, mixed second response, angular tower and LLL, rough seam, or common physical regulator. Its argument is a method-level precedent, not a proof of P1's response. The remaining comparison is exact matching of P1's paired domain, operator normalization, and mixed observable to this result's hypotheses and coefficients.

Concrete claim: the cited paper already varies a Dirac metric family with a changing second-order boundary condition and evaluates the anomaly variation using weighted heat coefficients under its stated restrictions. Ordinary argument: inspect Eqs. (2.12), (4.1)–(4.5), (4.12), and Appendix B of the versioned primary source. First unsupported implication: show whether the P1 paired first-order family and mixed scalar-congruence response reduce to any specialization of that framework; the differences listed above are not a proof of non-equivalence. Numerical role: none.

Remaining to-do list: make the exact paired-domain/observable comparison; close the full P1 source bridge and common-regulator estimate; finish the theorem-specific literature screen and S001 decision; certify supported claims on GCP.

### Conditional P1 operator-class overlap with the 2018 boundary variation

The P1-specific finite-cut notes sharpen the comparison. On a smooth compact
cut, the density unitary sends `E_b D_g E_b` to the geometric conformal Dirac
operator `D_(g_b)`, `g_b=e^(2b)g`, and its actual composition domain has
`Pi_- psi=0` plus a local Robin condition on `Pi_+`. In the original frame the
Robin coefficient is `(K-partial_n b)/2`; after density transport it is the
geometric `K_b/2` condition, including nonzero normal jets. These calculations
are detailed in
[`smooth-finite-cut-heat-prior-art-instantiation.md`](smooth-finite-cut-heat-prior-art-instantiation.md)
and [`finite-cut-interface-square-crosswalk.md`](finite-cut-interface-square-crosswalk.md).

Kurkov-Vassilevich's 4D square has the same abstract local mixed
Dirichlet/Robin form: their Eq. (4.1) imposes `Pi_-`, and Eqs. (4.4)-(4.5)
derive the complementary Robin condition with `S=-K/2`, after aligning the
normal convention. Thus their weighted-coefficient method is directly
relevant to P1's *smooth finite-cut operator class*, conditional on identifying
the projector bundles and first-order realizations. This does not identify
the spectral functionals: their computed variation is the parity-odd eta
anomaly, while P1's target includes the even heat-trace response, mixed
mass/log directions, angular tower and LLL, rough seam, and physical common
regulator. Nor does their restricted Gaussian-coordinate variation by itself
supply the uniform moving-cut family theorem. The overlap raises the novelty
bar for the smooth domain and heat-coefficient machinery; it does not settle
the distinct response claim.

Concrete claim: under the stated smooth finite-cut and bundle-identification
hypotheses, P1 and the 2018 source use the same local mixed Dirichlet/Robin
operator class after conformal density transport and normal-sign alignment.
Ordinary argument: combine the exact P1 conformal Dirac unitary identity and
Robin transport with the source's explicit bag-square condition. First
unsupported implication: verify the global projector/first-order realization
identification in the actual paired bundle, then compare P1's mixed
mass/log heat response to the source's eta variation and coefficient data.
Numerical role: none.

Remaining to-do list: verify the smooth bundle identification in the final
operator statement; close P1's physical source bridge and common-regulator
response; finish the novelty decision; certify supported claims on GCP.

## Additional adjacent prior art: chiral-bag heat coefficients

Esposito, Gilkey and Kirsten, [*Heat kernel coefficients for chiral bag
boundary conditions*](https://arxiv.org/abs/math/0510156), study smeared heat
traces for Dirac-type operators with chiral-bag conditions. Their abstract
states that they determine the boundary contributions to `a_1` and `a_2`;
their Remark 2.3 identifies the zero bag-angle case with standard mixed
boundary conditions. This is direct background for low-order local
coefficient methods and the mixed boundary class at a smooth fixed cut.

The paper does not derive P1's simultaneous mass/log mixed Hessian, the
full-Weyl angular tower, rough cubic/log seam coefficients, or the physical
common-regulator source map. It therefore narrows any claim of novelty for
the mixed projector or low heat coefficients, while leaving the intended
higher-order response question open. The exact coefficient and observable
comparison remains conditional on the final P1 operator and trace
normalization.

Concrete claim: the cited work treats smeared Dirac-type heat traces and
reports boundary `a_1,a_2` coefficients; at zero bag angle its boundary
condition is mixed. Ordinary argument: use the paper's abstract and
Remark 2.3. First unsupported implication: compare higher-order mixed
mass/log coefficients and the physical P1 regulator. Numerical role: none.

Remaining to-do list: finish the P1 source/common-regulator bridge, complete
the higher-order and theorem-specific prior-art comparison, decide S001,
and certify the supported scope on GCP.

## Additional adjacent prior art: eta-invariant variations for local boundary conditions

Ivanov and Vassilevich, [*Anomaly inflow for local boundary conditions*](https://arxiv.org/abs/2208.00476v2), JHEP 09 (2022) 250, study the eta-invariant of Dirac operators on compact manifolds with local boundary conditions using heat-kernel methods. They require strong ellipticity, give the heat-trace coefficient expansion for smooth local projectors, relate the eta variation to heat coefficients, and treat metric variation through the corresponding higher heat coefficient. Their analysis includes Euclidean and complexified chiral-bag conditions and local boundary conditions in odd dimensions.

This is adjacent prior art for local Dirac projectors, heat-kernel anomaly methods, and metric-dependent spectral invariants. Its strong-ellipticity hypothesis supports the local heat-trace expansion and eta-variation formulas used there; those coefficient statements are not pointwise Gaussian kernel bounds or a bilocal estimate for the difference of two complementary-domain semigroups. It therefore supplies no proof of P1's required bilocal mixed-boundary input. The paper also does not compute the paired full-Weyl mixed mass/log Hessian, the angular-mass tower and LLL allocation, rough cubic/log seam terms, or the physical finite-cut/conformal-infinity common-regulator response. It narrows novelty claims based on the general boundary-anomaly method while leaving P1's specific response and physical bridge untested. Compare the final P1 boundary projector and ellipticity hypotheses explicitly before making a novelty decision.

Concrete claim: the cited work establishes eta/heat-kernel anomaly results for strongly elliptic local Dirac boundary problems and discusses metric variations. First unsupported implication: determine whether any specialization matches P1's paired second response after the operator, projector, normalization, and regulator are fixed. Numerical role: none. Lean role: none.

Remaining to-do list: match the final P1 operator and observable against this local-boundary eta framework; close the physical common-regulator response; complete the theorem-specific novelty decision; certify supported claims on GCP.

## Additional close prior art: Dirac heat coefficients under metric variation

Gilkey and Kirsten, [*Heat asymptotics with spectral boundary conditions II*](https://arxiv.org/abs/math-ph/0007015), published in *Proceedings of the Royal Society of Edinburgh A* 133 (2003), 333–361, determine the local Dirac heat coefficient `a_3` for compact smooth manifolds with spectral boundary conditions. Their boundary projection is the pseudodifferential projection onto the nonnegative spectrum of a tangential Dirac operator (arXiv version, Sec. 1). In the metric-variation argument (Eqs. (15)–(18)), they vary a Dirac operator while adjusting the tangential boundary data so the spectral boundary condition remains fixed, derive the heat-trace variation, and extract a second variation of `a_3`.

This is closer method prior art than a static heat-coefficient table: metric variation, a varying Dirac square, boundary-domain bookkeeping and a second variation of a heat coefficient are all present. Its scope remains distinct from P1's local paired projector and complementary first-order realization, simultaneous mass/log mixed Hessian, angular mass tower and chiral LLL allocation, rough cubic/log seam class, and physical common-regulator observable. The result therefore rules out a novelty claim based only on computing a Dirac heat coefficient or differentiating a heat trace with boundary data. It does not settle whether the complete P1 response is a specialization or a distinct theorem; that comparison requires the final P1 operator, projector, observable and normalization on one Hilbert space.

Concrete claim: this source derives the stated first metric variation and a second variation of the smooth spectral-boundary `a_3` coefficient. Ordinary argument: compare its Section 1 boundary projection and Eqs. (15)–(18) with the P1 local paired domain and mixed response. First unsupported implication: prove or rule out a specialization of the final P1 response, including the source conversion and common regulator. Numerical role: none. Lean role: none.

Remaining to-do list: compare the final P1 operator and observable against this variation framework; close the physical common-regulator response; finish the theorem-specific novelty decision; certify supported claims on GCP.

## Additional prior art: finite-temperature determinants for local Dirac boundaries

Beneventano and Santangelo, [*Finite temperature properties of the Dirac operator under local boundary conditions*](https://arxiv.org/abs/hep-th/0404115v2), J. Phys. A 37 (2004), 9261–9274, study a free two-dimensional Euclidean Dirac operator on a one-dimensional spatial segment with antiperiodic thermal time and local self-adjoint boundary conditions. Section 3, Eqs. (3.3), (3.6), and (3.9)–(3.11), gives the boundary projectors, thermal frequencies, and spectra for two boundary choices; Sections 4–5 use those spectra for zeta-regularized free energy and fermion number, including a separate nonsymmetric boundary-spectrum contribution.

This is prior art for finite-temperature determinant calculations with local Dirac boundary data and spectral-asymmetry bookkeeping. It is not P1's problem: the source is a free 1+1D segment, not a curved paired first-order realization in four dimensions; it does not derive a mixed mass/log metric Hessian, an angular tower with a chiral LLL allocation, a rough seam remainder, or a common physical regulator. The comparison rules out novelty based only on thermal summation, zeta regularization, local boundary conditions, or isolating an asymmetric boundary spectrum. The final P1 theorem still needs direct comparison of its operator and complete observable against this model.

Concrete claim: the source computes finite-temperature spectra and the associated zeta-regularized determinant/free-energy data for its two local self-adjoint boundary conditions. Ordinary argument: inspect Section 3's spectrum and Sections 4–5's determinant and fermion-number calculations. First unsupported implication: determine whether the final P1 paired response specializes to or extends this boundary determinant framework after matching the boundary realization and observable. Numerical role: none. Lean role: none.

Remaining to-do list: compare the final P1 operator and complete mixed observable against this precedent; close the physical common-regulator response; finish the theorem-specific novelty decision; certify supported claims on GCP.

## Theorem-level scope check: finite-regularity and interface expansions

The source-level comparison for the rough-heat claim is now pinned to the
versioned statements. Smith, [*On the trace of Schrödinger heat kernels and
regularity of potentials*](https://arxiv.org/abs/1809.05614v1), Theorem 1.1,
assumes a real-valued bounded compactly supported scalar potential on a
complete Riemannian manifold with Ricci curvature bounded below. For
dimension `n >= 4`, it also assumes the local trace-class estimate (1.2).
For integer `m >= 0`, it proves the equivalence between `V in H^m` and the
specified relative heat-trace expansion with a bounded remainder; the
regularity-to-expansion direction has a continuous normalized remainder at
`t=0`. This is substantive finite-regularity trace prior art. It is not the
P1 theorem: P1 varies a Dirac square's principal symbol and its composed
mixed boundary realization, and asks for a differentiated, source-subtracted
response. Neither distinction alone establishes novelty. The missing
comparison is an ordinary estimate for the P1 matrix, boundary, and
common-regulator terms in the same remainder topology.

For interfaces, Gilkey, Kirsten and Vassilevich's [transfer paper,
arXiv:hep-th/0208130v1](https://arxiv.org/abs/hep-th/0208130v1), Eq. (1.1)
and Theorem 1.2, treats compact smooth Laplace-type problems with finite
matrix Robin/impedance conditions on the full pair of boundary values and
computes the first five heat-trace coefficients. Their formal transmittal
limit imposes equality of the two side values and a sum-of-inward-normal-
derivatives condition. The separate [transmittal paper,
arXiv:hep-th/0101105v1](https://arxiv.org/abs/hep-th/0101105v1), Theorem 2.3
and Section 7, determines interface invariants through `a_4`; Section 8
gives only a restricted reflection-symmetric `a_5` case. P1's square has a
mixed Dirichlet/Robin trace condition, so a general claim that this boundary
structure is new is untenable. The conditional fixed-cut crosswalk already
identifies its square with an interface Laplace-type class under the pinned
bundle and partner hypotheses. That overlap makes the smooth low-order
coefficient machinery prior art. It does not compute P1's full-Weyl mixed
mass/log Hessian, rough seam terms, LLL/local allocation, or physical
common-regulator endpoint.

The resulting novelty boundary is therefore narrower and remains
conditional: any distinct contribution must be stated as the complete
paired-domain mixed response or a proved rough/source-uniform extension,
with explicit coefficients and transfer hypotheses. Current evidence has
not established either distinction as a theorem and does not support a final
novelty verdict.

Concrete claim: the named prior sources establish the finite-regularity
scalar relative-trace equivalence and the stated low-order transfer/transmittal
heat expansions. Ordinary argument: compare their theorem hypotheses and
boundary data to the P1 composition-square crosswalk and response contract.
First unsupported implication: derive the P1 mixed response and remainder
under the same physical regulator, then show it is not already a specialization
of the cited invariant frameworks. Numerical role: none. Lean role: none.

Remaining to-do list: complete the full common-regulator response proof and
source-level coefficient match; screen any further theorem-specific prior
art at the final claim scope; record the S001 decision; certify the supported
formalizable statements on GCP.
