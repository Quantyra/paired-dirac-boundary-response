# Uniform positive-time localized variation with approximants

This extends `physical-localized-heat-variation-cut-limit.md` on a fixed
complete physical Euclidean manifold. It treats a fixed interior insertion
and fields which may reach infinity. It does not give a boundary-reaching
trace, small-time uniformity, a determinant or Lean certification.

Let D,D_R, X,X_R and a fixed compactly supported smooth chi be as in the
preceding note. Let real scalar triples (b_e,u_e,w_e) and (b,u,w) be identical
on paired copies and satisfy

    sup_e (||b_e||_W1,infinity+||u_e||_W1,infinity
                                  +||w_e||_W1,infinity) < infinity,
    eta_e=||b_e-b||_W1,infinity+||u_e-u||_W1,infinity
                                +||w_e-w||_W1,infinity -> 0.     (1)

The norms are on the complete physical reference geometry. Assume their
restrictions to fixed nested neighborhoods of supp(chi) are smooth with
uniform C^k bounds sufficient for H6 interior elliptic regularity, including
the limiting fields. These assumptions do not require compact support of
the fields. The cut realizations use restrictions of the same fields and
local projector domains preserved by the multipliers.

For complex z on a common small polydisc, define the full congruence forms
and semigroups as in the preceding note. Uniform boundedness and the scalar
product rule give a common sectoriality/coercivity shift, independent of R
and e. The form difference is bounded by C eta_e times the common graph
norm squared. A common sectorial contour therefore gives, on every
[t0,T] with t0>0 and a smaller polydisc,

    ||T_(R,e,z)(t)-T_(R,0,z)(t)|| <= C eta_e,          (2)

where 0 denotes the limiting triple; the same bound holds for the complete
operator. Constants may depend on t0,T but not R or e. The estimate is for
the actual closed form realizations, without assuming a common square domain.

Uniform interior elliptic estimates and the H6 embedding argument from the
preceding note give a uniform singular-value bound C j^(-3/2) for both
localized semigroups and their limits. For their difference, singular-value
subadditivity yields the same summable tail up to a fixed index factor.
Combining that tail with (2), for any n>=1,

    ||M_chi[T_(R,e,z)(t)-T_(R,0,z)(t)]M_chi||_1
        <= C [n eta_e+n^(-1/2)].                        (3)

Choosing n comparable to eta_e^(-2/3) gives O(eta_e^(1/3)), uniformly in R,
e,z and t in the declared sets. The same estimate applies on the complete
space. Cauchy's formula therefore gives the same order for the scalar
localized mixed trace derivative, with a fixed reciprocal-radius factor.

For each fixed real z, the cut-limit variational proof still applies to the
limiting fields: their real congruenced Dirac expression is complete and
essentially skew-adjoint by the cutoff argument, since E_z is bounded,
boundedly invertible and has bounded first derivative. It need not equal the
seed outside a compact set. The complex-sectorial and local H6 estimates give
locally uniform bounds in z. In addition, differentiating the localized
semigroup in t and using the same interior estimates with one extra power of
the generator gives a common bound on its trace-norm time derivative for
[t0,T]. Thus the holomorphic scalar traces are equicontinuous in t, and the
Montel/identity argument of the preceding note upgrades its fixed-t limit to
uniform convergence on [t0,T], including its mixed parameter derivative.
Combining this with (3) gives the same uniform limit along any joint sequence
R->infinity, e->0.

These hypotheses may accommodate boundary-layer approximants, but they must
be checked in the *physical* W1,infinity geometry and on the fixed interior
charts. The inserted chi remains compactly supported; (3) gives no full trace
or small-time bound and does not justify the common proper-time regulator,
canonical source matching, or a curved tangent subtraction. No numerical
calculation is used.

Remaining to-do list: verify the physical field norms and boundary-reaching
observable, prove the full response and regulator, resolve prior art, prepare
the manuscript, and certify supported claims in Lean on GCP.