# Rough collar insertions in the moving-cut comparison

This replaces the holomorphic insertion hypothesis in
`product-moving-cut-moving-insertion.md` by real two-parameter differentiability
and verifies it for an explicit moving proper-distance profile on a fixed
collar. The heat family still has the complex form-holomorphy assumed in that
note. The construction does not identify the source's physical insertion,
prove its global boundary matching, or establish a common-regulator limit.
No Lean check is claimed.

## Real C2 insertion criterion

Keep the common Hilbert space, pulled-back heat families, parameter polydisc,
and uniform estimates in `product-frame-moving-cut-response-rate.md`.
Let C_(delta,s,r) be bounded-operator-valued and C2 in operator norm for
real (s,r) near zero. For j in {0,s,r,sr}, suppose

  ||partial_j C_(delta,0,0)|| <= C,
  ||partial_j(C_(delta,0,0)-C_(0,0,0))|| <= C delta.             (1)

Here j=0 denotes the value. No complex extension of C is assumed. The
trace-class heat estimates and Cauchy's formula on the heat polydisc give,
for the same j and 0<t<=1,

  ||partial_j(T_delta-T_0)(0,t)||_1 <= C delta^(1/6)t^(-35/12),
  ||partial_j T_0(0,t)||_1 <= C t^(-3).                          (2)

The second inequality follows by factoring the heat into six equal-time
S6 factors before Cauchy's formula, as in the preceding insertion note.
Apply the real product rule to Tr[C_delta T_delta] and subtract at the
level of each of the four value/derivative pairings. The trace ideal bound
and (1)-(2) give

  |partial_s partial_r Tr[C_delta T_delta-C_0 T_0]_(0,0)|
    <= C [delta^(1/6)t^(-35/12)+delta t^(-3)].                   (3)

Consequently the proper-time integral from epsilon to 1 against dt/t^2 is
bounded by C[delta^(1/6) epsilon^(-47/12)+delta epsilon^(-4)]. The same
exponential cut path therefore works under these real C2 insertion
hypotheses. The constants in (1)-(2) must be uniform in any additional
rough-field regulator.

## A moving proper-distance profile

On a fixed collar 0<=y<=ell after pullback, let a_delta,w_delta,v_delta and
rho_delta be real bounded functions. Assume a_delta is uniformly positive
and bounded, and each of these four functions differs from its delta=0
counterpart by O(delta) in L-infinity, with uniform L-infinity bounds. Set

  Y_(delta,s,r)(y)=integral_0^y a_delta(x)
                      exp(s w_delta(x)+r v_delta(x)) dx.          (4)

For real parameters near zero, the value and all first and second parameter
derivatives of Y are uniformly bounded in L-infinity and differ from their
delta=0 counterparts by O(delta). For example,

  Y_s|_0=integral_0^y a_delta w_delta dx,
  Y_r|_0=integral_0^y a_delta v_delta dx,
  Y_sr|_0=integral_0^y a_delta w_delta v_delta dx.                (5)

Choose a common compact interval containing the ranges of Y and a real
profile u_delta on it with uniformly bounded C3 norm and
||u_delta-u_0||_(C2)<=C delta. Define C_(delta,s,r) as multiplication by
rho_delta(y) u_delta(Y_(delta,s,r)(y)). Then C is C2 in operator norm and

  C_s=M_(rho_delta u_delta'(Y) Y_s),
  C_sr=M_(rho_delta [u_delta''(Y) Y_s Y_r+u_delta'(Y) Y_sr]),  (6)

with C_r obtained by exchange. Formula (6) applies throughout the small
real parameter neighborhood; all functions on its right use the same delta,
s and r. The common C3 bound makes u_delta'' uniformly Lipschitz, and the
C2 difference assumption plus (5) gives the O(delta) comparison for each
j in (1). Multiplication-operator norms are bounded by the corresponding
L-infinity norms, so this verifies the real insertion criterion on the
collar. A fixed smooth profile times a localization cutoff is included.

A localized mass/log profile c y^3+d y^4 log(y) has a continuous bounded
third derivative at y=0 after defining its limiting value, and admits a C3
extension on a compact interval. Thus this example does not require an
analytic continuation of that profile. The assertion concerns the explicit
profile and C3-controlled remainders only; the source's original weighted
remainder class must be checked separately before applying the hypothesis.
If rho itself depends on s or r, its derivatives and their O(delta) bounds
must be added by the product rule. Moving sharp cutoffs need separate work.

The physical choice of a_delta, radial transport, copies and thermal trace,
and the mixed action contacts are not derived here. Equation (3) is a
conditional cut comparison and does not prove the t^(3/2) subtracted curved
remainder.

Remaining to-do list: identify the physical insertion and verify its uniform
cut/field assumptions, prove the full subtracted remainder and regulator,
resolve novelty, complete the manuscript, and certify supported claims in
Lean on GCP.
