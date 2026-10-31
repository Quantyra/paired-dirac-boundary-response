# Uniform realization for an auxiliary RN spherical-cut family

This constructs the finite-cut operator family used in the separated-interior locality estimates for the fixed static zero-angle RN seed. It closes the geometric/domain inputs for that explicitly imposed auxiliary family; it does not identify its determinant or heat-trace regularization with the canonical conformal-infinity source prescription.

## Family and first-order domains

Fix the identical RN exteriors, regular thermal bolt, common pulled-back spin and monopole bundle map, and zero constant boundary angle. For each sufficiently large radius R, truncate the physical exterior at the concentric sphere Σ_R={r=R} and impose the source-model projector

    chi_R=tau_3 gamma(n_R),   P_R=(1+chi_R)/2,
    Dom D_R={psi in H^1: (1-P_R) tr psi=0},
    Dom D_R^*={phi in H^1: P_R tr phi=0}.

These are auxiliary reflecting cuts. They are smooth finite spherical cuts with the matched bundle data specified in `stationary-paired-dirac-phase.md`, not extra physical walls at conformal infinity. The fixed pulled-back magnetic bundle has the same transition functions on both copies; `source-paired-bundle-transition-check.md` verifies that the copy involution patches under these stipulated transitions. In the radial normal-parallel frame the projector is a smooth orthogonal bundle projection. The finite-cut elliptic-domain bridge therefore supplies the closed H^1 realization and complementary adjoint domain on each cut. The square uses the actual composition domain, not an imposed self-adjoint first-order domain.

The parent conformal-domain derivation at scientific commit `08cb71afea3f0e5310cac8a50c05d5007555641f` verifies the physical/product projector and Robin transport on each smooth finite spherical cut for the static zero-angle path. Its equation (10) has only finite positive Weyl factors at a finite cut. It does not provide uniform bounds on the multiplier and its inverse as R tends to infinity, and no such bounds are used here to assert square similarity.

## Uniform graph and weighted form bounds

For the fixed RN seed, the uniform physical charts, curvature and second-fundamental-form bounds are in `rn-physical-cut-uniform-geometry.md`; the uniform trace inequality is in `rn-moving-cut-uniform-trace.md`; and the smooth compatible H^1 core is in `finite-cut-projector-h1-core.md`. With the source Gauss/Green conventions, `finite-cut-graph-weitzenbock-route.md` derives a cut-independent graph bound from these inputs and the paired Dirac energy identity. `paired-graph-source-reconciliation.md` records this combination for the stipulated matched finite-cut data. The constants depend on the fixed RN seed and the chosen common bundle/gauge bounds, not on (R).

For real bounded Lipschitz weights φ, scalar multiplication preserves each H^1 projector domain: its trace is e^(±phi) tr(psi), and the scalar commutes with P_R. The weak product rule is

    D_R(e^\phi psi)=e^\phi(D_R psi+c(d\phi)psi),
    |c(d\phi)|=|d\phi|_{g_R}.

Thus the paired first-order form has the Davies lower bound with the physical metric and Clifford constant one, uniformly in R. No square-domain invariance is required. On the complete physical manifold, bounded scalar weights preserve the minimal closed Dirac domain by approximation from compactly supported smooth sections. The localized derivative estimate additionally uses the uniform local graph estimates already stated in `paired-weighted-derivative.md`.

The physical cutoff derivatives and the C5 coefficient/chart bounds are checked for this RN exhaustion in `physical-cut-locality-regularity-instantiation.md`. Under the mixed H3-to-H5 estimate and chart hypotheses there, the localized Schatten and ordered/mixed response-locality arguments apply to this auxiliary cut family. This is the operator family for which those conditional arguments have now had their geometric, first-order domain, and scalar weighted-form inputs instantiated.

## Remaining unsupported source implication

The construction above does not show that the auxiliary-cut determinant or trace, with its boundary projector at r=R, is the regulator used to define the canonical data at conformal infinity. The parent source puts its canonical finite boundary data in the common conformal frame at u=0, and its source-to-product conversion carries a common proper-time subtraction, boundary transgression, physical density/contact normalization and a separate LLL contribution. The finite-cut covariance equation is a domain identity, not a determinant identity or a uniform heat-trace limit.

Accordingly the first unresolved implication is now specific: prove that the auxiliary spherical-cut response converges, under the declared common regulator and with all local/boundary/contact/LLL terms retained, to the canonical source response; or derive a direct trace comparison that avoids this auxiliary family. The cut-to-complete response locality and power-path endpoint estimates are supporting steps only. No physical renormalized finite part, full-Weyl source conversion, numerical admission margin or Lean certification is claimed here.

Remaining to-do list: prove the auxiliary-to-canonical trace and regulator bridge; finish source conversion, finite-part and novelty audits; certify the final supported claims in Lean on GCP.
