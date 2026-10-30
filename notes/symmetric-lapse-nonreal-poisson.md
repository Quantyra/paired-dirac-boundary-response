# Nonreal symmetric-lapse Poisson and endpoint estimate

This extends `symmetric-lapse-localized-joint-cut-limit.md` and
`symmetric-lapse-inhomogeneous-transfer.md` to a fixed nonreal square
resolvent. It concerns their stipulated local-projector model; physical
global domains and the full response remain to be identified.

Let P=sqrt(f)(H_mu+i nu)sqrt(f), L=P*P on the self-adjoint nonnegative
square domain described in `symmetric-lapse-square-domain-traces.md`.
Assume f,f^-1 and their first two weak derivatives are bounded on a fixed
outer collar, with f bounded away from zero there. Let
R_zeta=(L+M^2-zeta)^(-1), eta_z=|Im zeta|>0, k=|zeta-M^2|, and
psi=R_zeta g. Spectral calculus gives

  ||psi|| <= eta_z^(-1)||g||,
  ||P psi|| <= (eta_z^(-1/2)+sqrt(k)/eta_z)||g||.             (1)

This is the same spectral inequality as in the left-lapse note, applied to
the actual symmetric-lapse positive square. In its collar flux variables
eta=sqrt(f)psi and xi=sqrt(f) P psi, (1) and the first-order system in
`symmetric-lapse-inhomogeneous-transfer.md` bound the H1 norms of eta and
xi. Explicitly, with Q=|nu|+|mu| ||a||_infinity and fixed collar constants,

  ||eta||+||xi|| <= C[eta_z^(-1)+eta_z^(-1/2)
                            +sqrt(k)/eta_z]||g||,
  ||eta'||+||xi'|| <= C[(1+Q+k)/eta_z
                +(1+Q)(eta_z^(-1/2)+sqrt(k)/eta_z)+1]||g||.  (2)

The source term in xi' is f^(-1/2)g, while the k term is k f^(-1)eta;
all lapse factors are controlled on the fixed collar. A fixed-interval H1
trace inequality gives the same right-hand side, with a larger C, for the
endpoint magnitude |(eta,xi)(s1)|. The constants are not claimed uniform
as eta_z tends to zero or mode parameters tend to infinity.

For prescribed boundary data r,gamma in Ran(P_-), choose a smooth compactly
supported eta-lift near the cut with P_- eta=r, P_+ eta=0 at the endpoint.
The coefficient of eta' in xi=f(H_mu+i nu)eta is -i f sigma_2, which maps
the complementary eigenspace isomorphically to Ran(P_-). Thus its P_+ normal
derivative can be chosen to impose P_- xi=gamma. Set v=f^(-1/2)eta for
this lift. The fixed-collar W2,infinity bounds imply

  ||v||+||(L_formal+M^2-zeta)v||
      <= C_lift (|r|+|gamma|),                                 (3)

with C_lift polynomial in the mode parameters and |zeta| under fixed
coefficient bounds. The lift need not obey the local square boundary
condition. Define

  w=v-R_zeta (L_formal+M^2-zeta)v.                             (4)

The resolvent term has zero square boundary traces by the assumed composition
domain. Therefore w has the prescribed data and solves the homogeneous
equation; its norm is at most C_lift(1+eta_z^(-1))(|r|+|gamma|).
Uniqueness requires the stated square domain and the same condition at any
other endpoint, since the difference lies in Dom L and zeta is nonreal.

Combining the endpoint bound, (4), and the exact inhomogeneous transfer in
the companion note gives a fixed-mode restriction-resolvent comparison for
local projectors. Its constants retain the transfer factor exp(h) and the
endpoint/lift factors displayed above. No full-space trace-norm, angular or
thermal sum, heat contour, physical infinity matching, or common regulator
is asserted. No numerical or Lean certification is claimed.

Remaining to-do list: establish the physical square domains and transported
boundary, control the corrected resolvent and response in the required trace
norm, resolve novelty and regulator, complete the manuscript, and certify
supported claims in Lean on GCP.
