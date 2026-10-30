# Sharp-dimensional complex heat trace from Sobolev embedding

This improves the auxiliary trace power in
`mixed-localized-heat-cauchy-bound.md` under the fixed-domain hypotheses of
`two-direction-complex-heat-smoothing.md`. It concerns compact comparators;
it does not establish the physical subtracted response or Lean certification.

Let J:V->H be the inclusion, with singular values satisfying

    s_j(J) <= C_J j^(-1/d),   j>=1.                         (1)

For an H1 projector domain on a fixed compact d-dimensional smooth manifold,
this follows from the standard Sobolev embedding spectral bound. Assume the
complex semigroups in the two-direction note obey the uniform estimates

    ||T_z(t)||_(H->H) <= C0,
    ||T_z(t)||_(H->V) <= C1 t^(-1/2),   0<t<=1,             (2)

on the stated complex polydisc. Here z stands for the pair of parameters.
By the ideal property and the operator norm bound,

    s_j(T_z(t)) <= min(C0, C1 C_J t^(-1/2) j^(-1/d)).     (3)

Choose any integer n>d. Factor T_z(t) as n copies of T_z(t/n). The singular
value product inequality s_(j1+...+jn-n+1)(A1...An)<=product s_ji(Ai),
with all ji=j, and (3) give

    s_(n(j-1)+1)(T_z(t))
      <= min(C0, C1 C_J (t/n)^(-1/2) j^(-1/d))^n.          (4)

Monotonicity of singular values bounds the sum over each block of at most n
indices by n times the right side of (4). Splitting the j sum at a constant
multiple of t^(-d/2), and using n/d>1 for the tail, yields

    ||T_z(t)||_1 <= C t^(-d/2),  0<t<=1,                    (5)

with C uniform in the complex parameters and localization scale. Unlike a
self-adjoint min-max argument, this uses only singular values and applies to
the sectorial complex family under (1)--(2). The same estimate holds on any
smaller polydisc. The holomorphic trace-class factorization already justified
in the Cauchy note then gives

    ||partial_z partial_w T_(z,w)(t)|_(0,0)||_1
       <= C' ell^4 t^(-d/2).                                 (6)

The last step takes Cauchy radii proportional to ell^(-2) in each parameter.
For a bounded insertion the corresponding scalar trace obeys the same
power times its operator norm. This is a genuine improvement over the prior
integer-factor bound t^(-n/2), but the scale calculation in
`mixed-localized-proper-time-obstruction.md` shows that (6) alone still
cannot provide dt/t² integrability with the usual ell=t^p, p<1/2, when
d>=2. Subtraction, spatial localization gains, or another argument remains
necessary. The fixed-direction complement, angular sums, matching physical
bundle and regulator are also not controlled. No numerical calculation is
used.

Remaining to-do list: establish a physical subtracted response estimate and
common regulator, verify the physical domains, resolve novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.