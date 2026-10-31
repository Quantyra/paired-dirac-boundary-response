# Physical versus product-frame contact: the operator gap

This compares the finite-cut physical contact in
`physical-contact-joint-cut-approximants.md` with the product-frame orbit
contact in `tangent-regulator-normalization.md`. It identifies a concrete
operator obstruction; it does not prove that their regulated responses differ
or establish either determinant limit.

## Audit contract

**Claim.** On each fixed smooth cut, after the stated bundle and projector
identification, the physical L2 square transports to the composition square
of `P=E D_hat E`, with the domain in (3).

**Ordinary argument.** Apply four-dimensional Dirac conformal covariance and
the physical-to-product L2 unitary. On a fixed cut, scalar smooth positive
multipliers preserve the H1 projector traces; compute the adjoint and actual
composition domain in order.

**First unsupported implication.** Uniformly carry this exact finite-cut
composition and its full Weyl response to the moving conformal endpoint and
identify its density/contact/LLL subtraction with the source's product-frame
orbit conversion under a common regulator.

**Numerical role.** None for this operator identity. Computation cannot
establish the boundary-domain equivalence or the moving-cut trace limit.

On a fixed finite cut let ghat=u^2 g in four dimensions, with u=b/r>0.
Let D_g,D_hat denote the geometric Dirac expressions for g,ghat with the
same smooth spin/twist identification. The standard conformal covariance is

  D_hat = u^(-5/2) D_g u^(3/2).                       (1)

The unitary map from physical L2(g) spinors to product-frame L2(ghat)
spinors is multiplication by U=u^(-2), since dvol_ghat=u^4 dvol_g.
Combining this unitary map with (1) gives on a smooth common core

  U D_g U^(-1) = u^(1/2) D_hat u^(1/2).              (2)

## Exact finite-cut composition domain

Fix one smooth finite cut. Assume the pulled-back physical and product-frame
projectors agree under the stated bundle identification, and that their
common complementary first-order domains are

  V  = {psi in H^1 : Pi_- tr(psi)=0},
  V* = {phi in H^1 : Pi_+ tr(phi)=0}.

The finite-cut source model's projector and adjoint-domain argument is audited
in [`source-finite-cut-domain-instantiation.md`](source-finite-cut-domain-instantiation.md).
The physical-to-product unitary and conformal spin-bundle identification
still have to be checked against that model for each application.

On this fixed cut E=u^(1/2) and E^(-1) are smooth bounded multipliers that
preserve both projector domains. Thus P=U D_g U^(-1)=E D_hat E has
Dom(P)=V and Dom(P*)=V*. The adjoint statement follows from
P*=E D_hat* E and the complementary trace condition. Its actual composition
domain and action are therefore

  Dom(P*P) = {psi in V : D_hat(E psi) in V*},
  P*P psi = E D_hat* E^2 D_hat E psi.                 (3)

For the domain equality, P psi is in Dom(P*) precisely when
E P psi=E^2 D_hat(E psi) lies in Dom(D_hat*)=V*. Since E^2 and its inverse
preserve V*, this is equivalent to D_hat(E psi) in V*. This condition is
not the bare product-frame square condition
`psi in V, D_hat psi in V*` unless an additional domain equivalence is
proved. Formula (3) keeps the physical square's composition domain explicit.

On each fixed cut these statements make the products and transformed
boundary conditions precise under the stated projector identification. In
the moving-cut limit the bounds on u, u^(-1), and their derivatives need not
be uniform. Equation (2) is a congruence, not a unitary conjugacy between
D_g and D_hat.

The positive physical square transported by U is the actual composition
square in (3). Its principal symbol is u^2 times the
principal symbol of D_hat*D_hat. Thus, when u is nonconstant, this square
is not the product-frame square at the same proper time under the specified
unitary identification. This conclusion is local and does not assume that
square domains are equal. In particular, strong convergence or a diagonal
bound for the physical square does not automatically yield one for the
product-frame square.

The source conversion instead separates the product-frame square into orbit
and angular pieces and defines its contact before multiplying by the
angular factor Theta'(t). Consequently applying that factor to a full
physical four-dimensional contact would also require an independently proved
separation and normalization; it cannot be inferred from (2). Both contacts
may still be useful in a larger conformal comparison, but such a comparison
must retain the transformed square domains, trace density, local and boundary
terms, and a common proper-time regulator. The existing positive-time
physical-cut contact theorem is therefore supporting analysis for its stated
operator, not yet a proof of the paper's product-frame contact.

This calculation does not assert that no other equivalence or subtracted
identity exists, and does not decide the finite contact or the full action.
No numerical run or Lean certificate is claimed.

Remaining to-do list: establish the product-frame contact and its source
normalization or prove the complete conformal comparison, resolve the common
regulator and prior-art decision, prepare the manuscript, and certify
supported claims in Lean on GCP.
