# Physical versus product-frame contact: the operator gap

This compares the finite-cut physical contact in
`physical-contact-joint-cut-approximants.md` with the product-frame orbit
contact in `tangent-regulator-normalization.md`. It identifies a concrete
operator obstruction; it does not prove that their regulated responses differ
or establish either determinant limit.

On a fixed finite cut let ghat=u^2 g in four dimensions, with u=b/r>0.
Let D_g,D_hat denote the geometric Dirac expressions for g,ghat with the
same smooth spin/twist identification. The standard conformal covariance is

  D_hat = u^(-5/2) D_g u^(3/2).                       (1)

The unitary map from physical L2(g) spinors to product-frame L2(ghat)
spinors is multiplication by U=u^(-2), since dvol_ghat=u^4 dvol_g.
Combining this unitary map with (1) gives on a smooth common core

  U D_g U^(-1) = u^(1/2) D_hat u^(1/2).              (2)

On each fixed cut u and u^(-1) are bounded, so the products and transformed
boundary conditions can be made precise with the domain assumptions already
recorded in the conformal-domain audit. In the moving-cut limit those bounds
are not uniform. Equation (2) is a congruence, not a unitary conjugacy between
D_g and D_hat.

The positive physical square transported by U is the actual composition
square of the right side of (2). Its principal symbol is u^2 times the
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