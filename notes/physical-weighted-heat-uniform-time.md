# Uniform positive-time weighted heat comparison

Under the hypotheses of `physical-l2-weighted-heat-boundary-comparison.md`, the fixed-time conclusion extends uniformly to every compact interval bounded away from zero. This remains a conditional weighted heat statement, not the physical mixed-response theorem.

Let 0 < epsilon <= T. For each boundary family j, write K_n^(j)(t) for the zero-extended heat semigroup of its nonnegative self-adjoint cut generator, and K(t) for the complete heat semigroup. Suppose that, for each s > 0 and each physical L2 weight f, M_f K_n^(j)(s) converges to M_f K(s) in Hilbert--Schmidt norm, and that the corresponding weighted diagonal estimate is uniform in n and j. Let real bounded a_n,d_n converge in physical L2 to a,d. Assume the same diagonal estimate for the complete semigroup. These are the explicit smoothing and convergence hypotheses of the preceding note; they are not verified here for the physical boundary.

The diagonal estimate and L2 convergence imply pointwise Hilbert--Schmidt convergence for M_(a_n) K_n^(j)(s) and M_(d_n) K_n^(j)(s). These factors are in fact equicontinuous for s = t/2, epsilon <= t <= T. Indeed, cut semigroup multiplication survives zero extension, so

  M_(a_n) K_n^(j)(t/2)
    = [M_(a_n) K_n^(j)(epsilon/4)] K_n^(j)(t/2-epsilon/4).

The first factor has uniformly bounded Hilbert--Schmidt norm by the weighted diagonal estimate and boundedness of ||a_n||_2. Spectral calculus gives the uniform operator estimate

  ||K_n^(j)(s)-K_n^(j)(r)|| <= 4 |s-r|/(e epsilon)

for s,r >= epsilon/4. The same applies to K. Thus the factors are uniformly Lipschitz in t in Hilbert--Schmidt norm. Applying the argument to d_n, a finite net of [epsilon,T] and pointwise convergence yield

  sup_(epsilon <= t <= T) ||M_(a_n) K_n^(j)(t/2) - M_a K(t/2)||_2 -> 0,

and the analogous statement for d_n. The adjoints converge uniformly as well. Schatten Holder and the semigroup factorization therefore give

  sup_(epsilon <= t <= T)
    ||M_(a_n)[K_n^(1)(t)-K_n^(2)(t)]M_(d_n)||_1 -> 0.       (1)

In particular, for a fixed bounded operator B, the scalar proper-time comparison over a fixed finite window tends to zero:

  integral_epsilon^T (dt/t) tr(B M_(a_n)[K_n^(1)(t)-K_n^(2)(t)]M_(d_n)) -> 0.

Its absolute value is bounded by ||B|| log(T/epsilon) times the supremum in (1). For unbounded limiting weights, M_a K(t) M_d denotes the trace-class product of the limiting Hilbert--Schmidt factors. The estimate permits the physical L2 logarithmic-cubic weight when all stated hypotheses hold.

No conclusion is drawn for epsilon -> 0, T -> infinity, changing insertions, unbounded mixed vertices, or the regulator-subtracted response. In particular, this does not establish equivalence of the actual conformal boundary conditions or certify a physical admission margin.

Remaining to-do list: verify physical boundary and uniform smoothing hypotheses, establish the complete mixed trace and regulator limits, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.