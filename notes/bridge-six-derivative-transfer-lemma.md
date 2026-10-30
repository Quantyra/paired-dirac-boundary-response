# Six-derivative transfer for the local bridge integrand

This checks the integration-by-parts step used in section 3 of the frozen [curved paired heat bridge](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-curved-paired-heat-bridge.md) and invoked for the contact in section 2 of the frozen [conversion source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md). It does not by itself prove either complete heat remainder.

## Transfer lemma

Let chi be compactly supported with derivatives through order three in L1. Let f_1,...,f_N be smooth bounded one-dimensional functions with derivatives through order three bounded. Fix shifts a_i and nonnegative integers p_i with sum p_i<=6. Then

  |integral chi(y) product_i f_i^(p_i)(y+a_i) dy|
       <= C_N (sum_(j=0)^3 ||chi^(j)||_1)
                    product_i max_(0<=j<=3)||f_i^(j)||_infinity.  (1)

The constant is independent of the shifts. For total order at most six, at most one p_i exceeds three. If none does, the result is immediate. Otherwise let p_1=3+r, with 1<=r<=3. Integrate by parts r times, moving those derivatives from the first factor onto chi times the remaining factors. In every Leibniz term, the derivatives landing on chi have order at most r, while the total order on all remaining factors is at most (6-p_1)+r=3. The first factor is now of order three. Thus every factor is controlled by its W3,infinity bound and every cutoff derivative by its L1 norm. The finite binomial and multinomial coefficients give C_N. No inverse shift or inverse heat scale appears.

The same argument applies when factors are evaluated at different bridge times and integrated over those times: prove the bound for each set of shifts, then use Fubini. Powers of the inverse bridge average A_h are handled by differentiating A_h^-alpha before the transfer; assuming a uniform lower bound |A_h|>=a>0, each resulting term has finitely many shifted coefficient factors and a bounded inverse power. Derivatives falling on an inverse power during transfer similarly produce finite products of derivatives of A_h, each an average of products of shifted f derivatives. The derivative-order accounting is unchanged. Bridge-time weights are independent of y and can be bounded by a polynomial in the bridge supremum. Its finite moments then give an integrable majorant. These assertions assume the lower bound on A_h and the necessary uniform f bounds; the complex tube needs its own verified lower bound on |A_h|.

For the contact insertion, the extra factor v(y+h xi_alpha) is simply another shifted factor, and u(y) can be absorbed into the compactly supported cutoff provided its first three derivatives have the required L1 bounds. The sixth-order transfer still works whenever the total spatial derivative order before transfer is at most six. This establishes the precise combinatorial part of the source's claim, not the claim that every term in its complete differentiated contact has that total order.

For rough reflected fields, approximate with smooth functions having uniform W3,infinity bounds and convergence in W2,infinity and local H3. After transfer, all factors have at most three derivatives; boundedness and local H3 convergence, together with compact support and Fubini, pass the finite integrated expressions to the limit. This permits a jump in the third derivative without assigning a pointwise fourth derivative. It does not imply convergence in W3,infinity, and it requires an approximation and common domination for the specific reflected fields.

The remaining work is to check the derivative count for every term, the coefficient subtractions and Taylor remainder, thermal-image and complex-tube bounds, and gluing to the actual boundary and bolt. The lemma alone gives no bound for the whole physical response and no Lean certificate.

Remaining to-do list: complete that bridge audit, match the physical domain and normalization, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.