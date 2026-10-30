# H3 membership of smooth finite-cut heat outputs

This supplies a membership step for the a priori estimate in
`mixed-h3-variable-principal-perturbation.md`. It uses the first-order
elliptic boundary regularity already identified in
`finite-cut-elliptic-domain-bridge.md`. It does not assert a uniform constant
from that theorem, or identify the physical paired realization.

Let X be one compact smooth finite cut and D_b a smooth first-order elliptic
realization. Assume both its domain and its adjoint domain are the stated
complementary H1 projector spaces, and both boundary conditions are elliptic
in the sense needed for Bar--Ballmann Theorem 4.9, as checked conditionally
in the cited bridge. Put L=D_b*D_b. Suppose the coefficient regularity is
sufficient for the theorem through order two and the standard local product
rules.

For h in L2 and t>0 put f=exp(-tL)h. Nonnegative self-adjoint spectral
calculus gives f in Dom L^2. In particular

  f in Dom D_b,  D_b f in Dom D_b*,  L f in Dom L subset Dom D_b. (1)

The last inclusion yields Lf in H1. Apply first-order boundary regularity to
D_b* with input D_b f: its output D_b*D_b f=Lf is H1 and its input satisfies
the complementary boundary condition. Therefore

  D_b f in H2 locally up to the boundary.                (2)

Next apply first-order boundary regularity to D_b with input f: its output
D_b f is H2 and f satisfies the original projector condition. Thus

  f in H3 locally up to the boundary.                     (3)

Interior elliptic regularity gives the same conclusion away from the
boundary, and compactness yields global H3 on this fixed cut. The smooth
composition boundary conditions then hold in their usual Sobolev trace
sense, under the square-domain identification in
`multiplier-square-boundary.md`.

The regularity constants used to obtain membership in (2)-(3) may depend on
the cut and field. That does not prevent applying a separately established
uniform H3 a priori estimate to f: membership and the uniform estimate are
distinct steps. The latter still requires verification of its uniform local
frames, coefficients, boundary equations, and localization on the actual
family. This argument covers smooth approximants; passage to rough limits
requires a separate convergence result. It does not establish the physical
source map, a proper-time limit, or Lean certification. No numerical run is
used.

Remaining to-do list: apply the uniform a priori estimate to the physical
family after verifying its projector/bundle hypotheses, match source and
regulator, finish prior art and the manuscript, and certify claims in Lean on
GCP.