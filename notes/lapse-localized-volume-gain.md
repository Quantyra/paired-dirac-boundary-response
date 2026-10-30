# Localized lapse comparison with a heat-kernel volume gain

This strengthens the shrinking-insertion estimate in
`lapse-cubic-localization-scales.md` under an additional diagonal heat-kernel
hypothesis. It applies to an auxiliary compact comparator and a single scalar
insertion, not to the complete mixed response or its fixed-direction
complement. It is not Lean-certified.

Use the two nonnegative self-adjoint operators L_ell and L0 and the uniform
operator-norm estimate in `lapse-comparator-trace-bound.md`, with
D=||exp(-t L_ell/3)-exp(-t L0/3)|| <= C ell². Assume, uniformly in ell and
for 0<s<=s0, that their matrix-valued heat kernels satisfy

    tr K_ell(s;x,x), tr K_0(s;x,x) <= H s^(-d/2)             (1)

almost everywhere. A uniform global trace estimate alone does not give this
pointwise bound; it is an additional requirement. The spectral theorem gives
for every real bounded multiplier u, using self-adjointness,

    ||M_u exp(-s L_j)||_2²
       = integral |u(x)|² tr K_j(2s;x,x) dx
       <= H (2s)^(-d/2) ||u||_2²,                            (2)

for j=ell,0. Also ||exp(-s L_j)||_2 <= C s^(-d/4) on the fixed compact
manifold by integrating (1).

Factor each heat semigroup into three equal-time pieces S_j. In the standard
three-term telescoping difference, use trace cyclicity when needed to place
M_u next to one heat factor, then Schatten Holder with the bounded middle
difference and two Hilbert--Schmidt factors. The resulting estimate is

    |Tr[M_u (exp(-t L_ell)-exp(-t L0))]|
       <= C ell² ||u||_2 t^(-d/2).                            (3)

For the term M_u (S_ell-S0) S0², cyclicity gives
Tr[S0 M_u (S_ell-S0) S0]; ||S0 M_u||_2=||M_u S0||_2 for real u.
The other two terms have M_u adjacent to S_ell directly. These products
are trace class by (2), so the cyclic rearrangement is justified.

Suppose u_ell is supported in a collar of width rho ell and satisfies
|u_ell(s,x')|<=K s³, with a uniformly bounded collar density and finite
boundary volume. Then

    ||u_ell||_2 <= C K ell^(7/2),
    |Tr[M_(u_ell)(exp(-t L_ell)-exp(-t L0))]|
       <= C K ell^(11/2) t^(-d/2).                            (4)

This improves the ell^5 estimate based only on ||u_ell||_infinity by a
factor ell^(1/2). If ell=t^p, the bound in (4), by itself, is integrable
against dt/t² near zero when p>(d+2)/11. In the two-dimensional orbit this
is compatible with p<1/2, the usual Gaussian-separation regime; for d>=4 it
is not. This is a power-counting observation for the time-dependent
shrinking insertion and does not justify changing the physical direction or
interchanging limits. Any extra angular factor must be included separately.

The diagonal bounds must be proved uniformly for the actual comparator and
its boundary conditions. The physical-to-auxiliary locality error, geometric
vertices, fixed-insertion complement, subtractions and common regulator must
also be controlled. Equation (4) is not a bound for the complete Hessian or
an admission margin. No numerical calculation is used.

Remaining to-do list: establish the diagonal and locality hypotheses, control
the physical mixed response and fixed complement, resolve prior art, prepare
the manuscript, and certify supported claims in Lean on GCP.