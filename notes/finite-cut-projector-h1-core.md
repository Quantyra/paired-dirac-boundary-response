# Smooth H1 core for a smooth projector boundary condition

This proves the smooth-core density used in
`finite-cut-graph-weitzenbock-route.md` on each compact smooth cut. It is a
general boundary-space fact; it does not establish that the actual physical
paired realization has this domain or provide uniform regularity constants.

Let X be a compact smooth manifold with smooth boundary, E a smooth
Hermitian bundle, and P a smooth orthogonal projection of E restricted to
the boundary. Set

  V_P={f in H1(X;E): (1-P) gamma f=0}.                 (1)

Then smooth sections satisfying the same projector condition are dense in
V_P in H1. The same holds with P and 1-P exchanged.

To see this, use the continuous trace map gamma:H1(X;E)->H^(1/2)(boundary;E)
and a continuous right inverse T of gamma that maps smooth boundary sections
to smooth sections on X. Such a right inverse can be constructed in a collar
using a tangential elliptic smoothing/extension operator and a smooth normal
cutoff, then patched with a bundle partition of unity. Multiplication by the
smooth projector is continuous on H^(1/2).

For f in V_P, choose arbitrary smooth sections g_j converging to f in H1.
Define

  h_j=(1-P) gamma g_j,
  f_j=g_j-T h_j.                                       (2)

Since (1-P)gamma f=0, the trace theorem implies h_j->0 in H^(1/2).
The continuity of T gives f_j->f in H1. Both g_j and T h_j are smooth,
and

  (1-P)gamma f_j = h_j - (1-P)h_j = 0.                 (3)

Thus (2) is the required sequence. No derivative of P normal to the
boundary is needed, and no common global frame is assumed. Density for each
cut suffices to extend a graph inequality whose constant is already uniform;
the construction itself does not claim a uniform extension norm across
varying cuts.

For a smooth first-order differential expression with bounded coefficients
on that compact cut, H1 convergence also implies convergence in its graph
norm. Hence, if the chosen closed realization is exactly V_P and the energy
identity holds on smooth admissible sections, the core-density step of the
graph argument is justified. Establishing that domain for the physical
folded bundle, the relevant Green/Gauss identities and uniform coefficients
remains separate. No numerical run or Lean certificate is claimed.

Remaining to-do list: verify the physical realization and uniform geometric
inputs, prove mixed H3 regularity and source matching, complete regulator and
prior-art audits, prepare the manuscript, and certify supported claims in Lean
on GCP.