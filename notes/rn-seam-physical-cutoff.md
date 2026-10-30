# RN bridge seam under physical-side remainder cutoff

This connects the physical-side scalar cutoff in `weighted-remainder-cutoff.md`
with the RN seed jet in `rn-seed-cubic-boundary-jet.md`. It is a local
ordinary argument for a radial orbit-conformal family, not a common heat
regulator, physical domain theorem or Lean certificate.

Fix b0>0, X>0 and the frozen RN product-frame seed. Let f0 be its positive
proper-distance coefficient on a fixed collar, with even reflection and
one-sided third jet f0'''(0+)=6a_m/b0³. Let

 beta(y)=c y³+r(y),   beta_e(y)=c y³+q(y/e)r(y),

where r obeys the weighted j<=5 bounds and q is the fixed physical-side
cutoff from the cited note. Define

 Y_e(y)=integral_0^y exp(beta_e(s))ds,
 f_e(Y_e(y))=exp(-beta_e(y)) f0(y),                         (1)

and define Y,f analogously for beta. A bounded scalar ball and a fixed
small collar provide uniform positive upper and lower bounds for dY_e/dy.
Hence Y_e are uniformly invertible on a common shortened Y-collar.

Because r_e=q(y/e)r vanishes near zero, beta_e'''(0+)=6c for every e.
The RN jet calculation applies to every cutoff and to the limit, giving

    [f_e,even''']_0=[f_even''']_0
       =12(a_m/b0³-c/sqrt(X)).                              (2)

Thus this regularization preserves the physical-side cubic jet and its
reflected atom; it does not replace the even cubic by a smooth even double.

The cutoff note gives ||beta_e-beta||_{W^{3,infinity}}=O(e log(1/e))
on the physical side, and the lower derivatives obey the sharper weighted
bounds there. Composing (1) with the uniformly controlled inverse maps
shows f_e->f in W^{3,infinity} on a common shortened collar. One way to
see this is to differentiate the identity Y_e(y_e(Y))=Y through order
three: inverse derivatives are rational polynomials in beta_e and its
first two derivatives with denominators bounded away from zero. The third
derivative of f_e also involves beta_e''' and the smooth seed derivatives.
The W^{3,infinity} convergence and the uniform Lipschitz bounds of lower
derivatives control each product and composition. The third derivative of
beta is uniformly continuous up to the boundary on the physical side,
because its weighted fourth derivative is integrable near zero; therefore
its composition with y_e converges uniformly as well.

The uniform weighted fourth-derivative bound for r_e and the smooth seed,
combined with the inverse-coordinate chain rule, gives a uniform L1 bound
on f_e'''' away from the seam. Together with the fixed atom (2) and fixed
cutoff transitions, this gives uniform TV(f_e,even''') and hence the BV
input to the assembled periodic bridge estimate. These statements require
uniform bounds on the seed and transitions and do not apply automatically to
a varying RN parameter family without uniform parameter control.

This is an approximation of the collar scalar, not a proof that the
physical first-order or square domains agree with the auxiliary reflection.
It also does not identify the full thermal/angular common regulator or prove
the geometric mixed derivative and curved remainder. No numerical
calculation is used.

Remaining to-do list: verify physical domains and regulator matching,
complete geometric response and novelty, prepare the manuscript, and certify
supported results in Lean on GCP.
