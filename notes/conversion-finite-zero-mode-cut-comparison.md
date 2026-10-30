# Finite and zero conversion modes at positive heat time

The later [thermal-gap argument](product-conversion-zero-sector-thermal-gap.md) supplies a conditional large-time endpoint for the stipulated compact zero-sector model, without identifying the source LLL observable.

This complements `conversion-massive-moving-cut-comparison.md` for a fixed
finite set of masses 0<=M<=M_*. It compares compact-model heat traces at
positive time. It does not identify the physical lowest-Landau-level
observable or establish the large-time endpoint of its action.

Assume the common two-dimensional compact orbit domain V, uniform graph and
scalar multiplier hypotheses of the massive comparison, including the
W1,infinity O(delta) difference of base fields and directions after pullback.
For M in [0,M_*], r in [0,1], and real base fields write
A_delta=E_delta(Q_delta+M F_delta)E_delta on V. Multiplication by E_delta
and its inverse preserves V and has uniformly bounded commutators with
Q_delta. The graph inequality and product rule imply

  ||v||_V <= C (||A_delta v||+||v||),                          (1)

uniformly in delta, r, and M in the fixed bounded interval. Indeed, recover
Q_delta(E_delta v) from E_delta^(-1) A_delta v by subtracting the bounded
term M F_delta E_delta v, then recover Q_delta v by commuting through E.
The reverse bound ||A_delta v||<=C||v||_V is immediate. No inverse of A or
positive spectral gap is used.

As in `conversion-complex-sectorial-gap.md`, the holomorphic complexified
forms q_delta,z differ from the real positive form by at most C|z| in the
V form norm. Equation (1) yields common shifted coercivity and a common
sectorial angle on a sufficiently small polydisc, uniformly over the finite
mass interval. The moving-cut coefficient and field assumptions give

  |q_delta,z(v,h)-q_0,z(v,h)| <= C delta ||v||_V||h||_V.       (2)

The shifted contour and form resolvent argument in
`product-frame-moving-cut-response-rate.md` then gives
||T_delta(t)-T_0(t)||<=C delta for 0<t<=1. Uniform H->V heat smoothing and
V->H in S_p, for any fixed 2<p<3, give S_p bounds C t^(-1/2). Interpolation
and a three-factor Schatten telescope, as in the massive comparison, yield

  ||T_delta(t)-T_0(t)||_1 <= C delta^(1-p/3) t^(-1-p/6),      (3)

for 0<t<=1. Fixed-radius Cauchy estimates transfer this bound to first and
mixed parameter derivatives. A moving scalar insertion with the O(delta)
operator-norm bound from `source-scalar-insertion-collar-pullback.md` adds
a term C delta t^(-1), absorbed by (3). Any fixed finite collection of modes,
with its specified finite multiplicities, therefore obeys the same rate.
For delta=exp(-4L/epsilon), its contribution on [epsilon,1] against any
fixed power of t tends to zero as epsilon decreases, under the stated uniform
assumptions.

At M=0, A_r(b)=exp(-r b/2) Q exp(-r b/2), so the positive-time form and
heat comparison above remains meaningful. This observation does not make the
massive endpoint action formula valid: a kernel or lack of infrared decay
can invalidate the integral to infinite proper time. The source allocates
the LLL separately, as described in `source-angular-zero-mode-allocation.md`;
its cocycle, state, normalization and subtraction must be matched on their
own terms, not inferred from (3).

The bounds compare compact local-projector models. They do not prove the
transported physical boundary, the P1-D curved remainder, common regulator
or Lean certification. No numerical calculation was used.

Remaining to-do list: match the physical LLL and massive observables and
boundary, establish the curved remainder and regulator, resolve novelty,
complete the manuscript, and certify supported claims in Lean on GCP.
