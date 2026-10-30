# Massive conversion heat trace and positive-time angular tail

This extends `conversion-complex-sectorial-gap.md` to trace class and the
nonzero angular tower for the stipulated compact orbit model. It does not
compare moving cuts or remove a proper-time regulator.

Let the complex forms and uniform constants be as in the gap note, and
assume additionally that the fixed compact orbit form domain V embeds into
H with singular values s_j(V->H)<=C_J j^(-1/d), for a fixed dimension d.
All model graph, multiplier, sector and embedding constants are uniform in
cut, r, mass M>=1, and the declared field regulator. Denote the associated
heat semigroup by T_(M,z)(t).

Choose half of the mass gap in the form lower bound and subtract that
scalar from the form. Its real part still controls ||v||_V^2+M^2||v||^2,
and its imaginary part is bounded by a uniform multiple of the remaining
real part. The shifted forms therefore have a common sector angle below
pi/2 and common analytic-semigroup constants. Their generators B_M,z give

  ||exp(-t B_M,z)|| <= 1,
  ||B_M,z exp(-t B_M,z)|| <= C/t.                              (1)

Restoring the shift and using x exp(-x/2)<=2/e yields, with a smaller
positive c independent of M,

  ||T_(M,z)(t)|| <= exp(-c M^2 t),
  ||L_(M,z) T_(M,z)(t)|| <= C t^(-1) exp(-c M^2 t).           (2)

The form representation and coercivity applied to v=T_(M,z)(t)f imply

  ||T_(M,z)(t)||_(H->V) <= C t^(-1/2) exp(-c M^2 t),          (3)

possibly decreasing c again. No identification of the operator square
root domain is needed. Applying the singular-value estimate and n-factor
argument of `complex-heat-sharp-trace-bound.md` to (2)--(3), for any
integer n>d, gives

  ||T_(M,z)(t)||_1 <= C t^(-d/2) exp(-c M^2 t),  0<t<=1.     (4)

The exponential factors multiply over the n equal-time factors. The
constant is uniform in the complex polydisc and the other stated parameters.
Cauchy's formula on smaller fixed circles gives the same bound, times fixed
reciprocal radii, for each first or mixed second parameter derivative in
trace norm. A uniformly bounded holomorphic insertion and its derivatives
are handled by the product rule, preserving the same bound.

For the recorded massive tower M_n^2=n(n+q)/b^2 and d_n=2(q+2n), q>=0,
b>0, split off any finite set with M_n<1. For all remaining modes, the sum
of (4) is bounded by C t^(-d/2) times the angular factor in
`angular-tower-tail.md` with t replaced by c t. Its geometric tail tends to
zero uniformly for t in [t0,1], any fixed t0>0. This justifies positive-time
normal convergence and termwise parameter differentiation for the model's
nonzero tower, provided the model's mode trace and multiplicities are those
specified. The finite modes need their own positive-time estimates; the
lowest Landau/zero sector is retained separately.

The bound deteriorates as t decreases to zero and does not establish the
subtracted P1-D estimate, a common cutoff limit, or the difference between
moving-cut semigroups. It also depends on the common compact orbit domain
and does not identify the actual physical trace, boundary data or contacts.
No numerical or Lean certification is claimed.

Remaining to-do list: prove the mass-uniform moving-cut trace difference,
handle the zero and finite modes, match the physical conversion and curved
response, resolve novelty, prepare the manuscript, and certify the supported
claims in Lean on GCP.
