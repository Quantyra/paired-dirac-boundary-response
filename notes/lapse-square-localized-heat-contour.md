# Heat-contour consequence of the localized cut resolvent estimate

This checks the fixed-mode contour integration left open in
`lapse-square-nonreal-localized-trace.md`. It is a model calculation under
that note's square-domain, localization and uniform cut/lift assumptions.
It does not establish the physical boundary or an infinite mode sum.

Let A=L+M^2 and A_ell=L_ell+M^2 be the nonnegative full and cut
self-adjoint model squares, and let S be the bounded L2 localization in the
cited note. Fix the separated mode and 0<epsilon<=t<=1. Choose a heat
contour with rays zeta=r exp(+-i theta), r>=1/t, and an arc |zeta|=1/t
outside the positive-real sector, where 0<theta<pi/2 is fixed. The arc
passes through the negative-real axis. On this contour

  d(zeta)=dist(zeta,[M^2,infinity)) >= c_theta (M^2+|zeta|)     (1)

for some c_theta>0. This follows from elementary planar geometry, including
the case M=0; the arc has a fixed angular separation from the positive axis.
Unlike |Im zeta|, d stays positive where the arc crosses the negative axis.

All uses of eta^(-1) in `lapse-square-nonreal-poisson-resolvent.md` and
`lapse-square-nonreal-localized-trace.md` can be replaced on this contour by
d^(-1): self-adjoint spectral calculus gives ||(A-zeta)^(-1)||<=1/d,
and the proof of the P_nu resolvent bound uses only the lower bound on
|lambda+M^2-zeta|. The lift construction and its uniqueness likewise hold
for every zeta outside [M^2,infinity). Hence the localized trace difference
is bounded on the contour by a finite sum of terms of the form

  C (1+|zeta|)^N [exp(h_zeta)-1+exp(h_zeta)sqrt(ell)]
       + C (1+|zeta|)^N sqrt(U_ell),                            (2)

where N and C may depend on the fixed mode, M, theta, coefficients and the
fixed lift, but are independent of the cut, t and zeta on the contour.
This follows from the polynomial lift and endpoint bounds, (1), and the
reference-resolvent factorization. It is an upper bound, not an asymptotic
formula for the resolvent.

For bounded collar coefficients, h_zeta<=ell(C_0+|zeta|). Choose
ell<=epsilon cos(theta)/4. Along either ray,

  |exp(-t zeta)| exp(h_zeta)
    <= exp(ell C_0) exp[-(t cos(theta)-ell) r]
    <= exp(ell C_0) exp[-(t cos(theta)/2) r].                  (3)

On the finite arc |zeta|=1/t, the heat exponential and exp(h_zeta) are
bounded uniformly for t>=epsilon. Since exp(h)-1<=h exp(h), integrating
(2) in trace norm along the contour yields, for some finite K and C_epsilon
that may grow as epsilon decreases,

 ||S[exp(-t A)-J*exp(-t A_ell)J]S||_1
    <= C_epsilon (sqrt(ell)+sqrt(U_ell)), epsilon<=t<=1.       (4)

The equality on the left uses Dunford's formula separately for the full and
cut operators, then the bounded localizations and the trace-norm integrable
resolvent difference. The arc and rays have finite polynomially weighted
integrals because of (3). In particular the left side tends to zero
uniformly on any fixed positive-time interval [epsilon,1]. If u is cubic at
the boundary then sqrt(U_ell)=O(ell^2).

Equation (4) does not claim a uniform epsilon->0 estimate: the constants and
the required ell/epsilon relationship matter. It also does not sum the
angular and thermal modes, identify the transported physical boundary, or
handle mixed response vertices and subtractions. The contour argument
requires the fixed-mode polynomial lift and fixed-collar assumptions; it is
not a Lean certificate. No numerical calculation was used.

Remaining to-do list: derive uniform mode/cutoff bounds and physical boundary
matching, establish the curved remainder and regulator, resolve novelty,
complete the manuscript, and certify supported claims in Lean on GCP.
