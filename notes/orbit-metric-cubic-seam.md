# Proper-distance metric coefficient and the cubic seam

This derives the local relation between the source's orbit metric and the
positive coefficient f used by the auxiliary bridge. It applies under the
explicit smooth even seed and radial Weyl hypotheses below; it does not
establish the full physical bundle/domain matching or Lean certification.

Let g0=dy²+a0(y)² dτ² for y>=0 near the boundary, with a0>0 and a smooth
even extension across zero. Write f0=1/a0. Let b(y)=c y³+r(y) be real,
with the weighted j<=4 bounds in `weighted-collar-bridge-bv-inputs.md`,
and define the orbit-conformal metric g_b=e^(2b)g0. Its inward proper
coordinate Y and bridge coefficient are exactly

    Y(y)=integral_0^y e^(b(s)) ds,
    f_b(Y(y))=e^(-b(y)) f0(y).                              (1)

Indeed g_b=dY²+[e^b a0]^2 dτ². For small enough fixed collar and a bounded
scalar ball, Y is a uniformly bi-Lipschitz increasing map with Y(0)=0.
The physical coefficient is therefore not generally f0(Y)e^(-b(Y)):
the inverse coordinate y(Y) must also be included.

The weighted estimates give

    Y(y)=y+(c/4)y^4+O(y^5 L(y)),
    y(Y)=Y-(c/4)Y^4+O(Y^5 L(Y)),                           (2)

where L=1+log(1/Y), uniformly on a bounded family with fixed collar.
Because f0 is smooth even, f0'(0)=0. Consequently

    f_b(Y)=f0(Y)-c f0(0) Y³+O(Y^4 L(Y)),                  (3)

and the remainder has the corresponding weighted derivative bounds through
order four under the stated regularity. This follows by repeated chain and
inverse-function rules: derivatives of y(Y)-Y have the same powers as the
integrated weighted bound, and f0(y(Y))-f0(Y)=O(Y^5) because f0'=O(Y).
The logarithmic factors can be absorbed into a fixed finite weight; the
inverse-derivative denominators are uniformly bounded by the scalar ball.

After even reflection, f_b''' has seam jump -12 c f0(0). Its third
weak derivative is BV on a fixed localized periodic extension, provided the
cutoff transition and seed derivatives have uniform bounds. This follows
from (3), the fourth-derivative L1 estimate and the jump calculation in
`collar-third-derivative-bv.md`. Positivity and W^{3,infinity} bounds are
uniform under the same fixed collar and scalar bounds. The auxiliary
periodic bridge therefore meets the coefficient regularity inputs of the
assembled contact estimate for this concrete orbit-conformal family.

If the seed has a genuine reflected cubic of its own, (3) must include that
seed's cubic coefficient; smooth evenness was used to exclude it here. A
general physical stationary deformation also need not be a pure
orbit-conformal change in a fixed collar. The fixed-seed direction convention
and a direction defined in the moving proper coordinate are different, as
explained in `proper-distance-moving-insertion.md`. This argument supplies
neither the global physical realization nor a uniform varying-atlas or
common-regulator theorem. No numerical computation is used.

Remaining to-do list: verify the source seed and physical family hypotheses,
match paired domains and insertions, establish the geometric response and
regulator, decide novelty, prepare the manuscript and certify in Lean on GCP.
