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

At common finite cut and positive time, the
[response-versus-conversion ledger](p1d-response-versus-conversion.md)
separates `H_FW-J_src''` into the orbit/geometric bracket and the
full-Weyl-correction/source-contact bracket. The identity retains all
positive-time correction vertices and the `2 Theta' I_t` contact. It does
not identify the source's tangent-subtracted `r_curved`, assign the cutoff
and local-action terms, or justify endpoint limits.

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
comparison. The corrected Lean source has since been replayed on GCP with
exit code 0, standard axioms only and no reported `sorryAx`; see
[`gcp-full-weyl-seam-coefficient-comparison-corrected-20261031`](../evidence/gcp-full-weyl-seam-coefficient-comparison-corrected-20261031/README.md),
certified source SHA-256
`98f2e7138670b493fc5c0b551ca8ae7a78a499673977ad76a5e1418a5c90036e`. The old
receipt uses reused dependencies with local-change warnings, and both
receipts certify coefficient algebra only. The
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
rearrangement, conditional on `f != 0`, together with the flat local
coefficient difference for `b0 != 0` and `t != 0`.

Both declarations now compile on GCP with Lean 4.30.0, exit code 0, standard
axioms `propext`, `Classical.choice` and `Quot.sound`, and no reported
`sorryAx`; see [the receipt](../evidence/gcp-curved-scalar-contact-jet-20261031/README.md).
The certified source SHA-256 is
`e8bc85145e142ea6fd0dea295fe37f2297343ab5d803bb7a02e566512c770ba1`. The
first prepared source
(`6a952be2f8139ac62cc6e1e84aef31bda5ccb814f080a57cb6b3b5ebb51255b3`) failed
with exit code 1 and both theorems reporting `sorryAx`: `Real.pi` was unknown
under its imports, and a trailing `<;> ring` on its own line did not parse.
That failure is retained at
[the failure receipt](../evidence/gcp-curved-scalar-contact-jet-import-failure-20261031/README.md).
The correction changed imports, `noncomputable` markers and tactic blocks
only; no theorem statement or definition body changed.

The successful check does not cover derivation of the Hessian expansion,
vanishing integrated fluxes, heat traces or the physical observable. It
certifies two identities between displayed expressions whose coefficients
remain analytic inputs, and it reused the retained exact-tree dependency
build rather than rebuilding it.

Concrete claim: the expanded nine-term rational jet expression equals its
grouped total-derivative form under `f != 0`. Ordinary argument: clear the
nonzero denominators and normalize the polynomial identity. First unsupported
implication: prove the Hessian expansion and integrate under the admitted
source jets; the full response and common regulator remain open. Numerical
role: none.

Remaining to-do list: the exact Lean source is compiled and audited on GCP;
derive the Hessian expansion and integrated fluxes that supply its
coefficients; prove the curved mixed-boundary estimate and close all physical
sectors and regulator limits.

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

### Candidate curved-remainder ledger: dependency disposition

The frozen source at `f0eab590`, Section 5, Eqs. (13)--(16), operationally
defines `r_curved` in prose as the weak mixed response minus a localized
tangent contribution with cutoff terms and states the target
`|r_curved| <= A(K)||u||_A||w||_A t^(3/2)` through the physical regulators.
The constant `A(K)` is explicitly unknown. Eqs. (15)--(16) give finite
candidate dyadic moments, but the source does not derive a termwise
localization, cutoff-transition formula, or allocation of contact, density,
LLL, boundary-transgression and local-restoration terms, and it does not show
that all matrix, domain and commutator terms reduce to those moments. The
source points to Section 4 tangent term (11); accordingly the Section 4 flat
tangent `T_4` is the best-supported working subtraction. This is a candidate
interpretation, not an adoption of a proved theorem. The exact finite-cut
algebra in
[`p1d-response-versus-conversion.md`](p1d-response-versus-conversion.md) and
[`p1d-operational-definition-proposal.md`](p1d-operational-definition-proposal.md)
gives, under common-Hilbert-space, cut, trace-density and positive-time
hypotheses,

    r_cand = [H_orb-G_src] + [D-C_src] + [J_src''-T_4] + A.

The four blocks have different open proof obligations:

