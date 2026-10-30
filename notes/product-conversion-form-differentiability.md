# Form differentiability for one product conversion mode

This verifies the individual-mode positive-time differentiability hypothesis used in `product-conversion-neighborhood-tower-derivative.md`, for the stipulated compact product model. It relies on the stated first-order projector realization and regularity assumptions; it does not establish those assumptions for the physical source or prove a common-regulator limit.

## Holomorphic forms and trace-class heat

Fix one smooth compact product cut, one M>=0 and r in [0,1]. Let Q be skew-adjoint on the H1 projector domain V, with an H1 graph estimate, and let b,u,v be real W1,infinity scalar multipliers preserving V. For z=(z1,z2) complex near zero put b_z=b+z1 u+z2 v and

  A_z=exp(-r b_z/2) [Q+M exp(b_z)] exp(-r b_z/2),  Dom A_z=V.

The product rule and the exponential power series in W1,infinity make z->A_z holomorphic as a bounded map V->L2. With the inner-product convention arranged to make the first form variable linear, define

  a_z(f,g)=<A_z f,A_(conj z) g>,  f,g in V.                  (1)

This is holomorphic in z on the common form domain. At a real base point it is the closed positive form of P=A* A. The H1 graph estimate and bounded scalar congruence imply a shifted coercivity inequality a_0(f,f)+c||f||²>=a||f||_H1². A sufficiently small polydisc retains uniform shifted coercivity and sectoriality for this fixed cut, base field and M. Its radius need not be uniform in M. The holomorphic form theorem and its semigroup consequence, for example [Arendt and ter Elst](https://arxiv.org/abs/1707.00923), give operator-norm holomorphic exp(-t P_z) for each t>0, where P_z is the sectorial operator associated with (1). For nonreal z this continuation is not the positive square A_z* A_z.

For t on a fixed positive-time interval and z on a smaller closed polydisc, sectorial smoothing maps L2 to V uniformly. On the fixed compact two-dimensional orbit, the inclusion V->L2 lies in Schatten S_p for every p>2. Hence the heat operators are uniformly bounded in S_p there. Interpolation with operator-norm holomorphy yields S_4 holomorphy, and the four-factor semigroup identity gives trace-class holomorphy by Schatten Holder. The insertion U=M_u is bounded, so z->Tr[U exp(-tP_z)] is holomorphic as well. This establishes the individual real-parameter differentiability required by the tower argument, without assuming a constant composition domain for P_z.

## Form-Duhamel identity

At the real base point let H=1+P and K_s=exp(-sP). The derivative form a'_v is bounded in the H^(1/2) form norm, so it has the representation H^(1/2) B_v H^(1/2) for a bounded B_v. Differentiating the variational resolvent identity and using the sectorial contour, or equivalently integrating the resulting form-Duhamel formula, gives

  partial_v Tr[U K_t]
     = - integral_0^t Tr[U K_(t-s) H^(1/2) B_v H^(1/2) K_s] ds. (2)

For each interior s the integrand is trace class. Split whichever heat time is at least t/2; one long piece is trace class and the energy-weighted pieces are bounded by C(1+s^(-1/2)) or its reflected counterpart. Thus the trace-norm integrand has an endpoint-integrable majorant. The formula includes the full form derivative, including its mass and commutator components; it does not omit a boundary or second vertex by a formal trace manipulation.

These steps are for one fixed M, with a possibly M-dependent holomorphic neighborhood. The uniform real-parameter form bound and all-mode majorant in `product-conversion-neighborhood-tower-derivative.md` are what permit summing the first derivatives over the recorded angular tower on [epsilon,T]. Together, subject to the actual product-domain and grading hypotheses, they justify the source-model conversion's first two seed jets at positive cutoff. They do not justify a uniform complex polydisc over all M, a moving infinity boundary, the physical-half normalization, or epsilon->0. No numerical or Lean certification is claimed.

Remaining to-do list: verify the source bundle, boundary and normalization, establish the subtracted common-regulator limit, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.