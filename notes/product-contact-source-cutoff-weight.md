# Source cutoff weight for the product-orbit contact

This applies the conditional contact rate in
`product-orbit-contact-cutoff-rate.md` to the actual positive-cutoff
conversion formula in the pinned `current-variable-contact-conversion.md`,
section 1. The cutoff in that formula is evaluated at t=epsilon; it is not
an extra integration variable in the displayed conversion identity.

The source writes

  J_epsilon''[u,v] = Theta(epsilon)/2 [D_v T(u)+D_u T(v)]
                       +2 Theta'(epsilon) I_epsilon(u,v), (1)

with the declared physical-half time-reduced trace and the complete massive
angular tower. For fixed q>=0 and C>0, the pinned angular source records
M_n^2=n(n+q)/C, d_n=2(q+2n), n>=1, and the counting estimate

  N(lambda)=sum_(M_n^2<=lambda) d_n <= 4 C lambda.      (2)

Using the Stieltjes integral and integration by parts gives
Theta(t)<=4 C/t. Since x exp(-t x)<=[2/(Euler-e t)]exp(-t x/2),

  |Theta'(t)|=sum_n d_n M_n^2 exp(-t M_n^2)
       <= 16 C/(Euler-e t^2), t>0.                     (3)

The Euler constant in the denominator is the number exp(1), not the field
cutoff. This bound uses the whole tower, not a finite angular truncation.

Under the product-orbit comparison hypotheses and a confirmed identical
source normalization, the previous note gives

  |I_eta(epsilon)-I_0(epsilon)|
        <= C_1 eta^(1/4) epsilon^(-1).                 (4)

Equations (1), (3), and (4) imply for the isolated contact difference

  |2 Theta'(epsilon)[I_eta(epsilon)-I_0(epsilon)]|
       <= C_2 eta^(1/4) epsilon^(-3).                 (5)

Thus eta^(1/4) epsilon^(-3)->0 suffices for this contact comparison at the
source cutoff. With the model bound
eta<=C[delta+e_field^3(1+|log e_field|)], the example

e_field=epsilon^9, delta=exp(-4L/epsilon), L>0 gives an upper bound
O(epsilon^(15/4)(1+|log epsilon|)^(1/4)) plus an exponentially small term.
This uses one chosen joint path, with all cut parameters fixed during each
regulated calculation. It does not imply path independence.

The source formula also contains both geometric terms, local subtractions,
and its final action normalization. This bound neither establishes their
limits nor proves that the model's projector, orbit trace, half factor and
physical source map are the source ones. Nor does it supply a standalone
proper-time integral for J_epsilon. No numerical run or Lean certificate is
claimed.

Remaining to-do list: verify the physical orbit and trace identification,
control geometric and subtraction terms under the common regulator, resolve
prior art, prepare the manuscript, and certify supported claims in Lean on
GCP.