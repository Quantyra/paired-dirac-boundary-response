# Moving-cut mixed heat derivative on a common product domain

This is a conditional estimate for the compact product family and local
projectors of `product-frame-moving-cut-uniformity.md`. It compares complete
mixed heat derivatives after the stated unitary pullback to one fixed Hilbert
space. It does not identify the physical transported infinity condition,
canonical resolvent, or common counterterms, and is not Lean certified.

Let P_delta be the pulled-back first-order operators on the common H1
projector space V, and assume the uniform graph and complex sectorial bounds
of the cited note. Take real orbit multipliers b_delta,u_delta,w_delta with
uniform W1,infinity bounds, and assume the stronger quantitative convergence

    ||b_delta-b_0||_W1,infinity + ||u_delta-u_0||_W1,infinity
       + ||w_delta-w_0||_W1,infinity <= C delta.          (1)

These norms refer to the common reference geometry. For sufficiently small
complex parameters z=(z1,z2), let q_delta,z be the holomorphic full Weyl
square form and T_delta,z(t) its semigroup. The fixed P_delta coefficient
bound and (1), with the scalar product rule, give on a common polydisc

    |q_delta,z(v,h)-q_0,z(v,h)|
        <= C delta ||v||_V ||h||_V,                    (2)

with uniform sectorial and coercivity constants. The same hypotheses ensure
that this family is trace-class holomorphic for each positive time.

A common shifted sectorial resolvent contour and the form resolvent identity
give

    ||T_delta,z(t)-T_0,z(t)|| <= C delta,  0<t<=1.     (3)

For example, choose rays starting at spectral scale 1/t: the two H-to-V
resolvent factors contribute O(|lambda|^-1), (2) supplies delta, and the
exponential contour integral is uniformly bounded. The fixed shift contributes
only a uniform factor on 0<t<=1. This is an operator-norm estimate; it does
not follow merely from pointwise convergence of the coefficients.

The fixed four-dimensional embedding V->H lies in S5, and the uniform
H-to-V smoothing bound gives ||T_delta,z(t)||_5<=C t^-1/2, likewise for
T_0,z. Interpolation of singular values between operator norm and S5 gives

    ||T_delta,z(t)-T_0,z(t)||_6
         <= C delta^(1/6) t^(-5/12).                   (4)

Factor each semigroup into six equal-time factors, telescope the two
products, and use Schatten Holder. The other five S6 factors are each
O(t^-1/2), so

    ||T_delta,z(t)-T_0,z(t)||_1
         <= C delta^(1/6) t^(-35/12),  0<t<=1.         (5)

All constants are uniform on a smaller closed parameter polydisc. Cauchy's
formula in trace norm consequently gives the same bound, multiplied by the
fixed reciprocal radii, for the difference of the *complete* mixed
parameter derivatives. It includes both first-vertex orderings and the mixed
vertex together. For a fixed bounded insertion its trace is bounded by the
same right side times the insertion norm; a moving insertion needs its own
comparison.

For a positive proper-time cutoff epsilon and a single cut delta(epsilon),
(5) yields

    integral_epsilon^1 t^(-2) ||partial_1 partial_2(T_delta-T_0)(t)||_1 dt
        <= C delta^(1/6) epsilon^(-47/12).              (6)

Thus the exponential cut delta=exp(-4L/epsilon) from
`rn-infrared-angular-joint-rate.md` makes this conditional comparison tend
to zero. This is an absolute bound for the specified compact-model heat
term, not a finite-part theorem. The graph norms, coefficient closeness,
parameter polydisc and b,u,w bounds must all be uniform in any additional
regularizer; (1) is not asserted for the whole rough family without that
verification. Most importantly, this compares local projector problems; the
physical transported boundary, angular/thermal normalization, tangent
subtractions and canonical-to-Euclidean matching remain independent.
No numerical calculation is used.

Remaining to-do list: verify uniform rough-family and physical boundary
matching, prove the full subtracted response and common regulator, resolve
prior art, prepare the manuscript, and certify supported claims in Lean on GCP.