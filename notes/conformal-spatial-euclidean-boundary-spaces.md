# Conformal boundary data in spatial and Euclidean Hilbert spaces

This sharpens `conformal-infinity-l2-domain-obstruction.md` and explains why
its Euclidean observation does not contradict the pinned canonical boundary
prescription. It is an ordinary fixed-geometry calculation, not a physical
determinant or Lean certificate.

Use g=Omega^2 ghat, Omega=1/u, in four spacetime dimensions and the
massless conformal field psi_g=Omega^(-3/2)psi_hat. The compactified outer
boundary u=0 has a smooth collar with nondegenerate density.

For psi_hat in H1 of the compactified four-manifold, the condition that
psi_g belongs to physical Euclidean L2(g) is

    integral u^(-1)|psi_hat|^2 dvol_hat < infinity.     (1)

Within this H1 class, (1) holds if and only if the entire H1 boundary trace
of psi_hat is zero. The necessity is the collar trace-continuity argument in
`conformal-infinity-l2-domain-obstruction.md`. For sufficiency, apply the
one-dimensional Hardy inequality to almost every boundary fiber:

    integral_0^a ||psi_hat(u,.)||^2/u^2 du
       <= 4 integral_0^a ||partial_u psi_hat(u,.)||^2 du, (2)

for a zero-trace H1 section. Multiplication by a bounds the u^-1 integral,
and the smooth positive collar density and a partition of unity give the
bundle-valued statement. Thus the intersection of compactified H1 fields
with the physical Euclidean L2 condition is precisely the zero-trace H1
space. The projector condition Pi_- trace=0 allows a nonzero complementary
trace, so it is strictly weaker than this Euclidean L2 restriction whenever
the allowed bundle has positive rank. This class comparison is not yet an
identification of the closed physical Dirac operator domain.

The canonical spatial norm behaves differently. On a fixed time slice,
assume the static product decomposition and conformal spinor identification
of the source. The spatial metric also scales by Omega^2, so in three
spatial dimensions dvol_(g,3)=Omega^3 dvol_(ghat,3). The conformal spinor
weight therefore cancels it exactly:

    integral |psi_g|^2 dvol_(g,3)
       = integral |psi_hat|^2 dvol_(ghat,3).             (3)

This is an equality of spatial one-particle L2 norms under the fiberwise
isometry. It does not use the four-dimensional Euclidean volume measure.
On a finite compactified spatial collar, a smooth psi_hat with nonzero
allowed boundary trace is spatially L2, while its associated four-dimensional
Euclidean field is not L2 on a finite time interval by (1). Thus the source's
canonical finite boundary data and the Euclidean L2 obstruction can coexist;
one cannot identify their closed operators merely from the shared pointwise
projector.

For finite cuts both weights are bounded and the source's conformal boundary
formula applies. Passing to infinity for a determinant or heat trace needs an
explicit choice of Euclidean realization, boundary/source interpretation and
renormalization, including the conformal anomaly and boundary transgression.
Equation (3) does not provide those identifications or prove the curved
response. It also does not assert that the entire spatial H1 projector domain
is the Hamiltonian domain without its graph and trace analysis. No numerical
calculation is used.

Remaining to-do list: specify and match the physical Euclidean determinant,
canonical boundary spaces and regulator, complete response and prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.