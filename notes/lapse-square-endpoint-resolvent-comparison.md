# Endpoint trace and changing-cut comparison for the lapse square model

This continues `lapse-square-collar-source-poisson.md`. It gives a fixed-mode
operator-norm comparison for the declared positive square and local cut
projectors. It does not prove physical Euclidean matching, a common regulator,
or a Lean theorem.

Use the full and cut model squares L=P_nu*P_nu, L_ell=P_nu,ell*P_nu,ell
with the same real separated coefficients and local boundary condition, and
assume their self-adjoint composition domains and local H2 regularity as in
the previous note. Let M>0 and g be arbitrary in the full Hilbert space.
Write psi=(L+M^2)^(-1)g and xi=f^2(H_mu+i nu)psi=f P_nu psi. Assume on a
fixed outer interval of length L0>0 that f and f^-1 are bounded, a is
bounded, and all coefficients have the regularity required by the previous
Poisson lift. Let Q=|nu|+|mu| ||a||_infinity on that interval.

Spectral calculus and positivity give

    ||psi||_2 <= M^(-2)||g||_2,
    ||P_nu psi||_2 <= (2M)^(-1)||g||_2.                (1)

The second bound follows from sup_(lambda>=0) sqrt(lambda)/(lambda+M^2)
=1/(2M). Thus ||xi||_2<=||f||_infinity ||g||_2/(2M). The inhomogeneous flux
system of the previous note, restricted to the fixed outer interval, implies

    ||psi'||_2 <= Q||psi||_2+||f^-1||_infinity^2 ||xi||_2,
    ||xi'||_2 <= Q||xi||_2+M^2||psi||_2+||g||_2.      (2)

The one-dimensional H1 trace inequality on this fixed interval now yields

    |Y(s1)| <= C_T (1+Q)(1+M^(-1)+M^(-2)) ||g||_2,  (3)

where Y=(psi,xi) and C_T depends only on L0 and the stated fixed coefficient
bounds. This uses the full solution and includes arbitrary g in the removed
collar. It is not a bound uniform at M=0.

Let J_ell restrict to the retained interval and let
v=(L_ell+M^2)^(-1)J_ell g. Then w=J_ell psi-v satisfies the homogeneous
square equation in the interior and has the same other-end condition. Its
boundary residual at the cut is the B-perpendicular component of Y(s0),
because v satisfies the local cut square condition. Combining (3), the
variation-of-constants estimate in the previous note, and its positive-mass
Poisson lift gives

 ||J_ell(L+M^2)^(-1)-(L_ell+M^2)^(-1)J_ell||
   <= C_P(1+M^(-2)) [ (exp(h)-1) C_T(1+Q)(1+M^(-1)+M^(-2))
                         + exp(h) sqrt(ell) ],           (4)

where h is the explicit collar integral in
`lapse-square-collar-boundary-transfer.md` and C_P is the finite local lift
constant from `lapse-square-collar-source-poisson.md`. The coefficient and
lift bounds are uniform for cuts inside a fixed small collar. At fixed
mu,nu,M and bounded collar coefficients, h=O(ell), so (4) is O(sqrt(ell)).
The two scalar boundary residuals determine w uniquely, so this restriction
difference has rank at most two for each mode. Formula (4) includes inputs
on the excised collar through both terms of the residual estimate.

The estimate does not include the separate full-space removed-collar term
needed when extending the cut resolvent by zero. The polynomial mode and
inverse-mass dependence, exp(h), radial localization, angular/thermal
summation, infrared mass integration, and the physical unitary/domain
identification all need separate control before a trace or regulator claim.
No numerical calculation is used.

Remaining to-do list: control the full-space removed collar and summed
physical modes, match the Euclidean square and boundary, prove the complete
response and common regulator, resolve prior art, prepare the manuscript,
and certify supported claims in Lean on GCP.