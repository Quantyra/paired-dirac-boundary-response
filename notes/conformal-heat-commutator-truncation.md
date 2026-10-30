# Truncated conformal heat commutator on the limiting space

This extends `conformal-heat-commutator-bound.md` to an unbounded scalar
through bounded truncations on one fixed Hilbert space. It does not by itself
pass a changing-cut heat operator or prove the full mixed response.

Let D be closed and densely defined, L=D*D and K_t=exp(-tL). Let b_n be
bounded real multipliers preserving Dom D, with

  D(b_n x)=b_n Dx+C_n x,  x in Dom D,
  sup_n ||C_n||<=c.                                           (1)

Assume C_n and C_n* converge strongly to bounded operators C and C*,
respectively. The adjoint convergence is an explicit hypothesis; it follows
for pointwise-convergent uniformly bounded matrix multipliers. Define
B_n(t)=b_n K_t-K_t b_n. The form identity of the bounded commutator note
represents its matrix elements by an integral whose integrand is a sum of
products of K, D K and C_n or C_n*. For each 0<s<t those products converge
strongly to the corresponding products with C,C*. Their norms are bounded
by

  c[(2e s)^(-1/2)+(2e(t-s))^(-1/2)],                        (2)

which is integrable on (0,t). Strong dominated convergence of the
operator-valued integral gives a bounded operator B(t) such that

  B_n(t) -> B(t) strongly,
  ||B(t)|| <= 4 c sqrt(t)/sqrt(2e).                          (3)

The limit is the bounded extension defined by the form integral. Calling
it the literal commutator of an unbounded multiplication b with K_t would
also require a separate domain argument, so no such identification is used
here.

If X and Y are fixed Hilbert--Schmidt operators, then

  ||X B_n(t)Y-X B(t)Y||_1 -> 0.                              (4)

Indeed the uniform bound in (3) and strong convergence imply
||(B_n-B)Y||_2->0 by finite-rank approximation of Y; Schatten Holder
then proves (4). Thus the truncation can be removed between two independently
justified Hilbert--Schmidt factors at each fixed t. Neither their existence
nor uniformity in t, cut, or variation parameter follows from (3).

For the fixed RN physical exterior, choose smooth truncations b_n=theta_n(b)
of b=log(b_sphere/r), with theta_n bounded, |theta_n'|<=1 and
 theta_n'(x)->1 for each finite x. Under the stipulated Dirac product rule
and a bounded base congruence multiplier, C_n=E_beta² c(db_n) are uniformly
bounded because |db|_g is bounded. Pointwise db_n->db gives strong
convergence of C_n and C_n* by dominated convergence. Applying (3)--(4)
still requires each truncation to preserve the actual first-order domain;
this is an explicit physical-domain hypothesis.

The argument is for one fixed real positive square and fixed Hilbert--Schmidt
factors. The mixed response requires both ordered vertices, the second
vertex, boundary terms, partner square, time-simplex integrability and a
uniform cut/regulator analysis. Those are not established here. No numerical
or Lean certificate is claimed.

Remaining to-do list: obtain the actual uniform Hilbert--Schmidt factors and
physical trace identification, prove the regulator bounds, resolve novelty,
complete the manuscript, and certify supported claims in Lean on GCP.
