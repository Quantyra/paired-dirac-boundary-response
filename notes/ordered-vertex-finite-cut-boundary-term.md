# Boundary term in finite-cut ordered-vertex derivative transfer

This audits a domain step in `physical-ordered-vertices-positive-time.md`
for the finite-cut setting of `physical-finite-cut-uniform-heat-diagonal.md`.
It identifies a generally nonzero boundary term; it does not estimate its
heat-time integral or establish a physical regulator or Lean certificate.

Let D_b=E_b D E_b on a smooth physical finite cut, with H1 domain Pi_- trace
psi=0 and adjoint domain Pi_+ trace phi=0. Let chi=Pi_+-Pi_- commute with
the normal Clifford multiplication c(n) and anticommute with tangential
Clifford multiplication. For a radial real direction v, the differential
multiplier in the first vertex is

    C_v=E_b^2 c(dv)=E_b^2 (partial_n v)c(n)             (1)

on the cut. It commutes with chi and therefore preserves each boundary
projector subspace. The first derivative of the Dirac operator is
D_v=-v D_b-(1/2)C_v.

For h in Dom L_b, the traces of h and D_b h lie in the allowed Pi_+ and
complementary Pi_- subspaces, respectively. Scalar v preserves both
subspaces, and C_v D_b h is in Dom D_b* locally because C_v preserves the
complementary subspace. In contrast, C_v h has an allowed Pi_+ trace and
need not lie in Dom D_b*. Thus one cannot replace D_b* C_v h by the formal
product without retaining the Green boundary form.

With a fixed Green-sign convention, that boundary contribution has fiber
factor, up to the overall convention-dependent sign,

    Pi_+ [E_b^2 c(n)] C_v Pi_+
       = E_b^4 (partial_n v) Pi_+.                      (2)

Here E_b^2 c(n) is the normal symbol in the Green form for D_b, and c(n)^2=1. Unless the normal jet of v vanishes at the particular cut,
(2) is generally nonzero. Its existence is not removed by the fact that
Pi_+ c(tangential) Pi_+=0. A tangentially varying direction has additional
terms and must be analyzed separately. At the compactified limiting boundary
a zero normal jet may hold; it does not imply exact vanishing at every
intermediate cut.

For a fixed RN physical collar g=u^(-2)ghat and radial weighted cubic profile,
`weighted-fields-physical-norms.md` gives |v|+|dv|_g<=C u^3. At the cut
u=delta the physical three-dimensional boundary density is delta^(-3) times
a smooth compactified density. Hence, for two such radial directions v,w,

    integral_(u=delta) (|v||partial_n w|
                         +|w||partial_n v|) dSigma_g
       <= C delta^3.                                     (3)

The same O(delta^3) bound holds for a product of two first normal derivatives.
It is uniform for the raw physical-side weighted approximants under their
recorded common bounds. Equation (3) is a bound on boundary coefficients
only: the time-sliced heat factors, their boundary traces, Green-sign
normalization and the two ordered contributions still have to be estimated.
In particular one must establish an endpoint-integrable time majorant before
concluding that these boundary terms vanish in a regulated response.

This audit does not invalidate the complete-manifold argument, where there is
no finite outer boundary, and it does not assert that the two ordered boundary
terms cannot cancel. It prevents using the complete-manifold derivative
transfer unchanged for finite cuts. No numerical calculation is used.

Remaining to-do list: estimate the boundary heat factors and ordered terms,
prove the uniform finite-cut and physical regulator comparison, resolve prior
art, prepare the manuscript, and certify supported claims in Lean on GCP.