| Block | What the current evidence supports | First unsupported implication |
| --- | --- | --- |
| `H_orb-G_src` | A fixed-cut positive-time orbit/source identity and restricted flat leading-coefficient ledger are recorded. | Match the full curved orbit Hessian to the source geometric variation, including moving density, cutoff, endpoint and boundary terms. |
| `D-C_src` | The full-Weyl correction vertices are explicit; flat and scalar-subfamily contact coefficients are compared under stated conditional normalizations. | Derive the complete matrix/angular tower, LLL, density and contact allocation on one physical Hilbert space and regulator. The smooth interior odd-odd pair still has an order-zero local term requiring source-sector matching. |
| `J_src''-T_4` | The source conversion first two jets and common-cutoff finite part at the seed are imported; flat coefficients are subtracted algebraically. | Prove that this source endpoint conversion equals the physical localized Section 4 tangent subtraction, with the same operator, trace measure, cutoff and limits. The current flat difference is diagnostic only. |
| `A` | The term is defined as a placeholder for signed action/contact contributions not already in `H_FW`. | Give its exact source-derived formula and allocate boundary transgression, contact, density, LLL/cocycle and every local restoration exactly once. |

This ledger exposes where an `O(t^(3/2))` claim would have to cancel all
lower-order terms; it does not show that a coefficient fails to cancel. In
particular, model coefficients with different normalizations cannot be
added to infer a physical mismatch. No source-level identity currently
identifies `r_cand` with the frozen source's `r_curved`, proves the four
blocks cancel to the target order, or controls the joint moving-cut and
proper-time endpoint. See the operational-definition note for the precise
ordinary proof sequence.

Concrete claim: under the displayed common-cut hypotheses, the candidate
remainder has the exact four-block algebraic decomposition. Ordinary
argument: combine the fixed-cut full-Weyl/orbit Duhamel identity with the
source conversion identity, then add and subtract `G_src`, `C_src`, and
`T_4`. First unsupported implication: identify each block with the frozen
physical action and prove its uniform coefficient and endpoint bounds.
Numerical role: none. Lean role: none for the analytic or trace identity.

Remaining to-do list: derive the signed action allocation from the source;
prove the four block matches and lower-order cancellations under one physical
regulator; control the rough seam, non-hit region and moving cut; then finish
the S001 decision and certify supported formalizable statements on GCP.

### Fixed-interior variable-insertion sector: coefficient check

The technical note
[`full-weyl-commutator-joint-hit-bound.md`](full-weyl-commutator-joint-hit-bound.md)
now carries the compact-interior variable-insertion expansion through the
angular-tower limit. Its internal normalization can be checked from
`R=2(h'-h^2)`, the rank-two heat coefficient
`a_1=-R/12=(h^2-h')/6`, and the exact Duhamel moment

    2 integral_0^t (t-r) (r(t-r)/t) dr = t^3/6.

