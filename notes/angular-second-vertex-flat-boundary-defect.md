# Flat boundary defect of the mixed angular second vertex

This estimates one term in the sign-paired full-Weyl angular correction. It
compares the mixed angular second-vertex heat insertion on a flat half-
cylinder with its full-line tangent value. It is not the complete even-even
Duhamel pair, a curved estimate, a source-observable identification, or a
Lean certificate.

## Model and heat-kernel comparison

Let

    Omega=[0,infinity)_y x (R/TZ)_tau

with the antiperiodic thermal circle of period `T`. On the finite spin fiber,
let `Q` be a product Laplacian with components satisfying either Dirichlet
or Robin boundary conditions `partial_y phi(0)=S phi(0)`, where
`0<=S<=S0`. The comparison tangent operator `Q_tan` is the full-line
product Laplacian. The trace is the sum over spin components. For the
comparison use the even reflected direction on the full line and one half of
its doubled full-line trace, so both sides have the same per-exterior
normalization.

For the normal kernels, the full-line restriction is `g_t(y-y')`. The
Dirichlet half-line kernel differs by `-g_t(y+y')`. The Robin kernel is

    K_(R,S)(t;y,y')=g_t(y-y')+g_t(y+y')
       -2S integral_0^infinity exp(-S z)g_t(y+y'+z) dz.

For `0<t<=t0<T^2/16`, the same Gaussian estimate used in
[`odd-odd-complementary-boundary-flat-estimate.md`](odd-odd-complementary-boundary-flat-estimate.md)
gives, uniformly for `S<=S0`,

    |K_Q(t;y,y)-g_t(0)| <= C t^(-1/2) exp(-y^2/(c t)).       (1)

The complete antiperiodic thermal diagonal is

    h_t^ap(0)=sum_(k in Z)(-1)^k g_t(kT),

and its absolute image sum is bounded by `C_T t^(-1/2)` on this time
interval. No thermal image is discarded.

Let the localized real directions satisfy

    |u(y)|<=U y^3,     |w(y)|<=W y^3,

on their common fixed collar support. The cubic/log admitted profiles satisfy
these bounds because `y |log y|` is bounded there. From (1),

    |Tr_Omega(uw exp(-tQ))-Tr_tan(uw exp(-tQ_tan))|
       <= C_(T,S0,t0) U W t^(5/2).                         (2)

Indeed, the normal diagonal difference contributes `t^(-1/2)`, the
antiperiodic thermal image sum contributes another `t^(-1/2)`, and
`integral_0^infinity y^6 exp(-y^2/(c t))dy` is a constant times `t^(7/2)`.
Their product is `t^(5/2)`.

## Tower-weighted mixed second vertex

After pairing the two signs of the angular mass, the odd part of the mixed
angular vertex cancels and the even part is `4 mu_n^2 u w`. Its Duhamel
contribution for one mode is, by cyclicity,

    -integral_0^t Tr(exp(-(t-s)Q_n) 4 mu_n^2 uw exp(-sQ_n)) ds
       = -4t mu_n^2 Tr(uw exp(-tQ_n)).

The corresponding tangent term uses `Q_tan` with the same mass. Summing the
boundary defect over the complete massive tower therefore gives, with
`Theta(t)=sum_(n>=1)d_n exp(-t mu_n^2)`,

    |R_second,bdy(t)|
       <= 4t (-Theta'(t)) C_(T,S0,t0) U W t^(5/2)
       <= C_(T,S0,t0,q,b0) U W t^(3/2),                   (3)

since `-Theta'(t)<=C t^(-2)` for the recorded sphere tower. Thus this one
boundary-defect component has an integrable `dt/t^2` contribution.

## Scope

The estimate is for the mixed angular second vertex only. It does not bound
the two ordered products of first angular vertices, the same-boundary
interior tangent remainder, the orbit-angular cross terms, variable Robin
data, curved coefficients, moving cuts, physical density/contact,
transgression, thermal-to-physical frame matching, or the LLL. It does not
close the full even-even correction or the source-observable common-regulator
bridge.

Remaining to-do list: estimate the ordered even angular first-vertex
products after the same tangent subtraction; establish curved/domain
uniformity and match all physical sectors; certify supported claims in Lean
on GCP.
