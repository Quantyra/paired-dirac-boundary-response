# Localized full-Weyl resolvent comparison at a cut

This combines `full-weyl-symmetric-lapse-transfer.md` and `full-weyl-flux-and-poisson-bound.md` in the local-projector model. It does not identify that cut condition with transported physical infinity data or establish a full response.

Let A_b and A_(ell,b) be the full and cut nonnegative self-adjoint squares, coinciding as differential expressions on the retained interval and having the same condition at the other endpoint. Assume their canonical flux domains, fixed-collar H2 regularity, uniform coefficient bounds, and the endpoint and Poisson estimates in the cited notes. Put R=(A_b-zeta)^(-1), R_ell=(A_(ell,b)-zeta)^(-1), and let J restrict to the retained interval. Suppose zeta lies outside both spectra, with a common resolvent-distance lower bound d>0.

For input g, the difference w=J Rg-R_ell Jg solves the homogeneous equation on the retained interval. Its cut flux residual is the sum of the change in the transported homogeneous plane and the inhomogeneous source displacement. If C_end and C_P are the endpoint and Poisson bounds of `full-weyl-flux-and-poisson-bound.md`, and h_b is the transfer majorant, then

 ||J R-R_ell J|| <= C_P [(exp(h_b)-1) C_end
                                  + C exp(h_b) sqrt(ell)].  (1)

The removed-collar input is included in the second term. The full endpoint flux lies in the two-complex-dimensional plane of the source square; projection of U_b B to the cut residual gives the first term. The retained difference is determined by the two cut residual components together with the same other-end condition, so its range has dimension at most two per separated two-component mode. This rank statement requires uniqueness for the actual cut domain, not just a formal differential equation.

For nonnegative bounded u supported in the fixed collar let S=sqrt(u), U=integral u, U_ell=integral_removed u, and E=1-J*J. Assume, in addition, the local Neumann comparison bounds for some positive lambda_ref,

 ||S(A_b+lambda_ref)^(-1/2)||_2² <= C U,
 ||S E(A_b+lambda_ref)^(-1/2)||_2² <= C U_ell,             (2)

uniformly in the cut. For a contour shift lambda0 with A_b>=lambda0>=0, let z=zeta-lambda0 and delta=dist(z,[0,infinity))>0. Spectral calculus yields

 ||(A_b+lambda_ref)^(1/2) R (A_b+lambda_ref)^(1/2)||
        <= 1+|lambda_ref+zeta|/delta.                       (3)

Using R-J*R_ell J=E R+J*(J R-R_ell J), Schatten Holder and rank at most two give

 ||S(R-J*R_ell J)S||_1 <= 2||u||_infinity B_ell
   + C[1+|lambda_ref+zeta|/delta] sqrt(U U_ell),            (4)

where B_ell is the right side of (1). This is a fixed-mode bound including removed-collar sources. If u=O(y³) in a uniformly comparable collar coordinate then U_ell=O(ell^4), subject to the actual measure and coordinate identification.

The exact flux system, gap and polynomial endpoint/Poisson factors must be uniform in the angular and thermal mode parameters before (4) can be summed along the shifted heat contour. The reference comparison (2), the physical trace weight, and the physical transported boundary are explicit unresolved hypotheses. Neither (4) nor the finite-rank assertion proves a full heat Hessian, common regulator or Lean certificate.

Remaining to-do list: verify uniform reference trace and physical boundary hypotheses, perform the contour and mode sum with all vertices, complete the response and regulator, resolve novelty, finish the manuscript, and certify supported claims on GCP.