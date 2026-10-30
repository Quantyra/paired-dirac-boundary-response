# Common-cutoff conversion with cutoff-dependent local coefficients

This states the precise conditional limit obtained by combining the
geometric and contact estimates. It does not assert that the physical
hypotheses hold, prove the distinct P1-D remainder, or provide Lean
certification. It clarifies which subtraction permits a joint limit.

For a scalar cutoff e and heat cutoff t, let the source-normalized
symmetrized geometric term G_e(t) and contact I_e(t) satisfy, uniformly in e,

 G_e(t)=g_{-1,e}/t+g_{0,e}+t g_{1,e}+R^G_e(t),
 I_e(t)=i_{0,e}+t i_{1,e}+t² i_{2,e}+R^I_e(t),            (1)
 |R^G_e(t)|<=K_G t^(3/2)+E_G(t),
 |R^I_e(t)|<=K_I t^(5/2)+E_I(t),

where E_G,E_I are bounded by fixed polynomials in 1/t times exp(-c/t).
Assume all displayed coefficients are uniformly bounded, and the angular
factor has the differentiable expansion

 Theta=C/t+H0+H1 t+O(t²),
 Theta'=-C/t²+H1+O(t),                                      (2)

with uniform constants. These are hypotheses of the physical transfer;
the auxiliary estimates and conditional matching notes give routes to them.

Define J_e(t)=Theta G_e(t)+2Theta' I_e(t). Direct multiplication gives

 J_e(t)=d_{-2,e}/t²+d_{-1,e}/t+d_{0,e}+R_e(t),           (3)
 d_{-2,e}=C(g_{-1,e}-2i_{0,e}),
 d_{-1,e}=H0 g_{-1,e}+C(g_{0,e}-2i_{1,e}),
 d_{0,e}=H1(g_{-1,e}+2i_{0,e})+H0 g_{0,e}
                                      +C(g_{1,e}-2i_{2,e}).

Uniform coefficient and angular bounds, (1) and (2) give

 |R_e(t)| <= A sqrt(t)+B t^(-N) exp(-c'/t)                 (4)

for fixed A,B,N,c'>0 and small t. Terms from the O(t²) angular remainder
are O(t) after multiplication by the displayed coefficient polynomials;
Theta R^G and 2Theta' R^I are O(sqrt(t)) plus exponential terms.
Hence the remainder in (3), after subtraction of the *cutoff-dependent*
local polynomial, tends to zero for every joint path e->0,t->0.
If d_{0,e}->d0, the finite part after subtracting the two inverse powers
tends to d0 along every such path.

This does not imply the same joint limit when one subtracts d_{-2,0}/t²
and d_{-1,0}/t using only pointwise convergence d_{j,e}->d_{j,0}.
For example d_{-1,e}=e with t=e gives an uncompensated constant. A fixed
limiting counterterm needs quantitative coefficient rates tied to the
chosen relation between e and t, or an ordered limit taking e->0 first.
If the source's exact cancellation g_{-1,e}=2i_{0,e} holds at each cutoff,
d_{-2,e}=0 identically; it must be established rather than inferred from
a limit.

The coefficient identifications and explicit finite expression for the
source convention are audited in `curved-conversion-finite-coefficient.md`.
Here (1), the fixed-coordinate chain rule, physical domain/collar matching,
thermal normalization and convergence of the finite coefficient remain
separate requirements. The conditional O(sqrt(t)) bound is an endpoint
conversion estimate, not an admission margin or a proper-time-integrated
curved response. No numerical calculation is used.

Remaining to-do list: verify the physical hypotheses and coefficient limits,
finish the geometric and regulator proof, decide novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.
