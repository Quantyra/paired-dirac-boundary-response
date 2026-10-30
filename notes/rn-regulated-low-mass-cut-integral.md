# Low-mass interval with an explicit infrared cutoff

This extends `rn-regulated-high-mass-cut-integral.md` to a positive
low-mass interval for the same canonical separated model. It does not remove
the infrared cutoff, identify the physical determinant regulator, or certify
Lean.

Fix M_*>C_a/sqrt(2), choose 0<M_min<=min(1,M_*), and use the same localized
square-resolvent difference D_ell(M), angular heat weight and cut projector
as in that note. The model low-mass integral is

    integral_(M_min)^M_* 2M exp(-epsilon M²) D_ell(M) dM, (1)

with 0<epsilon<=1. For any nonnegative self-adjoint L and 0<M<=M_*,
spectral calculus gives the positive operator inequality

    (L+M²)^(-1) <= (M_*²/M²) (L+M_*²)^(-1).              (2)

Indeed (lambda+M_*²)/(lambda+M²)<=M_*²/M² for lambda>=0. Thus the
localized Hilbert--Schmidt square norms used in the removed-collar argument
are at most M_*²/M² times their corresponding fixed-M_* bounds. Applying
Schatten Holder and summing the fixed-M_* comparison over angular modes gives

    removed part of (1)
       <= C sqrt(U U_ell) tau^(-1/2) log(M_*/M_min).       (3)

The constant depends on M_*, the fixed collar and seed; no global angular gap
is assumed. The Gaussian mass regulator was bounded by one here.

The first-order factorization and rank-two boundary correction of
`rn-boundary-square-retained-correction.md` apply for every M>0, not only
above the auxiliary comparison threshold. Expanding their explicit mode
bound as in the high-mass note, summing with the angular heat factor and
integrating 2M over [M_min,M_*] gives

 retained part of (1)
  <= C ||u||_infinity sqrt(ell) [tau^(-1)
       + tau^(-5/4)(1+log(M_*/M_min))
       + tau^(-3/2) M_min^(-1/2)
       + tau^(-7/4) M_min^(-1)].                           (4)

For example, the last mass integral is proportional to
integral M^(-2)dM and is controlled by M_min^(-1). The constants absorb
fixed upper-end terms. Equations (3)--(4), together with the high-mass
bounds, control the entire model mass interval [M_min,infinity) under the
stated heat and exponential weights. For cubic u, U_ell=O(ell^4), so the
removed-collar factor in (3) is O(ell²).

For fixed M_min,tau,epsilon>0 the bound tends to zero as ell->0. Sending
M_min to zero jointly requires additional rate conditions, and these upper
bounds do not prove that the infrared limit exists or diverges. The actual
physical mass integration, Euclidean domain and lapse, angular/thermal
normalization, subtractions and metric vertices remain unmatched. In
particular this is not the full quantum response or an admission margin. No
numerical calculation is used.

Remaining to-do list: resolve the infrared and physical regulator limits,
match the Euclidean and boundary domains, complete response and prior art,
recover the pending GCP run, prepare the manuscript, and certify supported
claims in Lean.