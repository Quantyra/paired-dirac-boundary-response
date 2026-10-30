# Uniform local frame for a smooth boundary projector

This constructs the constant-projector frame required by
`mixed-h3-variable-principal-perturbation.md`. It assumes a smooth local
orthonormal bundle frame and uniform projector/connection bounds; it does
not establish weak H3 regularity or the physical copy identification.

Let P(x') be a smooth orthogonal projection of constant rank on a boundary
chart, with derivatives through order four bounded by a common constant M.
At its center put P_0=P(0). On a sufficiently small fixed-radius chart,
||P(x')-P_0||<=1/2 uniformly. Define

  T(x')=P(x')P_0+(1-P(x'))(1-P_0),
  U(x')=T(x') [T(x')*T(x')]^(-1/2).                    (1)

Because T maps the P_0 and (1-P_0) subspaces into the corresponding P and
(1-P) subspaces and is uniformly invertible when the projections are close,
its polar factor U is unitary and

  P(x') U(x')=U(x') P_0.                               (2)

The inverse square root in (1) is smooth on positive matrices bounded away
from zero. Differentiating the finite-dimensional functional calculus, or
using a convergent power series around the identity after shrinking the
chart, gives uniform bounds for U and U* and their derivatives through
order four in terms of M. Extend U constantly in the normal coordinate on a
smaller collar. This construction is local and does not require a globally
trivial magnetic bundle or a common eigenbasis across different charts.

Write a section as f=U g. The boundary condition (1-P)gamma f=0 becomes
(1-P_0)gamma g=0. If nabla_n=partial_n+Omega_n in the original frame and
P(nabla_n+S)f=0 is the Robin condition, it becomes

  P_0(partial_n+S_0)gamma g=0,
  S_0=P_0 U* (partial_n U + Omega_n U + S U) P_0.     (3)

The formula is restricted to the allowed P_0 input fiber. Uniform bounds on
the normal connection and S through the required tangential order, together
with (1), give uniform bounds on S_0 through order three. Conjugating a
second-order operator with scalar principal coefficient by U leaves that
principal coefficient unchanged; derivatives of U only change first- and
zeroth-order coefficients. Their required bounds follow from the stated
uniform frame and operator coefficient bounds.

In the fixed RN model, `rn-cut-uniform-boundary-charts.md` supplies local
metric and gauge frames with bounded coefficients, while
`rn-mixed-robin-coefficient-bounds.md` supplies the radial scalar Robin
bound under its geometric assumptions. If the actual folded projector has
the stipulated uniform local derivatives, this construction therefore
removes the constant-projector-frame hypothesis in the a priori estimate.
It does not prove those actual physical bundle hypotheses, nor the weak
regularity/approximation needed to apply the estimate to square-domain heat
outputs. No numerical run or Lean certificate is claimed.

Remaining to-do list: verify physical projector and weak H3 hypotheses,
match source and regulator, complete prior art and the manuscript, and
certify supported claims in Lean on GCP.