# Quantitative angular tail of the mixed heat response

This extends `full-weyl-real-heat-angular-tail.md` to the complete mixed
heat derivative for a fixed compact constructed product. It relies on the
complex-form and sharp trace estimates in
`two-direction-complex-heat-smoothing.md` and
`complex-heat-sharp-trace-bound.md`. It is not a physical common-regulator
estimate or Lean certificate.

Let P, L, B, Gamma and the compact product H1 projector form domain V be as
in `full-weyl-product-graph-domain.md`. Fix real orbit-dependent b,u,w in
W1,infinity, and let q_z be the two-variable holomorphic form for the full
congruence P_z, with real z giving P_z*P_z. Write T_z(t) for its semigroup.
The scalar multipliers and their complex continuations commute with angular
spectral projections, so these projections reduce q_z and T_z(t). Assume
the compact product has the H1 embedding singular-value estimate and the
uniform sectorial smoothing established in the cited complex-form notes.

There are positive radii rho_u,rho_w and constants a,C,K, independent of
mode and M, such that on the corresponding closed smaller polydisc

    Re q_z(v,v) >= a [||D v||^2+||B v||^2] - C ||v||^2, (1)
    ||T_z(t)||_1 <= K t^(-2),                  0<t<=1.    (2)

Here D and B act on the product and the unperturbed graph identity makes the
bracket ||P v||^2. To see (1), the real-b graph comparison bounds q_b below
by c||P v||^2-C0||v||^2. Holomorphic form continuity in the graph norm gives
|q_z(v,v)-q_b(v,v)|<=epsilon(||P v||^2+||v||^2) on a sufficiently small
polydisc, with epsilon<c. The product rule and bounded direction norms make
this estimate global in the product Hilbert space; it does not contain a
mode-dependent perturbation constant. Equation (2) is the d=4 compact
embedding result, applied on that same smaller polydisc.

Let Q_M be the spectral projection of |B| onto [M,infinity), M>0. Its range
is invariant under the form and semigroup. On V intersect Ran(Q_M), (1) gives
Re q_z(v,v)>=(a M^2-C)||v||^2. The numerical-range semigroup bound yields

    ||Q_M T_z(s)|| <= exp[(C-a M^2)s].                   (3)

The semigroup identity, the ideal property of the trace norm and (2) give
for 0<t<=1, uniformly on the polydisc,

    ||Q_M T_z(t)||_1
       <= K (t/2)^(-2) exp[(C-a M^2)t/2].                (4)

The trace-class-valued family is holomorphic as in the cited notes; Q_M is
fixed and bounded. Cauchy's formula on circles of radii rho_u,rho_w therefore
applies directly to the whole mixed derivative, producing

    ||Q_M partial_z1 partial_z2 T_z(t)|_(0,0)||_1
       <= 4K (rho_u rho_w)^(-1) t^(-2)
                       exp[(C-a M^2)t/2].                (5)

Thus the absolute sum of omitted diagonal angular-sector traces is at most
the right side of (5). The estimate includes both ordered first-vertex
insertions and the mixed vertex together, without claiming separate endpoint
integrability for their Duhamel expressions. It includes zero modes in the
full trace; M>0 places them outside the tail. If u,w are localized directions
with W1,infinity norms O(ell^2), and the uniform complex-polydisc hypotheses
of the cited notes hold with radii proportional to ell^(-2), the prefactor in
(5) acquires ell^4 with uniform constants.

For t in [t0,1], t0>0, the tail is exponentially small in M^2 uniformly on
the interval. At t decreasing to zero, (5) alone gives only an unsubtracted
t^(-2) bound and no physical proper-time integrability. It does not identify
the physical sectors, prove the curved tangent subtraction or justify any
common-regulator interchange. No numerical calculation is used.

Remaining to-do list: establish physical bundle and boundary matching, prove
the full subtracted response and regulator estimates, resolve prior art,
prepare the manuscript, and certify supported claims on GCP.