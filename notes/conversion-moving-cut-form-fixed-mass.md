# Moving-cut form comparison for the conversion family at fixed mass

This derives the common-form comparison for the interpolating operator in
`graded-mass-conversion-positive-cut.md` on the compact collar model of
`product-frame-moving-cut-uniformity.md`. It is a fixed-mass result with
mass-dependent constants. It does not establish a uniform angular sum,
physical boundary matching, or a common-regulator limit.

## Assumptions and statement

Let H be the reference Hilbert space and V its fixed H1 projector domain.
Suppose Q_delta:V->H are the pulled-back first-order operators and, with
constants independent of small delta,

  ||Q_delta v|| <= C_Q ||v||_V,
  ||(Q_delta-Q_0)v|| <= C_Q delta ||v||_V.                     (1)

Assume each Q_delta is skew-adjoint on V, and that multiplication by every
relevant scalar and its inverse preserves V. Let b_delta,z=b_delta+z1
u_delta+z2 w_delta, where all three real coefficient fields are uniformly
bounded in W1,infinity and their differences from delta=0 are O(delta) in
that norm. Fix M>=0 and r in [0,1]. Define on V

  A_(delta,r,z) = E_(delta,r,z) [Q_delta+M exp(b_delta,z)]
                    E_(delta,r,z),
  E_(delta,r,z)=exp(-r b_delta,z/2).                            (2)

On any fixed bounded complex polydisc, the scalar product and exponential
rules give constants C_B independent of delta, r, and z such that

  ||A_(delta,r,z) v|| <= C_B (1+M)||v||_V,
  ||(A_(delta,r,z)-A_(0,r,z))v||
       <= C_B (1+M) delta ||v||_V.                              (3)

Indeed, multiplication by E and exp(b) is bounded on V by its W1,infinity
norm; the derivative of an exponential is its exponential times the
first weak derivative. The difference of two such exponentials is bounded
in W1,infinity by a constant times the W1,infinity difference of their
arguments, via the integral form of the mean value formula. All factors
r/2 lie in [0,1/2]. Expanding the difference of (2) one factor at a time
and applying (1) proves (3), including the mass term.

Define the complexified form, with the inner product linear in its first
argument, by

  q_(delta,r,z)(v,h)=< A_(delta,r,z)v, A_(delta,r,bar z)h >.  (4)

For real z this is the positive form of A* A on the actual composition
square, while for complex z it is holomorphic in z. Its domain V remains
fixed; this says nothing about equality of square operator domains.
Using (3) on the two terms obtained by telescoping (4),

  |q_(delta,r,z)(v,h)-q_(0,r,z)(v,h)|
      <= C_B' (1+M)^2 delta ||v||_V ||h||_V.                   (5)

The estimate is uniform in r, z and any physical-side regularizer for which
the stated W1,infinity assumptions hold uniformly. The reference arguments
u_delta,w_delta are their pullbacks to the fixed manifold. Their O(delta)
W1,infinity convergence is an explicit assumption; the scalar insertion's
O(delta) L-infinity comparison alone does not imply it.

## Consequence and remaining gap

If, in addition, these forms satisfy the common sectorial/coercive and
smoothing hypotheses of `product-frame-moving-cut-response-rate.md` on a
common complex polydisc, its resolvent, Schatten interpolation and Cauchy
argument applies for each fixed M. The resulting constants can depend on M;
(5) alone supplies no summable estimate for the full mass/angular tower.
To integrate over r, those sectorial and smoothing constants must also be
uniform in r, and the trace-family measurability or continuity must be
justified. A fixed-M form estimate cannot replace these requirements.

For the actual source one must still identify the physical cut domain and
transport, verify the sectorial constants and mass-weighted angular sum,
match the trace normalization and subtractions, and handle regulator limits.
No numerical run or Lean certification is claimed.

Remaining to-do list: establish the physical and angular-uniform conversion
comparison, complete the curved response and novelty audit, prepare the
manuscript, and certify supported claims in Lean on GCP.
