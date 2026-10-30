# Escaping-spinor upper bound for the physical RN square

This gives a direct fixed-seed test of a cut-uniform gap for the physical
massless Dirac square. It uses only spinors compactly supported in the
exterior interior, and so is independent of the local boundary condition at
the outer cut. The bundle and operator hypotheses below remain to be matched
to the paired physical realization. This is not a wormhole stability result
or a Lean certificate.

Let the four-dimensional Euclidean exterior have

  g=F(r)d tau^2+F(r)^(-1)dr^2+r^2 g_(S^2),
  F(r)=r^2/L_4^2+1-c/r+d/r^2,                               (1)

with a fixed nonextremal horizon, r>r_h, and a fixed thermal period and
spin structure. Use the source's stationary purely magnetic connection,
assumed smooth on the sphere bundle and independent of r and tau. Let D be
the corresponding geometric Dirac expression, with either sign convention.
Assume each finite-cut paired realization contains smooth interior-supported
sections in its first-order domain, and its positive square is D*D on the
natural composition domain. The quadratic form of that square is ||D psi||².

Choose outward proper distance s by ds=dr/sqrt(F). Then
s=L_4 log r+O(1) as r->infinity and r(s) grows exponentially. The metric is

  ds^2+a(s)^2 d tau^2+r(s)^2 g_(S^2),   a(s)=sqrt(F(r(s))).  (2)

In a radial parallel orthonormal spin frame, conjugation by the square root
of the cross-section density a r² transforms the Dirac expression on smooth
interior sections to

  D_tilde=gamma_s partial_s + a(s)^(-1) D_tau + r(s)^(-1) D_S. (3)

Here D_tau and D_S are the fixed first-order time and magnetic-sphere
operators with bounded Clifford factors. Formula (3) follows by computing
the spin connection of the two warped factors: its radial coefficient is
(1/2)partial_s log(a r²), which the density conjugation cancels. The
conjugation is unitary from the geometric L2 measure to ds times the fixed
cross-section measure. The precise constant Clifford signs do not affect
the norm estimate. This argument applies on an exterior collar, without
requiring a global radial spin frame through the bolt.

Choose a nonzero smooth cross-section spinor phi respecting the fixed spin
and magnetic bundle structure and normalize it in the fixed cross-section
L2 norm. Its D_tau phi and D_S phi have finite norms. Choose nonzero
chi in C_c^infinity((1,2)) with ||chi||_L2=1, and define

  psi_S(s,omega)=S^(-1/2) chi(s/S) phi(omega).                 (4)

Then ||psi_S||=1 and its support escapes to infinity as S->infinity.
Because a(s)^(-1) and r(s)^(-1) are O(exp(-s/L_4)), (3) gives

  ||D_tilde psi_S|| <= ||chi'||_2/S + C exp(-S/L_4).          (5)

The constant depends on phi and the fixed seed. Each inverse-unitarily
transported spinor is smooth and compactly supported away from both the bolt
and the outer cut, so it obeys any paired boundary condition that contains
such interior sections. No zero thermal frequency is needed: an
antiperiodic phi has finite D_tau norm and its contribution still decays.

Let s_R denote the proper coordinate of a cut at r=R. For large R take
S=s_R/3, so the support in (4) lies strictly inside the cut. The Rayleigh
principle for the nonnegative composition square gives

  inf spec(D_R*D_R) <= [C/S+C exp(-S/L_4)]^2 -> 0.           (6)

This proves that no positive lower bound uniform in R can hold for these
finite-cut squares under the stated geometric and domain hypotheses. It is
an upper bound on the bottom of the spectrum, not a physical admission
margin or a stability claim. On a limiting closed realization containing
all these compactly supported sections, the same sequence shows that the
quadratic-form infimum is zero; since the supports escape, the normalized
spinors converge weakly to zero. Establishing a statement about the
essential spectrum of a particular self-adjoint operator would require its
precise global realization and a Weyl-sequence argument for that operator.

The construction addresses the unperturbed physical massless square only.
It does not rule out a mass gap after adding a positive mass, determine the
paired heat trace or LLL state, prove a renormalized response, or settle a
joint large-time/cut limit. The exact source bundle, normalization and
operator identification remain to be checked. No numerical or Lean
certification is claimed.

Remaining to-do list: verify the stated physical geometry and bundle maps,
handle the gapless upper endpoint and complete the mixed regulator argument,
resolve novelty, prepare the manuscript, and certify supported claims in Lean
on GCP.
