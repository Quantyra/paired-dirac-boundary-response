# Boundary flux in the finite interior contact coefficient

This identifies the boundary terms hidden by the closed-manifold integration
by parts in `interior-contact-finite-heat-coefficient.md`. It is a smooth
fixed-geometry identity, conditional on the local a6 formula and the stated
heat expansion. It does not compute the actual paired-boundary heat coefficient
or justify the moving-cut physical limit.

Let M be a compact smooth two-dimensional Riemannian spin manifold with
boundary, n its outward normal, and L an untwisted rank-two Dirac square
with a fixed self-adjoint elliptic boundary realization. Assume the localized
heat expansion of L+lambda v is differentiable in lambda through a6 and has
the usual interior and boundary coefficients. Let u,v be smooth real scalar
insertions, Delta=div grad. From equation (2) of the cited interior note,
the interior contribution to the contact coefficient at order t^2, with
an overall (4pi)^-1 factored out, is

 C_int(u,v)=integral_M u {Delta^2 v/30
    -[R Delta v+<grad R,grad v>+v Delta R]/60-R^2 v/120}. (1)

The interior density is local and independent of the boundary realization;
the separate boundary coefficient need not be. Applying Green's identity
without discarding flux gives exactly

 C_int(u,v)=B_M(u,v)+F_boundary(u,v),                        (2)
 B_M(u,v)=integral_M {(-R^2/120-Delta R/60)uv
                 + R<grad u,grad v>/60+Delta u Delta v/30},
 F_boundary(u,v)=integral_boundary {
   [u partial_n(Delta v)-(partial_n u) Delta v]/30
   -u R partial_n v/60 }.                                  (3)

Indeed, integral u Delta^2 v = integral Delta u Delta v plus the
first boundary bracket, and integral u div(R grad v) equals
-integral R<grad u,grad v> plus integral_boundary u R partial_n v.
The signs in (3) use the outward normal; inward-normal conventions reverse
both explicit normal derivatives. Formula (3) is an integration-by-parts
flux from the interior coefficient, not the full heat boundary contribution.

If u is supported a positive distance from the boundary, both its value and
normal derivative vanish there, so F_boundary=0 even if v reaches the
boundary. Under the assumed local heat expansion, the separate local boundary
coefficient also vanishes for such a smearing u, because all its boundary
jets vanish. Consequently the symmetric bulk formula B_M applies to that
localized contact coefficient. The same applies with u and v interchanged,
using exact contact symmetry. This does not give an estimate uniform as the
support approaches a moving cut.

There is a useful independent constraint on the unknown boundary term.
The exact time-ordered contact is symmetric:

 I_t(u,v)=integral_0^t Tr[u e^{-(t-s)L} v e^{-sL}] ds = I_t(v,u),

by trace cyclicity followed by s -> t-s. Let S_boundary(u,v) denote the
complete boundary part of its t^2 coefficient, with the same (4pi)^-1
normalization as C_int; this includes every boundary heat invariant and is
not defined to include the flux in (3). Uniqueness of the coefficient and
symmetry of B_M require

 S_boundary(u,v)-S_boundary(v,u)
        = F_boundary(v,u)-F_boundary(u,v).                 (4)

Equation (4) is a necessary check on any proposed boundary coefficient,
not its determination: an arbitrary symmetric boundary contribution remains.
The full actual term can also have contributions from boundary projector,
Robin data and their geometry. A magnetic twist changes the bulk density
and requires its own calculation.

For a simple sign check, take the flat cylinder [0,1] x S^1 of tangential
length one and u=v=x^2. Then the left side of (2) is zero, while B_M=4/30
and F_boundary=-4/30. This tests the bi-Laplacian flux but does not identify
any boundary heat invariant.

Remaining to-do list: compute or bound the complete paired-boundary term,
prove the uniform interior parametrix and seam estimates, establish physical
source and regulator matching, resolve novelty, prepare the manuscript, and
certify supported results in Lean on GCP.