# Principal complementing symbol for the composed projector square

This checks the frozen principal boundary symbol needed by the H3 route in
`physical-contact-diagonal-h3-suffices.md`. It assumes the smooth bundled
projector and Gauss hypotheses of `multiplier-square-boundary.md`; it is not
a proof of the uniform H3 estimate or of their physical global realization.

At a boundary point choose an inward normal coordinate x_n>=0 and an
orthonormal tangential frame. Let P be the allowed orthogonal projector,
with [P,c(n)]=0 and P c(xi) P=0 for tangential covectors xi. Let the scalar
E=e^(-b/2) be real positive. The first-order principal symbol of D_b=E D E
is E^2 c(xi), up to the convention-dependent factor i, and the positive
square L=D_b*D_b has scalar principal symbol E^4 |xi|^2 Id.

The first square boundary condition is (1-P)f=0. The second is P D_b f=0.
At principal order, after imposing the first condition on the boundary
trace, the tangential term in P D_b P vanishes, while the normal term is
E^2 P c(n) P partial_n. Since c(n) commutes with P and is invertible,
this is equivalent to P partial_n f=0 at principal order. Projector
derivatives, curvature, and the normal derivative of b are lower-order
boundary coefficients; they do not alter this frozen principal calculation.

For a nonzero tangential frequency xi, the decaying solutions of the frozen
homogeneous square equation in the half-space have the form

  f(x_n)=exp(-|xi| x_n) a.                              (1)

Their principal boundary data are

  ((1-P)a, -|xi| P a),                                  (2)

up to multiplication of the second component by the invertible factor
E^2 c(n). Equation (2) vanishes only for a=0. Moreover, with the natural
frequency normalization of the order-one boundary component,

  ||(1-P)a||^2 + || |xi|^(-1) (|xi| P a)||^2 = ||a||^2. (3)

Thus the frozen mixed boundary problem satisfies the complementing
condition for xi!=0, with a normalized inverse bound controlled only by the
uniform positive lower and upper bounds for E and the fixed Clifford
normalization. The xi=0 point is not part of this homogeneous elliptic
symbol test. A parameter-dependent resolvent test requires choosing the
spectral sector and square root separately; it is not asserted by (3).

If the bundle identifications, projector relations and physical chart
bounds hold uniformly along the family, the algebraic complementing constant
is uniform. This is one hypothesis of local boundary elliptic regularity,
not the estimate itself: coefficient derivative bounds, uniform chart radii,
commutators, lower-order terms, regularity of the realization and the
applicable mixed-system H3 theorem still require verification. The result
also does not prove the global bolt or magnetic bundle identification.
No numerical calculation or Lean certificate is claimed.

Remaining to-do list: prove the actual uniform H1/H3 estimates and physical
trace matching, complete regulator and prior-art audits, prepare the
manuscript, and certify supported claims in Lean on GCP.