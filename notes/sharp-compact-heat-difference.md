# Sharp-dimensional trace difference for the compact cutoff comparison

This improves the conditional trace-norm rate in
`weighted-field-cutoff-heat-comparison.md` using the singular-value method of
`complex-heat-sharp-trace-bound.md`. It concerns the same compact common-form
model and requires the same uniform complex-sectorial smoothing and
operator-norm comparison. It does not establish the physical boundary,
subtracted curved response, regulator limit or Lean certification.

## Assumptions

Let T_1(z,t), T_0(z,t) be the two heat families on a fixed Hilbert space and
common form domain V. On a fixed complex parameter polydisc suppose uniformly
for 0<t<=1 that

  ||T_i(z,t)|| <= C,      ||T_i(z,t)||_(H->V) <= C t^(-1/2),
  s_j(V->H) <= C j^(-1/4),
  ||T_1(z,t)-T_0(z,t)|| <= C xi,           0<xi<=1.              (1)

The last estimate is supplied by the common-form resolvent comparison in the
cited moving-cut note when its form difference is O(xi). The embedding bound
is for the fixed four-dimensional compact reference domain. All constants,
including parameter radii, must be uniform in any other regulator.

## Singular-value split

Fix an integer n>4. The n-factor semigroup and singular-value product
inequality used in the sharp-trace note give, for either heat operator,

  s_j(T_i(z,t)) <= C_n t^(-n/2) j^(-n/4).                     (2)

The constant absorbs the finite index shifts in the block estimate. The
singular-value sum inequality, applied to T_1-T_0, gives the same power
bound for its singular values with another constant. Together with the
operator-norm estimate in (1),

  s_j(T_1-T_0) <= C_n min(xi, t^(-n/2) j^(-n/4)).             (3)

Let J be a constant multiple of t^(-2) xi^(-4/n), rounded up to at least
one. The first J terms sum to O(J xi). The remaining terms sum to
O(t^(-n/2) J^(1-n/4)), since n/4>1. Both are bounded by
C_n t^(-2) xi^(1-4/n); the rounding contribution is absorbed for
t<=1 and xi<=1. Thus

  ||T_1(z,t)-T_0(z,t)||_1
       <= C_n xi^(1-4/n) t^(-2).                               (4)

No operator monotonicity or self-adjointness of the complex semigroups is
used. Uniform trace-norm holomorphy on the smaller polydisc then permits
Cauchy's formula: every fixed first or mixed second parameter derivative of
the difference obeys (4), with C_n also depending on the fixed radii.
The individual heat derivatives obey C t^(-2) by the sharp-trace note.

## Weighted field and insertion consequences

For the conditional family in `weighted-field-cutoff-heat-comparison.md`,
xi=delta+C K h^3 L(2h), provided its common form and uniform smoothing
hypotheses hold. Under the real C2 insertion assumptions of
`rough-moving-collar-insertion.md` and its weighted error bound, the complete
mixed observable obeys

  |partial_s partial_r(F_(delta,h)-F_0)(0,t)|
    <= C_n t^(-2) [xi^(1-4/n)+delta+K h^2 L(2h)].              (5)

This follows term by term from the product rule: each insertion derivative
is uniformly bounded, its discrepancy is O(delta+K h^2 L(2h)), and the
respective heat derivatives satisfy the two bounds above. For example n=8
gives a square-root dependence on xi. Integrating against dt/t^2 on
[epsilon,1] yields

  C epsilon^(-3) [xi^(1/2)+delta+K h^2 L(2h)].                 (6)

This improves the previously recorded sufficient cutoff rates for this
conditional compact comparison. The constants may depend on n and the fixed
complex polydisc; no limit n->infinity or Lipschitz trace estimate is claimed.
The bound remains an absolute comparison, not the desired t^(3/2) subtracted
curved remainder or proof that a physical finite part exists.

Remaining to-do list: establish the actual physical domain and source
matching, uniform regulator hypotheses, curved remainder and counterterms;
resolve novelty; finish the manuscript; and certify supported claims in Lean
on GCP.
