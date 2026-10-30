# Localized nonreal cut comparison for the symmetric-lapse square

This combines `symmetric-lapse-nonreal-poisson.md`,
`symmetric-lapse-inhomogeneous-transfer.md`, and the local positive-reference
comparison in `symmetric-lapse-localized-joint-cut-limit.md`. It concerns the
stated local-projector model, not the identified physical infinity boundary
or a renormalized response.

Let L=P*P and L_ell=P_ell*P_ell be the stipulated full and cut
symmetric-lapse squares on their self-adjoint composition domains, with the
fixed outer-collar coefficient, trace and lift hypotheses in those notes.
Let R_zeta=(L+M^2-zeta)^(-1), R_ell,zeta=(L_ell+M^2-zeta)^(-1),
eta_z=|Im zeta|>0, and J restrict to the cut region. Let u>=0 be bounded,
integrable and supported on the fixed outer collar, S=M_sqrt(u),
U=integral u, U_ell=integral_removed u, and E=1-J*J.

The nonreal symmetric-lapse endpoint estimate gives |Y(s1)|<=C_end||g||,
with C_end the explicit right-hand coefficient in its equation (2). The
inhomogeneous transfer and Poisson lift give the restriction comparison

  ||J R_zeta-R_ell,zeta J|| <= B_ell,
  B_ell=C_lift(1+eta_z^(-1))[(exp(h)-1)C_end
            +exp(h)||f^(-1/2)||_infinity sqrt(ell)].            (1)

Here h is the coefficient integral in the transfer note, and the fixed
cut-uniform lift assumption is retained. Both boundary residual components
are included. The range of the difference consists of homogeneous solutions
with the other-end condition and is determined by two complex endpoint
data, so its rank is at most two per separated mode.

For the removed term, the local Neumann form comparison in the joint-cut
note yields a positive lambda=C(1+Q^2), independent of ell, and

  ||S(L+lambda)^(-1/2)||_2^2 <= C_col U,
  ||S E(L+lambda)^(-1/2)||_2^2 <= C_col U_ell.                (2)

By the spectral theorem,

  R_zeta=(L+lambda)^(-1/2) B_zeta (L+lambda)^(-1/2),
  ||B_zeta|| <= 1+|lambda-M^2+zeta|/eta_z.                    (3)

This factorization does not require R_zeta to be positive. With
R_zeta-J*R_ell,zeta J=E R_zeta+J*(J R_zeta-R_ell,zeta J), Schatten Holder
and the rank bound give

 ||S(R_zeta-J*R_ell,zeta J)S||_1
   <= 2||u||_infinity B_ell
     +C_col[1+|lambda-M^2+zeta|/eta_z]sqrt(U U_ell).           (4)

Thus at fixed mode and nonreal zeta the localized trace-norm difference
tends to zero as ell->0, provided the stated collar and lift constants are
uniform and h=O(ell). If u(y)<=K y^3 near the endpoint, U_ell=O(ell^4).
The estimate includes arbitrary input supported in the removed collar.

Equation (4) uses the corrected symmetric-lapse operator and does not assume
that the left-lapse square has the same domain. It still requires independent
verification of the global physical realization and transported boundary.
Its dependence on zeta and mode parameters must be controlled before a heat
contour or angular/thermal sum is used; mixed vertices, physical contacts and
regulator limits remain separate. No numerical or Lean certificate is claimed.

Remaining to-do list: establish physical bundle and boundary matching, prove
the required trace and regulator limits for the full response, resolve
novelty, complete the manuscript, and certify supported claims in Lean on GCP.
