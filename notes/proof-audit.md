# Paper 1 proof audit: working disposition

This is the S001.2 working audit, assessed against [the claim ledger](claim-dependencies.md) and the frozen source at f0eab590. It is not a completed audit, research decision, manuscript or certificate. “Conditional argument” means the linked ordinary argument is available under its stated inputs; it does not certify those inputs in the physical geometry. No independent review is represented here.

| Proposed dependency | Evidence and current disposition | First unresolved obligation |
| --- | --- | --- |
| Seed first-order domains and adjoint | The [finite-cut domain instantiation](source-finite-cut-domain-instantiation.md) applies Bär--Ballmann's local D-elliptic boundary, adjoint, regularity and core results to the pinned smooth source model; [multiplier domains](paired-multiplier-domains.md) treats congruence on those domains. | This closes the compact smooth seed at the stated source assumptions. Match those hypotheses to the rough multiplier family and physical endpoint; finite-cut regularity supplies no uniform limit constants. |
| Finite-cut versus infinity condition | `finite-cut-boundary-transport.md` gives an explicit zero-energy mismatch and quantifies it: the direct-sum projector distance is `1/sqrt(2)` at every positive collar width. It also gives the exact constant-collar Euclidean-frequency transfer, whose distance has the same high-frequency limit, and proves the scalar heat-weighted sphere sum bound `M(t,A)<=min(Theta(t)/sqrt(2), A sqrt(Theta(t)(-Theta'(t))))`. `transported-projector-angular-nonuniformity.md` shows fixed-mode/strong but not full L2 operator-norm convergence. `finite-cut-spectral-transport.md` proves a variable-coefficient modewise projector bound for complex spectral parameter, with angular Sobolev and heat-smoothed consequences; `heat-smoothed-boundary-transport.md` gives linear operator and Schatten bounds with explicit coupled collar/smoothing scales. `changing-cut-resolvent-comparison.md` compares separated resolvents with the same local projector at their respective endpoints. `compactified-infinity-local-cut-limit.md` gives an all-mode positive-lower-cutoff mixed-heat comparison under explicit compactification, bundle/projector, unitary-pullback, H1 and matched-multiplier hypotheses. | These estimates now control the separated variable-coefficient boundary projection, including angularly smoothed operator/Schatten norms, but not the interior Poisson map composed with the actual transported physical boundary data, a full resolvent trace, or the mixed heat response. The conditional comparisons do not identify the compactified product-frame heat response with the physical canonical Lorentzian observable. Separately, the frozen source supplies a geometric-versus-variable-mass Euclidean cutoff identity and common-regulator first-two-jet conversion for an orbit-only fixed-angular family; see the [source crosswalk](source-conversion-response-crosswalk.md). The GCP mode real-mass receipts certify that orbit-only square algebra under abstract hypotheses. They do not identify it with P1's full four-dimensional Weyl congruence, which varies angular mass and produces additional commutator/second vertices. Keep finite-cut local projectors distinct from transported infinity data. |
| Partner involution | [Magnetic matching](global-magnetic-partner-matching.md) checks the recorded static ansatz conditionally. The [paired transition check](source-paired-bundle-transition-check.md) derives J's overlap algebra under the source-stipulated common pullback. The [finite-cut domain instantiation](source-finite-cut-domain-instantiation.md) combines it with the maximal H¹ projector realization to derive the closed partner identity. | This closes the compact smooth finite-cut partner theorem under the pinned model data. Its extension through the rough multiplier family and to the limiting physical endpoint remains open. |
| Congruence and graph estimates | [Multiplier domains](paired-multiplier-domains.md) gives an ordinary conditional argument. The earlier [source-only GCP receipt](../evidence/gcp-graphbounds-b487ca9-olddeps/README.md) has environment caveats. The [clean graph replay](../evidence/gcp-graph-clean-20261030/README.md) checks the abstract graph bounds, and the [scalar-constant replay](../evidence/gcp-scalar-multiplier-graph-clean-20261030/README.md) assembles the exact `e^B` constants under explicit norm and commutator assumptions, with no `sorryAx`. | Prove the scalar multiplier and commutator bounds on the actual paired realization, including the physical first-order domains; the abstract Lean conclusions do not establish these inputs. |
| Mode square and geometric chirality | [GCP receipt](../evidence/gcp-mode-square-operator-b7fed22/README.md) checks the actual partially defined mode square, including domain and action, under explicit abstract hypotheses. [Orbit chirality bridge](orbit-chirality-domain-bridge.md) derives the mapping and intertwining hypotheses for the oriented product model from compatible connection, complementary H1 projector domains and a chirality-odd zero-order term. | Verify the physical bundle, product separation and actual complementary realization; the geometric bridge and global direct-sum assertion are not Lean-certified. |
| Square and resolvent | [Square criterion](square-domain-boundary-criterion.md), [square resolvent](paired-square-resolvent.md) and [constant audit](resolvent-variation-constants.md) distinguish composition domains and parameter bounds. The pinned source's collar bounds through five derivatives give bounded `b'`,`b''` and zero outer normal trace; with its fixed regular atlas/interior/disk bounds, the criterion applies on the source-prescribed fixed realization (see [multiplier instantiation](paired-multiplier-domains.md)). | The global atlas and source-domain hypotheses still require verification for the admitted family. The conclusion excludes artificial positive cuts and any different physical weighted-L2 realization at conformal infinity; it supplies no heat-trace or common-regulator estimate. A W1,infinity multiplier alone does not justify equal square domains. |
| Original collar approximation | [Weighted cutoff](weighted-remainder-cutoff.md), [H4 approximation](original-collar-h4-approximation.md) and [flat limit](flat-weighted-collar-cutoff-limit.md) cover the original weighted remainder under stated exterior assumptions. | Extend the needed convergence to the physical curved trace and full common regulator. The [counterexample](collar-fifth-derivative-counterexample.md) rules out inferring W5,1 from the original bounds. |
| Tangent multiplier and boundary terms | [Flat multiplier](flat-tangent-multiplier.md), [coefficients](flat-boundary-coefficients.md) and [contact](flat-product-contact.md) give ordinary flat-model arguments. [Fiber normalization](flat-orbit-fiber-normalization.md), [source conversion](tangent-regulator-normalization.md) and the detailed [P1-C source normalization audit](p1c-source-normalization-audit.md) reconcile the per-exterior `H_2/2` factor, sphere signs, separate LLL, partner average, `2 Theta' I_t` contact, fixed period and external action factor under their stated hypotheses. [Cubic-jet boundary Hessian](cubic-jet-weyl-boundary-hessian.md) proves O(epsilon^3 log^2 epsilon) decay of the total local finite-cut Weyl boundary term for the source-matched fixed-seed Weyl directions. | These steps settle the flat-model factor bookkeeping and one local boundary term under explicit hypotheses. The source crosswalk adds a common-regulator seed-jet conversion for its own geometric and variable-mass endpoints. Match those endpoints to the complete P1-C observable; then establish any curved-to-tangent transfer required by the final claim. A logarithmic coefficient still requires stronger jet/tail assumptions than the original weight alone. |
| Curved family trace | [Claim ledger P1-D](claim-dependencies.md) records the proposed estimate. Section 5 at `f0eab590` defines `r_curved` verbally and refers to tangent term (11) in Section 4, supporting that flat diagnostic as the working candidate; it still does not specify the localization, cutoff transitions or sector allocation term by term. The separate [fixed-time physical response assembly](physical-fixed-time-mixed-response-assembly.md) records the ordered terms, all four mixed second-form-vertex terms, and fixed-cut angular-block differentiation under common smooth-cut, form-Duhamel and trace-norm hypotheses; it yields a positive-time relative response, not a short-time estimate. | First freeze an operational `r_curved` formula on one Hilbert space and regulator, including localization maps, cutoff transitions, density/contact/LLL/restoration allocation and normalization. The fixed-product audit establishes a Gaussian bound for the pinned compactified orbit square and an O_R(t^(3/2)) odd-odd contribution when both insertions lie in a fixed R sqrt(t) window; this does not control the non-hit region or identify its local coefficient with the source subtraction. The fixed-time physical assembly does not give a bound uniform as t tends to zero, a moving-cut estimate, or a common-regulator source identity. Close the complete curved response, including all vertices, thermal/angular sums and physical moving-cut transfer under the common regulator. Neither the operational definition nor that transfer follows from norm-resolvent or flat estimates alone. |
| Closest prior art | [Transfer/transmittal comparison](transfer-transmittal-comparison.md), [finite regularity](finite-regularity-prior-art.md) and [jump comparison](prior-art-derivative-jumps.md) identify substantial overlap and hypothesis differences. Herzog–Huang–Vassilevich, [*Interface Conformal Anomalies*](prior-art-comparison.md#close-structural-prior-art-symmetric-dirac-interfaces), is close prior art for folded/symmetric Dirac interface domains and the 4D `a4` anomaly, including cubic extrinsic-curvature terms. Ivanov–Vassilevich's [local-boundary eta-invariant analysis](prior-art-comparison.md#additional-adjacent-prior-art-eta-invariant-variations-for-local-boundary-conditions) adds adjacent precedent for strongly elliptic local projectors and metric-dependent eta variation. The [published-version check](scalar-jump-normalization-audit.md) confirms the APS bibliographic record, but its equation text is paywalled; the arXiv v2 factor discrepancy remains an open scalar benchmark issue. | The [exact one-interface benchmark](scalar-jump-exact-benchmark.md) independently checks the full-frequency scalar coefficient and gives an O(t^3) remainder. The fixed-cut physical operator note rules out direct substitution into the scalar-potential jump theorem because the P1 square has a varying principal symbol; full transformed-vertex coefficient matching remains open. The interface anomaly computes `a4`, while the eta-invariant paper studies a different spectral functional; neither comparison has been specialized to P1's even paired mixed mass/log response or physical regulator. The final-projector comparison, full response and normalization remain unresolved. No novelty verdict follows. |

## Reconciliation of the later physical and formal work

The fixed-cut [congruence bridge](physical-product-congruence-cutoff-bridge.md)
now gives an exact interpolation identity between the regulated positive
squares on a common Hilbert space. It retains both partner heat traces and
both proper-time endpoints. The identity requires domain preservation and
trace-class/cyclicity hypotheses; it does not equate the endpoint actions,
remove either regulator, or provide the mixed mass/log derivative. If the
conformal ratio moves with the fields, the four-term moving-insertion
derivative is now explicit in
[the mixed bridge note](physical-product-mixed-cutoff-bridge.md), together
with the derivatives of both partner heat families. All local terms must
also be retained. This is a precise comparison target, not the physical
source bridge.

The full-Weyl flat tangent package now includes the exact angular mode
vertices, positive-time tower sum, and an all-frequency small-time local
subtraction in [`full-weyl-angular-local-subtraction.md`](full-weyl-angular-local-subtraction.md).
[`full-weyl-angular-seam-coefficients.md`](full-weyl-angular-seam-coefficients.md)
then derives conditional cubic and cubic-log coefficients for the leading
fixed-product tower kernel under explicit Fourier-tail and half-folding
hypotheses. GCP receipts through fourth polynomial order are indexed in
[`gcp-full-weyl-angular-jet4-20261030`](../evidence/gcp-full-weyl-angular-jet4-20261030/README.md).
These advances strengthen the fixed-product tangent calculation only. The
exact algebraic difference between its full-Weyl cubic coefficient and the
leading angular-weighted orbit-only coefficient is checked in
[`gcp-full-weyl-seam-comparison-20261031`](../evidence/gcp-full-weyl-seam-comparison-20261031/README.md).
A later Taylor/Fourier audit found a factor-of-two error in that receipt's
stipulated full-Weyl log coefficient: the corrected conditional full-Weyl
coefficient is `-2 b^2/(35 pi)`, versus orbit-only `-b^2/(35 pi)`. The old
receipt proves ring algebra for the values supplied, not the corrected
comparison; the corrected Lean source awaits a GCP replay. The receipt uses
reused dependencies with local-change warnings and certifies coefficient
algebra only. The
operator gap in [`physical-product-contact-operator-gap.md`](physical-product-contact-operator-gap.md)
shows why the product-frame kernel cannot be inserted directly as the
physical observable: the transported physical square has a different
principal symbol when the conformal factor varies. No transfer identity
bridging that difference is established here. The physical paired-domain
match, curved mixed-boundary remainder, source contact/density/LLL transfer,
common regulator, and P1-C claim remain open.

The following entries record the scope of later work alongside the original
audit. They do not close the paper's source, novelty or certification gates.

### Corrected canonical Euclidean operator and cut-model scope

The unitary half-density calculation in
[`euclidean-canonical-unitary-half-density.md`](euclidean-canonical-unitary-half-density.md)
identifies the fixed-product thermal operator as
`P_sym=sqrt(f)(H_mu+i nu)sqrt(f)=f(H_mu+i nu)-(i/2)sigma_2 f'`.
The earlier left-lapse expression `P_left=f(H_mu+i nu)` is generally a
different operator. Consequently, the `P_left` collar and resolvent estimates
remain valid for their declared model but cannot be transferred to the
physical Euclidean square by notation or coordinate change alone.

For the corrected expression, the ordinary notes
[`symmetric-lapse-square-domain-traces.md`](symmetric-lapse-square-domain-traces.md)
and [`symmetric-lapse-localized-joint-cut-limit.md`](symmetric-lapse-localized-joint-cut-limit.md)
give local composition-domain flux traces and a localized joint cut, angular,
thermal and mass-regulator estimate under explicit product-model domain,
coefficient, collar-support and local-projector assumptions. The latter
controls a baseline localized square-resolvent difference, including the
removed-collar term; it does not differentiate the family in the mass/log
directions. The first unsupported implication is still the match from these
local-projector model domains to the source's global spin/copy bundle,
regular bolt and conformal-infinity data, followed by the complete mixed
response vertices and physical common regulator. Numerical role: none for
these operator-domain and conditional estimates. The estimates are not Lean
certificates.

Further full-Weyl model estimates sharpen the analytic status without closing
that implication. [`full-weyl-mixed-response-angular-tail.md`](full-weyl-mixed-response-angular-tail.md)
controls the whole mixed heat derivative's angular tail on a fixed compact
product at each fixed positive time under common holomorphic-form and graph
hypotheses. [`full-weyl-localized-heat-tower-bound.md`](full-weyl-localized-heat-tower-bound.md)
gives a conditional localized cut comparison after angular and thermal
summation for the unvaried square with a fixed scalar insertion. The exact
full-Weyl correction vertices and their flat product-tangent cross kernel are
also recorded. The conditional
[`opposite-sign cancellation lemma`](full-weyl-opposite-sign-cross-cancellation.md)
removes the odd-gradient pieces from orbit-angular cross terms when the two
massive signs have the same orbit action, vertices, domains and trace density.
For the pinned compactified conformal-boundary product realization, the
source records this common separation, an angular-independent projector, and
equal positive/negative massive multiplicities, so the lemma applies under
those product identifications. It does not prescribe the same domain at
arbitrary finite radial cuts.
The even scalar `mu^2` cross terms and even odd-odd angular products remain.
The scalar sector now has an exact conditional curved collar representation:
[`full-weyl-curved-scalar-tower-formula.md`](full-weyl-curved-scalar-tower-formula.md)
replaces the external `Theta(t)` by the path-dependent `Theta(t S_b)` in the
parent Brownian bridge formula for `L_b+mu^2 exp(-2b)`, retaining the full
massive tower and thermal images. This does not include the commutator
operator `mu C_b`; its odd-odd contribution still needs a matrix-insertion
estimate. No subtracted derivative bound follows from the representation.
These results do not provide the curved, localized, small-time
subtracted orbit-angular cross estimate under the same regulator that is
needed to transfer the parent curved remainder to P1; density/contact,
boundary-transgression, thermal-image, LLL/anomaly and source-observable
matching remain separate terms. That cross estimate and the physical map are
the current first unsupported response obligations. No numerical role or
Lean certification is claimed for these conditional analytic results.

The fixed-product pure angular part is no longer wholly open: the ordinary
[`angular-vertex-heat-majorant.md`](angular-vertex-heat-majorant.md) bounds
the second angular vertex and the two angular-angular ordered terms, sums the
massive tower absolutely at each positive time, and gives only a crude
`O(t^(-2))` compact-orbit bound before subtraction. The correction-vertex
note adds relative-form bounds uniform in angular mass (technical commit
`e9bc9fa`). The correction-vertex note further isolates the exact flat
product-tangent orbit-angular cross multiplier and its conditional cubic/log
seam coefficients. Curved localization, the physical density/contact/LLL
transfer and the common-regulator subtraction remain open. Neither
fixed-product result supplies P1-C or P1-D.

| Dependency | Later evidence | What remains unproved |
| --- | --- | --- |
| Partner square domain | The [finite-cut domain instantiation](source-finite-cut-domain-instantiation.md) gives the ordinary compact-smooth partner proof. The [GCP partner-domain receipt](../evidence/gcp-partner-square-domain-20261030/README.md) checks the abstract composition-domain equivalence from an assumed adjoint-domain characterization. The [clean paired skew-operator receipt](../evidence/gcp-partner-skew-operator-clean-20261030/README.md) checks the operator equality under explicit partner domain/action assumptions, and the [clean mass-resolvent receipt](../evidence/gcp-mass-skew-resolvent-clean-20261030/README.md) certifies the positive mass bijection and estimate from skew-adjointness. | The source-to-L2 realization bridge is an ordinary imported-elliptic argument, not Lean-formalized. Rough-family/endpoint extension and complete response remain open. The abstract receipts do not establish trace response or whole-paper certification. |
| Fixed-time physical response | [Assembly](physical-fixed-time-mixed-response-assembly.md) combines ordered and mixed second-vertex convergence under explicit finite-cut geometry, form-Duhamel, heat and trace assumptions. The [finite-cut transport identity](physical-product-contact-operator-gap.md) shows that, when the actual finite-cut domains match under the unitary map, the physical square heat trace equals that of its full-Weyl transported operator at the same proper time. | This captures the physical volume density for the matched finite-cut realization. The source at conformal infinity does not by itself prescribe the domain at an arbitrary finite radial cutoff; the [collar transport test](finite-cut-boundary-transport.md) exhibits the mismatch. Canonical source normalization, endpoint conversion and common-regulator limit remain open. |
| Cutoff and locality | [Smooth weighted path](smooth-physical-cutoff-joint-path.md) constructs field-dependent radial approximants. [Auxiliary RN cut instantiation](rn-spherical-auxiliary-cut-family-instantiation.md) now combines the matched projector domains, uniform graph route and scalar Davies form estimate for the explicitly imposed concentric spherical-cut family. [Interior response locality](physical-cut-interior-response-locality.md) assembles both ordered terms and the mixed second vertex under the remaining H3/H5 and trace hypotheses; [the endpoint estimate](physical-cut-tail-locality-reduction.md) handles the proper-time endpoint along a power path. | This establishes cut-to-complete locality only for the auxiliary family under the remaining mixed-regularity and trace inputs. It does not identify its regulated trace with the source's canonical conformal-infinity observable or prove the common-regulator finite part. |
| Curved trace claim | [Observable distinction](p1d-response-versus-conversion.md) fixes the difference between the P1-D proper-time integrand and the endpoint conversion. The parent `current-curved-paired-heat-bridge.md` at commit `08cb71a` supplies a uniform `t^(3/2)` subtracted curved-response remainder and common-regulator removal for its admitted orbit-sector family; the [P1 scope crosswalk](parent-curved-heat-bridge-p1-crosswalk.md) compares its exact orbit collar formula with P1. The [full-Weyl/orbit vertex note](full-weyl-orbit-correction-vertices.md) gives the exact angular-mass and commutator vertices. Its fixed-cut form argument proves shifted coercivity and constructs a common-domain holomorphic sectorial family, then derives the positive-time mixed angular-tower bound by Schatten smoothing and Cauchy's formula. The [mode-domain note](full-weyl-mode-form-domain.md) derives direct-sum form domains under product/projector assumptions, satisfied for the compactified conformal-boundary realization in the pinned source. | The fixed-cut, positive-time mixed tower interchange is proved for that compactified realization and for finite-cut models with the matched projector imposed. The source does not give the induced boundary condition at an arbitrary finite radial cutoff; the [collar transport test](finite-cut-boundary-transport.md) shows why. Small-time subtraction, moving-cut uniformity, and the common-regulator source-observable bridge remain open. P1-D remains open until this P1-specific correction is controlled. |
| Novelty and review | [Prior-art comparison](prior-art-comparison.md) includes smooth mixed-boundary Dirac anomaly results, APS perturbations, logarithmic heat traces, finite-regularity estimates, the AdS Dirac endpoint/state result, the screened 2025 higher-derivative scalar boundary-anomaly result, and Kurkov-Vassilevich 2018 on metric variation with a changing Dirac-square boundary condition via weighted heat coefficients. | No final novelty disposition or independent proof review has been recorded. The close scalar normalization discrepancy and exact transformed-Dirac comparison remain unresolved; the newly identified metric-variation precedent further narrows any P1 novelty claim to a proved difference in paired realization, mixed scalar-congruence response, rough/log family, or common-regulator result. |

In particular, conditional finite-cut or physical-space results may support a
paper proof only after their explicit assumptions are matched to the final
operator and observable. They cannot be collected into a claim of full
physical response or formal certification merely by summing the notes.
The numerical role is limited to checking stated analytic constants and reproducibility where receipts exist. Neither a numerical bound nor an abstract Lean lemma replaces the missing ordinary physical argument. A narrower finite-cut theorem may eventually be defensible, but the story requires a supported continue/narrow/merge/park decision; this document does not make one by default or remove the physical-response work from the objective.

Remaining to-do list: disposition the physical geometry and trace dependencies with evidence; complete the prior-art comparison and research decision; prepare and review the supported manuscript; certify its claimed results in Lean on GCP.

## Fixed-flat commutator coefficient update (2026-10-31 HST)

The direct flat sign-paired commutator calculation is now in [`full-weyl-curved-scalar-interior-leading-coefficient.md`](full-weyl-curved-scalar-interior-leading-coefficient.md) at technical commit `606954c` (with sector wording clarified at `be33062`). In the fixed product model, the mixed gradient vertex has zero rank-two fiber trace; orbit-gradient cross insertions are odd in the angular mass and cancel under the equal-sign-pair hypotheses. The surviving gradient-gradient ordered pair has tower multiplier `(t k^2/(2 pi)) A(t k^2)[-Theta'(t)]`. Since `-Theta'(t)~C/t^2` and `A(0)=1`, its doubled-trace coefficient is `+C/(2 pi) U_1/t`; the conditional physical-half coefficient is `+b_s^2/(2 pi) U_1/t` when `C=2 b_s^2`. The Fourier pairing is `conjugate(uhat) what` (technical commit `606954c`).

This closes the direct flat coefficient calculation, not the curved commutator estimate. The surviving odd-odd term is reducible to scalar-gradient insertions against the conjugated heat semigroup `Q_X`; at the pinned cut its form domain is complementary to that of `Q`, so a same-domain bounded-potential Duhamel comparison is unavailable. A curved estimate must handle this mixed-boundary heat kernel, its boundary map/transgression, trace ideals and angular sum under the same regulator, or localize away from the boundary and recover the omitted contribution separately. The scalar bridge, finite-cut domain result, and flat coefficient do not prove that bound or the physical source-observable endpoint. No Lean certification is claimed for this analytic calculation.

Concrete claim: the fixed-flat sign-paired coefficient follows directly from the gradient-gradient Duhamel term. First unsupported implication: a curved mixed-boundary odd-odd estimate and its common-regulator physical transfer. Numerical role: none.

Remaining to-do list: establish the curved commutator and full physical source-observable bound; match contact, density, boundary, LLL and local restorations under one regulator; complete the prior-art decision and manuscript; certify supported claims on GCP.

## Conditional boundary-layer scale for the curved odd-odd pair

The initial same-coordinate version `C t^(-1) integral exp(-y^2/(ct)) |u'w'| dy` in [`full-weyl-commutator-joint-hit-bound.md`](full-weyl-commutator-joint-hit-bound.md) is withdrawn because the Duhamel word evaluates its multipliers at distinct normal points. The corrected bilocal input and conditional `O(t^(3/2))` power count are recorded in the correction section below. The actual mixed-boundary estimate, non-hit local subtraction, physical source terms and common-regulator limit remain open. It is not a physical admission margin and has no Lean certification.

Concrete claim: the corrected bilocal Gaussian input implies the conditional boundary-layer power by its normalized second moment and tower counting. First unsupported implication: prove that input for the actual complementary-domain heat product and integrate it into the full physical response. Numerical role: none.

Remaining to-do list: prove the mixed-boundary trace input; close non-hit subtraction, physical density/contact/boundary/LLL terms and common regulator; finish novelty/manuscript; certify supported claims on GCP.

## Curved scalar/contact identity update (2026-10-31 HST)

Technical commit `1e3b60c` derives the exact local source-jet identity for
the smooth-interior scalar `K_2+H_1` coefficient. Its total derivatives have
zero integrated flux under the stated seam jets and compact direction
localization. Using `R=2f''/f-4(f'/f)^2` and `dmu=dy/f`, the integrated
coefficient is `-6 integral (Ruw/6+u'w'/3) dmu`. Under the conditional
physical-half normalization, the scalar coefficient is `-3` times the
source-contact coefficient; hence the scalar/contact pair in `D_scalar-C_src`
is `-4` times that contact coefficient and does not cancel by itself.

This closes only the smooth-interior scalar comparison. It does not match the
curved commutator, orbit, density, boundary transgression, LLL, local
restoration, moving-cut endpoint, or common-regulator contributions. The
immediately relevant curved boundary-layer estimate remains conditional on
the mixed `Q`/`Q_X` trace input (1) in
[`full-weyl-commutator-joint-hit-bound.md`](full-weyl-commutator-joint-hit-bound.md).
The adjacent mixed Dirichlet/Neumann Gaussian-kernel theory is screened in
that note as a possible source of individual-kernel bounds; its scalar form
domains do not establish the paired complementary-projector defect input.

Concrete claim: the integrated smooth-interior scalar coefficient equals
minus six times the specified source contact form. Ordinary argument: expand
the exact local formula in source jets, group total derivatives and contact
density, and use the admitted flux conditions. First unsupported implication:
close all remaining response sectors under the physical common regulator.
Numerical role: none.

Remaining to-do list: prove the curved mixed-boundary trace input; match all
other response and source terms under the common regulator; complete the
theorem-specific novelty audit and manuscript; certify supported claims in
Lean on GCP.

### Endpoint-uniform fixed-interior odd-odd defect coefficient (2026-10-31 HST)

Technical commits `efe4219` and `2b382ac` derive a fixed-model result for
the localized odd-odd defect away from the seam. Exact unitary kernel
conjugation reduces the mixed heat product to the relative transport of
`X`; its linear term has zero fiber trace, and its quadratic term gives the
rank-two density `-(h^2/(2 pi))(sr/t^2)` uniformly over the closed Duhamel
simplex. After the two ordered words and the massive sphere tower, the raw
rank-two local density is `-b_S^2 h^2 u'w'/(6 pi)+O(t)`. The full derivation,
including the Gaussian covariance and endpoint remainder, is in
[`full-weyl-commutator-joint-hit-bound.md`](full-weyl-commutator-joint-hit-bound.md).

This closes the fixed-interior defect endpoint asymptotic only. The same
technical note now combines it with the same-boundary rank-two heat
coefficient `a_1=R/6-R/4=(h^2-h')/6` for constant insertion jets. The
`h^2` terms cancel within the fixed smooth odd-odd pair, leaving the raw
`-b_S^2 h' u'w'/(6 pi)` local density at order `t^0`. This refines the
defect-only matching condition recorded in
[`p1d-response-versus-conversion.md`](p1d-response-versus-conversion.md):
the residual `h'` coefficient, derivative-insertion terms and cutoff/local
restorations must be identified in the source subtraction or canceled by
other sectors before its `t^(3/2)` remainder target can follow. No such
matching is yet proved. Seam localization, moving-cut domains,
physical-half normalization, contact/density, transgression and LLL also
remain open. This is not a failure result for the complete response.

Concrete claim: the fixed compactified interior odd-odd pair has the
endpoint-uniform zero-insertion-jet local coefficient just stated under the
smooth parametrix hypotheses. Ordinary argument: combine exact kernel
conjugation and the relative Gaussian with the same-boundary `a_1` term,
then restore the exact angular mass shift. First unsupported implication:
match the residual and derivative-insertion terms to the source cutoff and
local-restoration ledger and transfer through the moving physical cut.
Numerical role: none; Lean certification: none for this analytic estimate.

Remaining to-do list: prove seam/moving-cut localization; match the
physical-half source response and all sectors; finish prior art and manuscript;
certify supported formalizable claims on GCP.

### Scalar/contact algebra formalization draft (2026-10-31 HST)

`lean/CurvedScalarContactJet.lean` states the pointwise rational-jet
regrouping behind the local identity in
[`full-weyl-curved-scalar-interior-leading-coefficient.md`](full-weyl-curved-scalar-interior-leading-coefficient.md).
It encodes the derivative jets directly and proves only the polynomial
rearrangement, conditional on `f != 0`. This is an uncompiled GCP-bound
development draft; no Lean invocation was made locally and no certificate is
claimed. Even after a successful GCP check, it will not cover derivation of
the Hessian expansion, vanishing integrated fluxes, heat traces or the
physical observable.

Concrete claim: the expanded nine-term rational jet expression equals its
grouped total-derivative form under `f != 0`. Ordinary argument: clear the
nonzero denominators and normalize the polynomial identity. First unsupported
implication: prove the Hessian expansion and integrate under the admitted
source jets; the full response and common regulator remain open. Numerical
role: none.

Remaining to-do list: compile and audit the exact Lean source on GCP; formalize
additional supported algebra only after source checks; prove the curved
mixed-boundary estimate and close all physical sectors and regulator limits.

### Correction to and fixed-model refinement of the odd-odd boundary estimate (2026-10-31 HST)

Technical commit `f4082ec` withdraws the earlier same-coordinate input
`t^(-1) integral exp(-y^2/(ct)) |u'(y)w'(y)|dy` in
`full-weyl-commutator-joint-hit-bound.md`. The Duhamel word has two
multiplication vertices evaluated at separate normal coordinates; without a
relation between the independent directions, the same-point product need
not control an off-diagonal trace. The replacement is a bilocal input with a
normalized Gaussian average of `|w'(y')|` against `|u'(y)|`. Under this
input, the cubic jets and Gaussian second moment give the conditional
`O(t^(3/2))` boundary-layer scale. Subsequent analysis in
[`full-weyl-commutator-joint-hit-bound.md`](full-weyl-commutator-joint-hit-bound.md)
establishes the individual Gaussian upper bound for the pinned compactified
smooth mixed Dirichlet/Robin orbit square and its pointwise unitary conjugate.
It therefore proves the fixed-`R sqrt(t)` window component after the angular
sum for that fixed model. It does not prove the bilocal Gaussian defect input
for the complete boundary-layer region, control the complementary non-hit
region/local coefficient, or transfer the result to moving physical cuts and
the common-regulator source observable.

Concrete claim: the bilocal conditional input implies the stated component
scale. Ordinary argument: convolve the two outer Gaussian kernels, retain
the reflected middle factor, use the normalized Gaussian second moment,
then sum the simplex and mass tower. First unsupported implication: prove
the mixed-boundary kernel estimate for the physical curved family and match
the complete observable under one regulator. Numerical role: none.

Remaining to-do list: control the non-hit region and match its local coefficient to the source subtraction; prove physical moving-cut and common-regulator transfer; close the other response sectors; finish novelty and manuscript audits; certify supported claims on GCP.
