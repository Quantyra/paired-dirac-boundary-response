# Nonreal resolvent endpoint and Poisson bounds for the model square

This extends `lapse-square-endpoint-resolvent-comparison.md` and
`inhomogeneous-lapse-square-transfer.md` to nonreal square-resolvent
parameters. It applies to their separated local-projector model, not yet to
the physical Euclidean square or a summed heat trace.

Let L=P_nu*P_nu be the stipulated nonnegative self-adjoint interior square,
with the stated local H2 trace regularity, and put
R_zeta=(L+M^2-zeta)^(-1), eta=|Im zeta|>0, k=|zeta-M^2|.
For psi=R_zeta g, spectral calculus yields

  ||psi|| <= eta^(-1)||g||,
  ||P_nu psi|| <= (eta^(-1/2)+sqrt(k)/eta)||g||.               (1)

For the second bound, for lambda>=0 put d=|lambda+M^2-zeta|. Then
lambda<=d+k and d>=eta, so sqrt(lambda)/d<=eta^(-1/2)+sqrt(k)/eta.
This bound is not asserted uniform as eta tends to zero.

Set xi=f P_nu psi and Q=|nu|+|mu| ||a||_infinity on the fixed endpoint
interval of the earlier note. The inhomogeneous first-order system gives

  ||psi'|| <= Q||psi||+||f^(-1)||_infinity^2 ||xi||,
  ||xi'|| <= Q||xi||+k||psi||+||g||.                            (2)

With the one-dimensional trace inequality on that fixed interval, (1)--(2)
give the concrete endpoint bound

  |(psi,xi)(s1)| <= C_T [1+(1+k)/eta
             +(1+Q)(eta^(-1/2)+sqrt(k)/eta)] ||g||.            (3)

C_T depends on the fixed interval and f bounds; the coefficient Q remains
explicit. All norms on the right refer to the full interior space, with
coefficient suprema taken on the fixed endpoint interval.

For boundary data r,gamma in Ran(P_-), use the same H2 endpoint lift v as
in `lapse-square-collar-source-poisson.md`. Let C_lift bound
||v||+||(L+M^2-zeta)v|| in terms of |r|+|gamma|; it depends on the fixed
local coefficient bounds and polynomially on the displayed mode parameters
and |zeta|. Then

  w=v-R_zeta (L+M^2-zeta)v

has the prescribed square boundary data and solves the homogeneous equation.
The resolvent term has zero data because it is in Dom L. Its norm obeys

  ||w|| <= C_lift (1+eta^(-1)) (|r|+|gamma|).                 (4)

Uniqueness follows from the nonreal resolvent. This includes M=0 at fixed
nonreal zeta, but it supplies no zero-frequency or eta->0 infrared limit.

For full and cut local-projector realizations with compatible domains, apply
(3) to the full solution, the exact transfer and source estimate in
`inhomogeneous-lapse-square-transfer.md` to its collar data, and (4) to the
homogeneous interior difference. This gives the fixed-mode operator bound

  ||J R_zeta-R_(cut,zeta) J||
   <= C_lift(1+eta^(-1)) [(exp(h_zeta)-1) C_end
                              +exp(h_zeta) sqrt(ell)],          (5)

where C_end is the bracket and constant in (3), and h_zeta is the explicit
integral in the transfer note. The range has dimension at most two per
separated mode. The separately removed-collar portion of the zero-extended
full-space resolvent is not included in (5). The factor exp(h_zeta) can
grow along a contour or angular tower, so (5) alone does not justify
summing modes or integrating a heat contour. Physical domains, time and
angular normalization, contacts and regulator limits remain unverified.
No numerical or Lean certification is claimed.

Remaining to-do list: control summed contour and removed-collar terms, match
the physical boundary and response, establish the curved remainder and
regulator, resolve novelty, complete the manuscript, and certify supported
claims in Lean on GCP.
