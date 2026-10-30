# Symmetric-lapse localized heat cut at fixed mode

This applies a heat-contour argument directly to the corrected symmetric
lapse in `symmetric-lapse-nonreal-localized-cut.md`. It concerns the stated
local-projector model and one fixed separated mode; it does not identify the
physical boundary or prove the complete mixed response.

Use that note's full and cut nonnegative self-adjoint squares L,L_ell, its
fixed outer-collar coefficient, domain, trace and cut-uniform lift
hypotheses, and its nonnegative bounded L1 localization u supported on the
collar. Put A=L+M^2, A_ell=L_ell+M^2, S=sqrt(u), and
U_ell=integral_removed u. Assume the explicit lift constants grow at most
polynomially in |zeta| for the fixed mode, as stated in the nonreal Poisson
note. Fix 0<epsilon<=t<=1 and use rays zeta=r exp(+-i theta), r>=1/t,
with 0<theta<pi/2, joined by the outside arc of radius 1/t through the
negative axis.

On this contour d=dist(zeta,[M^2,infinity))>=c_theta(M^2+|zeta|). The
spectral, endpoint, Poisson and positive-reference resolvent estimates in
the symmetric-lapse notes remain valid with d in place of |Im zeta|: the
proof only uses the resolvent distance to the spectrum. This includes the
negative-real point on the arc. At fixed mode, the transfer exponent in
`symmetric-lapse-inhomogeneous-transfer.md` obeys

  h_zeta <= C ell (1+|zeta|),                                  (1)

using the uniform collar bound on f^-1. Consequently the trace norm in
(4) of the symmetric-lapse localized cut note is bounded by a fixed
polynomial in 1+|zeta| times

  exp(h_zeta)-1 + exp(h_zeta)sqrt(ell)+sqrt(U_ell).            (2)

The polynomial may depend on the fixed mode, mass, collar and chosen
contour; its degree and coefficients are independent of ell, epsilon and t.
For ell<=epsilon cos(theta)/(2C), the ray factor
exp(-t Re zeta) exp(h_zeta) decays at least as
exp[-t cos(theta)|zeta|/2], apart from a cut-independent constant. On the
arc the corresponding factor is bounded. Since exp(h)-1<=h exp(h),
Dunford's formula and polynomial Gaussian-free contour integration yield
finite C_*,K such that

  ||S[exp(-t A)-J*exp(-t A_ell)J]S||_1
       <= C_* t^(-K)[sqrt(ell)+sqrt(U_ell)], epsilon<=t<=1.     (3)

The full and cut heat operators are separately represented on the same
contour; their localized resolvent difference is trace-norm integrable by
(2). The result includes the removed-collar contribution and does not use
the left-lapse square or a fixed square-domain assumption across cuts.

If u is cubic at the endpoint, U_ell=O(ell^4). For the single fixed mode,
the choice ell(epsilon)=exp(-L/epsilon), L>0, satisfies the cut condition
for small epsilon and makes the integral of the right side of (3) over
[epsilon,1] with weight dt/t^2 tend to zero. The cut is held fixed for that
integration. This is one joint path for a localized model heat difference,
not a proof of path-independent physical renormalization.

The constants are not yet shown uniform over angular or thermal modes;
the physical transported infinity boundary, mixed metric vertices,
subtractions and normalization remain unverified. Equation (3) is not the
P1-D curved remainder and has not been Lean-certified. No numerical run is
claimed.

Remaining to-do list: establish mode-uniform estimates and physical boundary
matching, prove the full response and regulator, resolve novelty, complete
the manuscript, and certify supported claims in Lean on GCP.
