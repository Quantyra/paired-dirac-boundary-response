# Background cutoff comparison for the physical heat response

This compares two real background fields on the same stipulated finite cut,
including their changing positive squares, by form perturbation and local
interpolation. It treats the bulk ordered and mixed second vertices at one
proper-time regulator. It does not identify the source orbit trace, establish
the complete finite part, or certify Lean.

## Uniform semigroup difference

Let b_0,b_1 have the common physical W^(5,infinity), chart, bundle, projector
and graph bounds of `physical-h5-from-mixed-h3.md`; let their real scalar
congruences have the same first-order domain V. Write D_i=E_i D E_i,
L_i=D_i*D_i, K_i(t)=exp(-tL_i), and

 d_1=||b_1-b_0||_(W1,infinity),
 d_2=||b_1-b_0||_(W2,infinity),  0<=d_1<=d_2<=1.       (1)

The norms and derivatives are physical, not compactified-coordinate norms.
The scalar product rule and the uniform graph equivalence give

 |q_1(f,g)-q_0(f,g)| <= C d_1 ||f||_V ||g||_V.          (2)

For real nonnegative L_i, the form Duhamel identity and spectral calculus
give ||K_i(s)||_(H->V)<=C(1+s^(-1/2)). Thus for 0<t<=1,

 ||K_1(t)-K_0(t)||
   <= C d_1 integral_0^t (1+s^(-1/2))(1+(t-s)^(-1/2)) ds
   <= C d_1.                                              (3)

The identity is understood in the form sense; it does not freeze the square
domains. All constants are assumed uniform in the cut as supplied by the
common form and graph hypotheses.

## Weighted differentiated heat differences

On nested fixed-radius physical charts the H5 estimate for each heat output
is C t^(-5/2) for 0<t<=1. Combine it with the L2 operator bound (3), uniform
local interpolation, and four-dimensional Sobolev embedding. For a scalar
or fixed-rank matrix multiplier a in physical L2, the resulting pointwise
row bounds give

 ||M_a nabla^2(K_1(t)-K_0(t))||_2
       <= C d_1^(1/10) t^(-9/4)||a||_2,                 (4)
 ||M_a nabla(K_1(t)-K_0(t))||_2
       <= C d_1^(3/10) t^(-7/4)||a||_2,                 (5)
 ||M_a (K_1(t)-K_0(t))||_2
       <= C d_1^(1/2) t^(-5/4)||a||_2.                  (6)

For example, (4) interpolates H0 and H5 to H^(9/2), which embeds in C2;
its exponent on the L2 difference is 1-9/10. Equations (5) and (6) use
H^(7/2) and H^(5/2), respectively. The interpolation is applied on nested
charts including half-charts, with a uniform extension operator; finite
fiber rank converts evaluation norms to row Hilbert--Schmidt norms. The
noncompact atlas summation must satisfy the same square-summable partition
hypothesis as `finite-cut-bulk-interior-time-convergence.md`. Adjoint factors
are taken in reversed order. For d_1=0 the estimates mean zero by continuity.

The coefficients of V_v^bulk depend on b_i and its physical derivatives
through order two. The first- and mixed-second form vertices depend on b_i
and its first derivative. The product rules therefore give coefficient
changes bounded by C d_2 times the corresponding components of v,dv and
nabla^2 v, with uniform base bounds. Combining these changes with (4)--(6)
and the long-heat factorization in `finite-cut-ordered-bulk-endpoints.md`
gives the following conservative comparison for fixed real directions:

 |R_(bulk+second)[b_1](t)-R_(bulk+second)[b_0](t)|
   <= C (d_2+d_1^(1/10)) t^(-3) N(v)N(w), 0<t<=1.     (7)

For the ordered part, each unperturbed long Hilbert--Schmidt factor is
O(t^(-5/2)); the differentiated heat difference is no worse than
O(d_1^(1/10)t^(-9/4)), and the time simplex has size O(t^2). The short
semigroup difference (3) is also included. For the second vertex, the
unperturbed D K factor is O(t^(-2)); (5), coefficient changes and the
outer factor t produce no worse than the right side of (7). These estimates
use the explicit product-vertex splitting of
`physical-fixed-time-mixed-response-assembly.md`. They are deliberately
nonsharp and do not include boundary-form pieces.

## Raw weighted background cutoff

For b_eta-b_0 supported where u<=C eta, the physical weighted estimates for
the field, gradient and Hessian give

 d_2 <= C eta^4(1+|log eta|).                            (8)

Any extra smoothing must satisfy its own W2 error bound; (8) applies to the
raw cutoff with the cubic retained. Combining (7) with dt/t on
[epsilon,t0], t0<=1, gives a bound C(d_2+d_1^(1/10))epsilon^(-3). Thus
eta=epsilon^q with q>15/2 makes this background comparison vanish; it also
satisfies the separate direction condition q>6/5. The distinct boundary
condition delta=epsilon^p, p>3/2, remains as in
`finite-cut-boundary-joint-proper-time-path.md`. These exponents are
sufficient under the stated model hypotheses, not optimal rates or a
physical admission margin.

This comparison keeps the finite cut fixed while changing b. It does not
provide a quantitative cut-to-complete heat rate, control local subtraction
coefficients, match physical and product-frame observables, or establish the
existence of the renormalized proper-time finite part. A smooth approximant
with uniform W5 bounds and error (8) must actually be constructed for the
selected field family before applying the path. No numerical or Lean check
is claimed.

Remaining to-do list: verify smooth approximants and the cut comparison,
match the physical source and subtractions, finish novelty and manuscript,
and certify supported claims in Lean on GCP.