Combining the same-boundary and conjugation-defect words gives, after the flat
`a_0` subtraction and in raw rank-two normalization,

    R_same+defect,int(t)
      = -(b_S^2/(6 pi)) integral [h' u'w' + u''w''] dmu + O(t).

The `h^2` terms cancel inside this fixed smooth interior sector. This audit
checks the local heat coefficient, both Duhamel orderings and the tower
scaling; it does not prove the variable-coefficient parametrix remainder
uniformly at the physical cut. Nor does it show that the residual `h'` and
`u''w''` terms are canceled by another sector or included in the source's
tangent/cutoff restoration. In particular, this coefficient is not evidence
that the complete `r_curved` estimate fails.

Concrete claim: for compactly supported smooth insertion jets in the fixed
product interior, the paired odd-odd sector has the displayed integrated
coefficient under the parametrix hypotheses of the linked note. Ordinary
argument: use the scalar `a_1` coefficient for the same-boundary word, the
relative-Gaussian second moment for the conjugation defect, and the exact
two-ordering Duhamel simplex integral. First unsupported implication: match
this term and every other response/action sector to the source cutoff and
common-regulator subtraction. Numerical role: none. Lean role: none for this
analytic heat expansion.

Remaining to-do list: establish the variable-coefficient parametrix and
seam/non-hit bounds; match this coefficient, the four remainder blocks and
all source sectors on one physical regulator; finish the S001 decision and
certify supported formalizable results on GCP.

### P1-B resolvent variation: proof and Lean scope

The ordinary [resolvent-variation audit](resolvent-variation-constants.md)
derives a conditional holomorphic `L^infinity` ball estimate and Cauchy bounds
for the conjugated first-order inverse `S(z)`. With its declared `B<=0.001`
and radius `r=1/8`, its numerical targets are

    ||DS(0)[u]|| <= 10.56 ||u||_infinity/M,
    ||D^2S(0)[u,w]|| <= 337.92 ||u||_infinity||w||_infinity/M.

If the square-resolvent identity
`R_b=(S_+(b)+S_-(b))/(2M)` is established for both signs on the actual
composition domains, these derivative bounds gain one further factor `1/M`.
The [paired-square-resolvent audit](paired-square-resolvent.md) supplies that
factorization only under skew-adjointness, partner and two-sided multiplier
domain-invariance hypotheses. Its complex `L^infinity` Neumann continuation
is a bounded holomorphic map; for arbitrary complex directions it need not
represent the resolvent of an actual perturbed unbounded operator.

The GCP [mass-skew-resolvent receipt](../evidence/gcp-mass-skew-resolvent-clean-20261030/README.md)
certifies the positive real-mass bijection and norm estimate from
skew-adjointness. The separate partner and graph receipts certify their
stated abstract operator steps. A dedicated source,
[`ResolventVariationConstants.lean`](../lean/ResolventVariationConstants.lean),
and a GCP-only
[exact-source runner](../lean/cloud-resolvent-variation-constants-20261031.sh)
target the finite rational inequalities and final Cauchy-constant arithmetic.
Those seven declarations now compile on GCP with Lean 4.30.0, exit code 0,
standard axioms only and no reported `sorryAx`; the exact source, `.olean`,
hashes and full log are in
[the receipt](../evidence/gcp-resolvent-variation-constants-20261031/README.md).
As first prepared, the runner could not have run: it pointed `LEAN_PATH` at a
package tree with no built `mathlib` and required an absent
`lake-manifest.json`. It was corrected to the dependency layout already
proven by the flat source-contact ledger replay. The analytic Taylor-tail
comparison, the Banach-valued Cauchy estimates, their assembly into the P1-B
second square-resolvent variation, and all physical instantiation remain
outside that certificate. None of the existing receipts establishes the
physical `J`, scalar multiplier bounds, actual paired domains, or a trace
estimate.

Concrete claim: under the declared abstract hypotheses, the first- and
second-order resolvent derivative bounds follow from the Neumann ball and
one- and two-variable Cauchy estimates; the square bounds follow if both
first-order signs factor on their actual domains. Ordinary argument: use
`||A_b^{-1}||`, the Neumann perturbation bound `q<1`, the conjugating
multipliers, and Cauchy estimates on radius `r` and half-radius polydisks.
First unsupported implication: verify all operator/domain hypotheses for the
admitted paired family, then formalize and replay the derivative estimates
and exact rational constants on GCP. Numerical role: none beyond supporting
the explicit operator-norm constants. The bounds do not justify angular
trace summation, heat-trace differentiation, or the common regulator.

Remaining to-do list: establish the physical partner and multiplier/domain
hypotheses; the rational constant claims are certified on GCP, so formalize
the Cauchy derivative estimates that consume them; prove the trace-level
response and its common-regulator limit.

### Flat source-contact factor correction and Lean draft (2026-10-31 HST)

The flat common-normalization ledger in
[`p1d-response-versus-conversion.md`](p1d-response-versus-conversion.md)
gives `Theta'=-C/t^2+O(1)`, `I_t=U/(4 pi)+O(t)`, and
`C_src=2 Theta'I_t=-(C/(2 pi))U t^(-2)+O(t^(-1))`, with `C=2b_0^2` and
`U=integral_R uw`. The paired crosswalk and scalar joint-hit note previously
used `-C/pi` for this contact and consequently misassigned
`D_flat-C_src=4C/pi`; both have now been corrected. The complete conditional
flat ledger has `D_flat=3C/pi`, `D_flat-C_src=7C/(2 pi)`,
`H_orb-G_src=C/(2 pi)`, and total `H_FW-J_src''=4C/pi`, all multiplying
`U t^(-2)`. This is coefficient bookkeeping at a flat model normalization,
not a curved physical endpoint or a theorem that the sectors cancel.

[`FlatSourceContactLedger.lean`](../lean/FlatSourceContactLedger.lean)
formalizes the rational factors after stripping `pi^(-1) U t^(-2)`;
the pinned GCP-only replay is
[`cloud-flat-source-contact-ledger-20261031.sh`](../lean/cloud-flat-source-contact-ledger-20261031.sh).
The source SHA-256 is
`b21468d3fe08878c15b33ed29578599676ba3aabdbd0c0288c71b3269672f67f`.
That replay has since succeeded on GCP with exit code 0, standard axioms only
and no reported `sorryAx`; the receipt is
[`gcp-flat-source-contact-ledger-20261031`](../evidence/gcp-flat-source-contact-ledger-20261031/README.md).
Its scope excludes the analytic coefficient inputs, physical source matching
and common-regulator limit.

Concrete claim: given the displayed coefficient inputs, rational algebra
yields the corrected contact and total-ledger factors. Ordinary argument:
apply the source's exact contact identity, the even-folding normalization,
and the previously derived flat Duhamel coefficients, then collect rational
factors. First unsupported implication: prove these coefficients are the
complete physical response terms under one regulator and transfer the ledger
to the curved source observable. Numerical role: none. Lean role: certify
only the rational coefficient identities after exact-source GCP replay.

Remaining to-do list: the rational ledger is replayed on GCP; close the curved
response sectors and physical source-observable bridge; finish the novelty
decision and manuscript; certify the supported final claims.
