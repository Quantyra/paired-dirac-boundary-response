# Weak curvature contact pairing on the reflected half

This completes the local distributional pairing identified in `reflected-curvature-contact-seam-distribution.md` for even stationary cubic directions. It is an identity for the stipulated radial double and does not establish the full physical heat trace.

Let f and R satisfy the assumptions of that note on (-y0,y0). Let u and v be even, smooth away from zero, with |u^(j)(y)|+|v^(j)(y)| <= C |y|^(3-j) for j=0,1,2, and let chi be an even compactly supported smooth localization. Put phi=chi u v. Then phi is even, phi(0)=phi'(0)=0, and |phi'(y)| <= C |y|^5 near zero. The weak radial curvature pairing is

  Q_double(phi)=<Delta R,phi dy/f>
                =-integral_(-y0)^y0 R'(y) phi'(y) dy/f(y).   (1)

Because f,R,phi are even, R' and phi' are odd, so the integrand is even almost everywhere. Hence

  Q_double(phi)=2 Q_half(phi),
  Q_half(phi)=-integral_0^y0 R'(y) phi'(y) dy/f(y).          (2)

R' is bounded on each half. The omitted collar 0<y<delta therefore has absolute contribution at most C delta^6. The explicit delta mass in Delta R has zero pairing because phi(0)=0; (2) retains the entire remaining weak contribution instead of dropping it.

The same half pairing is obtained by integrating the classical Laplacian on [delta,y0] and sending delta down to zero. With the outer endpoint eliminated by the compact support,

 integral_delta^y0 phi Delta R dy/f
    = -integral_delta^y0 R' phi' dy/f
      -phi(delta) R'(delta)/f(delta).                        (3)

The last term is O(delta^6), using bounded R' and phi=O(delta^6), and tends to zero. Thus the half-domain boundary convention agrees with half the doubled weak pairing for this scalar term. No unqualified product of a discontinuous normal derivative with a seam distribution is required.

For smooth approximants, the convergence conditions stated in the preceding note justify passing (1)--(3) to the rough reflected field, provided the evenness, uniform bounds and convergence of phi_j' are retained. The radial weighted cubic approximants satisfy the required local bounds when reflected and smoothed with the stated W2,infinity and local H3 convergence; the complete source-specific approximation must still be checked. The coefficient (4pi)^-1 and the sign and factor -1/60 of the contact formula should be restored when Q is inserted there; (2) itself contains no physical-half normalization.

The geometric response, other local coefficients, projector/trace identification, angular and thermal sums and bolt gluing remain separate. The equality of scalar pairings does not prove equality of the global physical and doubled traces. No Lean certification is claimed.

Remaining to-do list: establish the source trace and weak completion, control full response and gluing, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.