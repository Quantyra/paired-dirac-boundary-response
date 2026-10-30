# Quantitative product-orbit contact comparison

This gives a sufficient joint-cut rate for the compact product-orbit contact
of `product-orbit-contact-joint-limit.md`. It is conditional on the uniform
form, domain and trace estimates below; it does not identify the physical
boundary regulator or prove a subtracted response.

Let eta in (0,1] bound both the common-domain form difference and the
operator-norm differences of the two bounded insertions, with all insertion
norms uniformly bounded. Work on the fixed two-dimensional orbit Hilbert
space after the unitary pullback. Assume uniform sectorial form constants,
H1 smoothing and S_3 membership of the fixed H1->L2 embedding. Assume also
the uniform positive-time semigroup operator estimate

  ||K_eta(t)-K_0(t)|| <= C eta,  0<t<=1,              (1)

as in the orbit analogue of `product-frame-moving-cut-response-rate.md`.
For real base fields, both semigroups are contractions. Uniform smoothing
and the embedding give ||K_eta(t)||_3+||K_0(t)||_3<=C t^(-1/2).
Interpolating between S_3 and operator norm, then telescoping four equal-time
semigroup factors, yields

  ||K_eta(t)-K_0(t)||_1 <= C eta^(1/4) t^(-15/8),
  ||K_eta(t)||_1+||K_0(t)||_1 <= C t^(-2), 0<t<=1.  (2)

The time exponent in the first bound is 3/8 from the interpolated difference
plus 3/2 from the remaining three factors. These are crude upper bounds, not
sharp heat asymptotics.

For the contact I_eta(t)=T^(-1) integral_0^t Tr[U_eta K_eta(t-s)
V_eta K_eta(s)] ds, split the s integral at t/2. On each half one heat
factor has time at least t/2. Telescope the two multipliers and two heat
factors, placing the long factor or its difference in trace norm and the
short factor or its difference in operator norm. Equations (1)-(2) give

  |I_eta(t)-I_0(t)| <= C eta^(1/4) t^(-1), 0<t<=1.  (3)

The bound includes fixed T and the declared trace normalization. For any
q>0 and lower proper-time cutoff epsilon,

  integral_epsilon^1 t^(-q)|I_eta(t)-I_0(t)| dt
      <= (C/q) eta^(1/4) epsilon^(-q).                 (4)

Thus any joint path with eta^(1/4) epsilon^(-q)->0 makes this particular
weighted contact difference vanish. For the model rate
eta<=C[delta+e^3(1+|log e|)], this is an explicit sufficient condition;
which q is relevant must be derived from the full source weight, including
Theta'(t) and the action measure. Equation (4) does not claim that those
weights or their subtractions have already been matched, and it does not
supply path independence.

The result concerns the specified product orbit with its local cut
projector. It leaves the physical source/domain map, moving density,
geometric vertices, angular normalization and finite counterterms open. No
numerical run or Lean certificate is claimed.

Remaining to-do list: verify the uniform orbit hypotheses and physical
matching, determine the complete source weight and subtractions, resolve
prior art, prepare the manuscript, and certify supported claims in Lean on
GCP.