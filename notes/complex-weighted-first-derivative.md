# Complex-family weighted first-derivative heat estimate

This extends the operator Davies estimate in
`complex-family-weighted-heat-bound.md` to first-order derivatives. It
assumes the same uniformly sectorial weighted forms and does not prove the
trace locality or physical matching needed for the geometric response.

Write T_(z,phi)(t)=e^phi exp(-tL_z)e^(-phi), and let A_(z,phi) be its
sectorial generator. Use the weighted coercivity and uniform sectorial
angle established in the cited note: with omega=C(1+alpha^2),

  Re q_(z,phi)(w,w)+omega ||w||^2 >= a_0 ||w||_V^2,   (1)

where alpha=||d phi||_infinity and all constants are uniform in z and phi.
The analytic-semigroup estimate for the shifted generator gives

  ||T_(z,phi)(t)|| <= C exp(omega' t),
  ||(A_(z,phi)+omega) T_(z,phi)(t)||
       <= C t^(-1) exp(omega' t),                     (2)

with omega'=C'(1+alpha^2), after enlarging constants. For t>0 the heat
output lies in the generator domain, so the form representation and
Cauchy--Schwarz imply

  a_0 ||T_(z,phi)(t)h||_V^2
      <= ||(A_(z,phi)+omega)T_(z,phi)(t)h||
                                      ||T_(z,phi)(t)h||. (3)

Consequently

  ||T_(z,phi)(t)||_(H->V)
      <= C t^(-1/2) exp[C(1+alpha^2)t].                (4)

Any first-order Q with uniform V->H bound and scalar commutator
||[Q,e^phi]e^(-phi)||<=C alpha therefore satisfies

  ||e^phi Q exp(-tL_z)e^(-phi)||
      <= C(t^(-1/2)+alpha) exp[C(1+alpha^2)t].        (5)

The identity behind (5) is Q T_(z,phi)=e^phi Q exp(-tL_z)e^(-phi)
plus the bounded commutator multiplier. It is first checked on a core and
then extended using (4). The same reasoning applies to the adjoint family
when its weighted coercivity and commutator bounds hold uniformly.

For separated E,F at distance d, use the truncated distance weight of the
preceding note and choose alpha=d/(2Ct). For 0<t<=1, (5) gives

  ||1_F Q exp(-tL_z)1_E||
    <= C(1+t^(-1/2)+d/t) exp[-d^2/(C' t)].            (6)

A harmless enlargement of C' absorbs fixed exponential constants. Uniformity
requires common geometry, first-order coefficients and form-domain
multiplier properties. This is an operator estimate for the complex family;
it does not yet give Hilbert--Schmidt off-diagonal bounds, the collar
commutator Duhamel identity, or trace differentiation. It does not establish
physical bundle matching or a regulator limit. No numerical run or Lean
certificate is claimed.

Remaining to-do list: prove the complex commutator and Schatten locality,
verify source and regulator matching, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.