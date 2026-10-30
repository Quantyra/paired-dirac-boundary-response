# Conformal logarithm times a cubic source direction

This checks a localization issue in `physical-product-mixed-cutoff-bridge.md`
and `gapless-localized-heat-endpoint.md`. It does not turn the mixed heat
vertex into a scalar insertion or prove the physical upper endpoint.

On the fixed product-frame RN collar use the source coordinate
U=b_sphere/r and inward proper distance y from U=0. The coordinate relations
in `rn-proper-canonical-collar-jets.md` give dy/dU=b_sphere/sqrt(B(U)),
with B smooth and B(0)>0. Consequently U(y)=c y+O(y²), c>0, and for
b_conf(y)=log U(y),

  b_conf(y)=log y+O(1),
  |partial_y^j b_conf(y)| <= C_j y^(-j),  j=1,2,3.            (1)

The derivative estimates use smoothness of U(y)/y up to y=0 and its positive
limit, not merely the two-sided comparison U asymptotic to y.

Let v be a physical-side admitted source direction with a cubic jet and the
weighted remainder class in the frozen rough-variation source. On a fixed
small collar its bounds imply

  |partial_y^j v(y)| <= K_j y^(3-j),  j=0,1,2,3.              (2)

Indeed the weight-four logarithmic remainder and its derivatives are of
strictly higher order than the cubic terms for j<=3; its constants include
the collar localization. Leibniz and (1)--(2) give

  |partial_y^j (b_conf v)|
     <= C K y^(3-j)(1+|log y|),       j=0,1,2,3.             (3)

The right side tends to zero for j<=2 and is square-integrable for j=3,
because integral_0^delta (1+|log y|)^2 dy is finite. Thus the localized
product b_conf v is bounded and belongs to H3 on the physical side,
provided the smooth transition and interior pieces satisfy the corresponding
regularity. For example

  integral_0^delta (log y)^2 dy
     =delta[(log delta)^2-2 log delta+2].                     (4)

This is an upper-integrability calculation, not a trace estimate.

There is a useful distinction: if v(y)=c_v y^3+o(y^3) with derivatives
consistent with the source remainder and c_v!=0, then

  partial_y^3(b_conf v)=6 c_v log y+O(1)                       (5)

as y decreases to zero. Hence b_conf v is generally not W3,infinity even
though it is H3. A proof requiring a uniform bounded third derivative of
the product cannot be obtained from the original weighted cubic/log class.
The result also does not say that multiplication by b_conf can be moved
through a heat derivative, that b_conf alone is bounded, or that the
physical measure has the same integrability as the product-frame measure.
The full mixed vertex, its trace factorization, the physical boundary and the
cut/regulator limits remain to be established. No numerical or Lean
certification is claimed.

Remaining to-do list: verify the physical weighted smoothing and mixed
endpoint, prove the curved regulator estimate, resolve novelty, complete the
manuscript, and certify supported claims in Lean on GCP.
