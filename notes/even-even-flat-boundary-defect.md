# Flat boundary defect of the even-even angular first-vertex pair

This estimates the boundary-minus-tangent defect of the two ordered products
of the even angular first vertices in the full-Weyl correction. It is a flat
product-model result for cubic-vanishing directions, not a curved estimate,
the complete even-even sector, a source-observable theorem, or a Lean
certificate.

## Model

Use the flat half-cylinder

    Omega=[0,infinity)_y x (R/TZ)_tau

with antiperiodic thermal spin. On each finite spin component, let `Q` be the
product Laplacian with Dirichlet or Robin boundary condition
`partial_y phi(0)=S phi(0)`, `0<=S<=S0`. Let `Q_tan` be the full-line product
Laplacian; its trace is one half of the doubled full-line trace with the
even-folded directions, so the comparison has per-exterior normalization.

Take localized real directions with

    |u(y)|<=U y^3,     |w(y)|<=W y^3

on their common collar support. These bounds hold for the admitted cubic/log
jets, since `y |log y|` is bounded at the seam. For `s>0`, write

    g_s(x)=(4 pi s)^(-1/2) exp(-x^2/(4s)),
    H_s(tau)=sum_(k in Z)(-1)^k g_s(tau+kT).

The exact Dirichlet and bounded-Robin kernels imply

    |K_Q(s;y,y')|+|K_Qtan(s;y,y')|
       <= C [g_s(y-y')+g_s(y+y')],
    |K_Q(s;y,y')-K_Qtan(s;y,y')|
       <= C g_s(y+y').                                      (1)

The constants are uniform for `S<=S0` and `0<s<=t0<T^2/16`. These are
the same full image bounds used in the odd-odd boundary-defect estimate.

## Two-insertion trace defect

For `a,b,c>=0`, `a+b+c=t`, consider the cyclic two-insertion trace

    B_(uw)(t;a,b,c)
      =Tr_Omega(exp(-aQ) M_u exp(-bQ) M_w exp(-cQ))
       -Tr_tan(exp(-aQ_tan) M_u exp(-bQ_tan) M_w exp(-cQ_tan)).

The tangent trace is on the full line with even-folded multipliers. To write
it on the positive half-line, set the sign of one of the three cyclic
vertices to `+` and sum over the four choices of signs at the other two
vertices. Each edge then contributes either a direct Gaussian
`g_s(y-y')` or a reflected Gaussian `g_s(y+y')`. The all-direct path is
exactly the all-direct term in the half-line trace. In the difference, all
remaining terms contain at least one reflected factor: terms from the
half-line kernels contain their reflected part, while nontrivial folded
tangent paths have two reflected edges. The other factors are bounded by the
sum in (1). This gives a finite sum of positive-half-line Gaussian moments.

The needed moment assertion is the uniform bound, for each such term,

    integral_(y1,y2,y3>=0) y2^3 y3^3
       [one or more reflected factors][remaining factors]
       dy1 dy2 dy3 <= C t^3.                               (2)

Scaling `yj=sqrt(t) xj` reduces this to a dimensionless integral for time
fractions in the simplex. The normalization powers cancel: the three
one-dimensional kernels contribute `t^(-3/2)`, the volume element
contributes `t^(3/2)`, and the two cubic insertions contribute `t^3`.
The remaining uniform bound, including corners where two or more fractions
vanish, is the substantive Gaussian lemma in this argument. At a vanishing
fraction its kernel must be treated as an approximate identity (a direct
edge identifies adjacent coordinates, while a reflected edge pins them to
the seam); simply substituting a delta in a pointwise bound is not enough.
The draft estimate remains conditional on establishing this uniform
approximate-identity bound.

For the thermal variables, bound each antiperiodic image kernel in absolute
value by the positive periodic image kernel. Their convolution on the circle
is the positive periodized Gaussian at time `t`; after the two relative
thermal integrations it is bounded by `C_T t^(-1/2)`. Consequently,

    |B_(uw)(t;a,b,c)| <= C_(T,S0,t0) U W t^(5/2),          (3)

uniformly on the Duhamel simplex and with the full antiperiodic image sum.

## Tower-weighted even-even pair

After pairing the signs of the angular mass, the even first angular vertex
in direction `u` is `-2 mu_n^2 M_u`; similarly for `w`. Their two ordered
Duhamel products have coefficient `4 mu_n^4`. Summing the massive tower
uses

    sum_(n>=1) d_n mu_n^4 exp(-t mu_n^2)=Theta''(t)<=C t^(-3).

The two time orderings together have simplex area `t^2`. Assuming the
uniform Gaussian moment lemma above, equation (3) therefore gives the
boundary-minus-tangent defect

    |R_even-even,bdy(t)|
       <= C_(T,S0,t0,q,b0) U W t^2 Theta''(t) t^(5/2)
       <= C_(T,S0,t0,q,b0) U W t^(3/2).                   (4)

If that lemma holds, this component has an integrable `dt/t^2` endpoint. The estimate concerns
only the difference caused by the flat boundary kernels; it does not bound
the same-boundary full-line tangent response or its local subtraction.

## Scope

The result assumes a flat product operator, constant bounded Robin data,
cubic vanishing of both directions, and the common product spin/projector
decomposition. It does not control variable or curved coefficients, moving
cuts, physical density/contact, transgression, source conversion, the LLL,
or the common-regulator endpoint. It closes neither the full even-even
sector nor the P1 correction by itself.

Remaining to-do list: establish curved mixed-boundary analogues and match
all vertices to the source tangent subtraction, sectors and physical
normalization; certify supported claims on GCP.
