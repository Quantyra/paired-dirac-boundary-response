# Moved-cut seam correction for the RN product metric

This extends the collar construction in `moving-cut-cubic-seam-correction.md`
to the fixed RN product coefficient. It changes the coefficient near the
moved seam and does not by itself identify the physical regulated response.

Let f_0(y)=1/sqrt(B(u(y))) be the RN orbit coefficient, with y the inward
product proper distance and B(0)>0 as in `rn-seed-cubic-boundary-jet.md`.
The source seed has f_0'(0)=0, although f_0''(0) is generally nonzero.
Therefore, for small delta,

  |f_0'(delta)| <= C delta.                             (1)

For a radial cubic/log Weyl perturbation in the proper coordinate, the
uniform collar expansion in `orbit-metric-cubic-seam.md` gives the same
O(delta) bound provided the fixed seed and field-family hypotheses there
hold. This estimate is weaker than the O(delta^2) derivative for a pure
cubic direction; the quadratic seed term must be retained.

Let f_e be such a positive coefficient with f_e'(0)=0, common lower bound
m>0, common W3 bounds on the one-sided collar, and fourth derivative bounded
by C(1+|log e|) on the smooth side. Choose the same fixed smooth chi as in
the cubic note, and choose ell=delta^(1/4). Put

  g_delta,e(x)=f_e(delta+x)-f_e'(delta) x chi(x/ell), x>=0. (2)

Then g_delta,e'(0)=0, and g_delta,e agrees with the translated coefficient
for x>=2ell. Its even extension is W3: its first derivative has no jump,
its second derivative has equal one-sided traces, and its third weak
derivative is bounded. For k<=3 the correction obeys

  ||partial^k[g_delta,e-f_e(delta+.)]||_infinity
       <= C delta ell^(1-k).                            (3)

Thus the W1 correction is O(delta), while its W3 norm is O(delta^(1/2)).
The change in value is O(delta^(5/4)); for sufficiently small delta it
preserves a lower bound m/2. The translation comparison through third order
gives O(delta(1+|log e|)), so on a fixed collar

  ||g_delta,e(|x|)-f_e(|x|)||_W3,infinity
     <= C[delta^(1/2)+delta(1+|log e|)].               (4)

A fixed even patch may extend this coefficient to a positive periodic
auxiliary, with common constants provided the patch is compatible with the
reference extension. These conclusions use the seed's zero first jet and do
not hold with the same rates for a generic coefficient with f'(0) nonzero.

On the example delta=exp(-4L/t), e=t^9, the new W3 error in (4), even after
multiplication by any fixed negative power of t, tends to zero. The O(delta)
W1 correction can likewise be included in the form-difference parameter
under the common-domain assumptions. However the modified auxiliary differs
from the physical translated metric throughout a shrinking collar; matching
its Dirac operator, insertion density, contacts, local subtractions and the
source half-trace still requires a single complete comparison. Equation (4)
is not itself that comparison, a regulator theorem, or a Lean certificate.
No numerical calculation is used.

Remaining to-do list: propagate this metric and field correction through the
full source expression, verify physical bundle and regulator matching, resolve
prior art, prepare the manuscript, and certify claims in Lean on GCP.