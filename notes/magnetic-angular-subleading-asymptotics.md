# Subleading heat asymptotics of the recorded magnetic tower

This sharpens the leading Riemann-sum limits in
`angular-flat-contact-leading-remainder.md` for the source's stated nonzero
sphere modes. It is an ordinary calculation for fixed magnetic parameter and
radius, not a physical response, curved-regulator theorem or Lean certificate.
The numerical role is algebraic verification of coefficients; no numerical
run is needed. The result does not by itself justify differentiating a
remainder: the mass-weighted sum is estimated separately below.

Let q>=0 be fixed, b>0, and

  M_n^2=n(n+q)/b^2,  d_n=2(q+2n),  n>=1,
  Theta(t)=sum_(n>=1) d_n exp(-t M_n^2).                       (1)

These multiplicities already include both nonzero sphere signs. Set
a=t/b^2 and f(x)=x(x+q). The claimed expansions are

  Theta(t)=2/a-q-1/3 + a(q^2/6-1/30)+O_q(a^2),                (2)
  -Theta'(t)=b^(-2)[2/a^2-q^2/6+1/30+O_q(a)].                 (3)

The O constants are for fixed q as a decreases to zero. A finite zero-mode
contribution, if included, must be added separately to (2); it contributes
nothing to (3). These formulas do not assign zero modes to a physical sector.

## Euler--Maclaurin calculation

Define g_a(x)=2 f'(x) exp(-a f(x)), x>=0. The integral is exact:

  integral_0^infinity g_a(x) dx=2/a,                            (4)

by z=f(x), with the endpoint x=0 and f(0)=0. The first endpoint data are

  g_a(0)=2q,  g_a'(0)=4-2a q^2,
  g_a'''(0)=-24a+24a^2 q^2.                                   (5)

Euler--Maclaurin for the sum n>=1 gives

  sum_(n>=1) g_a(n)
    = integral_0^infinity g_a(x) dx -g_a(0)/2
       -g_a'(0)/12 +g_a'''(0)/720 + O_q(a^2).                 (6)

To justify the error, use the formula through the fifth-derivative endpoint.
The fifth-derivative term is O_q(a^2), and the periodic Bernoulli remainder
is bounded by a constant times integral |g_a^(6)|. With y=sqrt(a)x,

  g_a(x)=2 a^(-1/2)(2y+q sqrt(a)) exp[-y^2-q sqrt(a)y].        (7)

Six x derivatives and dx=dy/sqrt(a) give
integral_0^infinity |g_a^(6)(x)| dx <= C_q a^2 for 0<a<=1.
Indeed the y derivatives are polynomials in y and q sqrt(a) times the
Gaussian; for fixed q they have an integrable uniform majorant. The endpoint
fifth derivative obeys the same or a better power by the same scaling.
Substitution of (4)-(5) into (6) gives (2).

For the mass-weighted sum, set h_a(x)=f(x)g_a(x). Its integral and endpoint
data are

  integral_0^infinity h_a(x) dx=2/a^2,
  h_a(0)=0,  h_a'(0)=2q^2,  h_a'''(0)=24+O_q(a).              (8)

Apply Euler--Maclaurin independently to sum h_a(n). The same rescaling gives
h_a(x)=2 a^(-3/2) y(y+q sqrt(a))(2y+q sqrt(a))
             exp[-y^2-q sqrt(a)y].
Its fifth endpoint derivative and the integral of its sixth derivative are
O_q(a), so the remainder in the analogue of (6) is O_q(a). Thus

  sum_(n>=1) d_n f(n) exp[-a f(n)]
      =2/a^2-q^2/6+1/30+O_q(a).                                (9)

For every t>0 the differentiated series is absolutely convergent, and
-Theta'(t)=b^(-2) times (9), proving (3) without differentiating O_q(a^2).
For q=0 the constant term in Theta is -1/3, a useful convention check for
this positive-mode multiplicity.

## Role in the response audit

The leading terms agree with t Theta(t)->2b^2 and
 t^2[-Theta'(t)]->2b^2. Equations (2)-(3) also show the first fixed-q
subleading angular contributions that must be retained when comparing local
subtractions. They do not prove an angular-uniform remainder for varying q or
b, identify the physical orbit trace, or supply the unknown curved remainder.
The mass-weighted constant is an intermediate spectral coefficient, not a
physical admission margin.

Remaining to-do list: match physical domains, trace and full local
counterterms; establish the curved regulator, settle novelty and scope, finish
the manuscript, and certify supported claims in Lean on GCP.
