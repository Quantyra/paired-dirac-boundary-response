# Proper-time differentiation of the positive-mass conversion tower

This supplies the large-time and differentiation step assumed in `graded-conversion-regulated-endpoints.md` for the stipulated real compact product model at a fixed positive cutoff. It retains the complete nonzero angular tower. It does not identify the physical source trace or remove the ultraviolet cutoff.

## Setup

Use the skew-adjoint product-orbit Q_delta, real W2,infinity scalar b, domain-preserving multipliers and smooth compact cut assumptions of `product-mass-uniform-h2-tower.md`. Define

  A_r=exp(-r b/2)[Q_delta+M exp(b)]exp(-r b/2),
  P_r=A_r* A_r,  Pbar_r=A_r A_r*,  0<=r<=1.                (1)

Assume the corresponding adjoint first-order H2 regularity, and the domain-preserving grading Gamma satisfying Gamma Q_delta Gamma=-Q_delta and commuting with scalar b. These hypotheses give Gamma A_r Gamma=A_r* and hence unitary equivalence of the actual composition squares. For the nonzero source tower take M_n²=n(n+q)/b_sphere² and d_n=2(q+2n), n>=1, with q>=0 and b_sphere>0. Then M_n>=M_1>0. A finite zero-mode sector is separate and not covered by the large-time argument below.

## Uniform derivative and proper-time bound

For fixed b,

  dot A_r=-(b A_r+A_r b)/2.                                   (2)

Since [A_r,b]=E_r[Q_delta,b]E_r is bounded uniformly, dot A_r is bounded from the first-order form domain to L2 by C_B(||A_r f||+||f||), uniformly in r, cut, b and M. Thus the derivative form of P_r has norm at most C_B in the H=(1+P_r) form norm. The same form and trace-Duhamel argument as `product-conversion-form-differentiability.md`, applied to the r parameter, gives for t>0

  |partial_r Tr exp(-t P_r)|
     <= C_B t(1+t^(-1/2))² Tr exp[-(t/4)P_r].                (3)

The long-factor split controls both insertion-time endpoints. The mass-uniform H2 heat bound and the real gap give, with g=exp(-4B), for a fixed epsilon>0 and s0=min(epsilon/8,1),

  Tr exp[-(t/4)P_r]
     <= C_(B,epsilon) exp(-g M² t/8) exp(-g M² s0/2),
                         t>=epsilon.                          (4)

Indeed split off t/8 using the gap, and use monotonicity plus the fixed-time heat bound at s0<=t/8 on the remainder. Summing the second Gaussian over d_n is finite. The first Gaussian is bounded by exp(-g M_1² t/8), so (3)--(4), multiplied by dt/t, are integrable uniformly over r and the nonzero tower on [epsilon,infinity). The undifferentiated action and the cutoff endpoint traces have the same type of summable bounds. Thus differentiation under the proper-time integral and sum is justified for this model, assuming the individual-mode form differentiability and trace-cyclic identities established under the cited compact-domain hypotheses.

## Endpoint identity

The form identity for dot P_r, heat cyclicity and the polar intertwining of A_r with its partner give, for each t>0,

  partial_r Tr exp(-tP_r)
     = t Tr[b P_r exp(-tP_r)+b Pbar_r exp(-tPbar_r)].        (5)

Every term is trace class after heat smoothing. The derivative of each Tr[b exp(-tP)] in t is minus its corresponding trace in (5). The mass gap and fixed-time trace bounds make both upper endpoints tend to zero. Consequently

  partial_r [1/2 integral_epsilon^infinity Tr exp(-tP_r) dt/t]
   = 1/2 Tr[b(exp(-epsilon P_r)+exp(-epsilon Pbar_r))].      (6)

The grading makes the two traces equal because it commutes with b. The uniform bounds above justify summing (6) with all d_n and integrating in r from zero to one. Thus the positive-cut conversion identity for the entire nonzero angular tower follows for the stipulated model without assuming the proper-time derivative is integrable as an extra hypothesis. A separately specified zero-sector or other source term must be treated on its own; it is not silently assigned a positive gap.

The estimate is for fixed epsilon>0. It does not establish convergence as epsilon tends to zero, match the product cutoff to physical infinity, include the full Weyl angular vertices, or verify the source's per-exterior/time normalization. No numerical or Lean certification is claimed.

Remaining to-do list: verify the physical bundle, boundary and trace normalization; prove the common ultraviolet and cut limits including the zero sector; resolve novelty; finish the manuscript; and certify supported claims in Lean on GCP.