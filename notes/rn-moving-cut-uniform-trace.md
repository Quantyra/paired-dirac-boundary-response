# Uniform trace inequality on fixed-seed RN outer cuts

This verifies the collar geometry needed for the trace inequality in
`finite-cut-graph-weitzenbock-route.md`, for the fixed product-form RN seed.
It does not establish the folded bundle matching or the mixed H3 estimate.

Use the physical four-dimensional collar

  g=u^(-2)[b^2 B(u)^(-1) du^2 + B(u)d tau^2 + b^2 dOmega^2], (1)

with b>0, B smooth and B(0)>0, and a fixed compact thermal/spherical
boundary. Fix u_0 small enough that B is uniformly positive there. The cut
X_delta has boundary u=delta and retains u>=delta. For 0<delta<=u_0/2,
its inward physical normal coordinate rho satisfies

  d rho = b du/(u sqrt(B(u))), rho=0 at u=delta.       (2)

The slab delta<=u<=2delta has physical width at least
b log(2)/sqrt(max_[0,u_0] B)>0, independent of delta. Choose a fixed rho
width h smaller than that lower bound, giving an inward collar [0,h] for
every such cut. The normal exponential curves have constant angular and
time coordinates because (1) has no normal-tangential cross terms.

The induced boundary density at u is proportional to
u^(-3) sqrt(B(u)) d tau dOmega. On the fixed rho collar, u/delta stays
between 1 and 2; hence the density ratio relative to rho=0 is bounded above
and below uniformly. Its rho logarithmic derivative is also uniformly
bounded, as follows by differentiating

  log density = -3 log u + (1/2) log B(u) + constant. (3)

In particular the absolute mean-curvature coefficient is bounded by

  (sqrt(B(u))/b) | -3 + u B'(u)/(2B(u)) |              (4)

up to the normal orientation, uniformly in the collar. This is the trace
of the second fundamental form in this convention.

For a smooth bundle section f, let eta(rho) be a fixed cutoff equal to 1 at
0 and zero before h. The metric-compatible connection gives
|partial_rho |f|^2| <= 2 |f| |nabla_n f|. Integrating
partial_rho[eta |f|^2 times the density ratio] from 0 to h, then integrating
over the boundary and using the uniform ratio and derivative bounds, yields

  ||gamma f||_L2(boundary)^2
    <= C (||f||_L2(collar) ||nabla f||_L2(collar)
                         + ||f||_L2(collar)^2)          (5)
    <= C ||f||_L2(X_delta) ||f||_H1(X_delta),

with one C for all sufficiently small delta. The inequality extends to H1
sections by the trace theorem and density on each smooth cut. It does not
require a global trivialization: the argument uses the pointwise bundle norm
and a metric-compatible connection. The finite number of cuts outside this
small-delta regime can be covered separately only if that larger cut range
has a uniform collar; the limit uses the stated small-delta family.

Equations (4)-(5) supply the trace and boundary-curvature inputs for the
conditional graph argument on this fixed collar. Uniform bounds on the
interior Weitzenbock curvature term, the actual global physical connection,
projector core density, and the regular bolt remain separate obligations.
The calculation does not prove a heat or regulator limit. No numerical run
or Lean certificate is claimed.

Remaining to-do list: verify the physical bundle and curvature inputs, prove
mixed H3 regularity and trace matching, complete regulator and prior-art
audits, prepare the manuscript, and certify claims in Lean on GCP.