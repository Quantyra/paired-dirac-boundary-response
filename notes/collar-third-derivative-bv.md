# BV third-derivative bound for reflected collar fields

Status: ordinary one-dimensional bound, not a Lean certificate or a proof
of the actual curved metric family. It supplies an explicit sufficient BV
hypothesis for [the periodic quadratic bridge estimate](bridge-quadratic-bv.md),
using the source's fixed logarithmic weight and cutoff transitions.

## Claim

Let 0<δ≤1/10 and, on 0<y≤δ, write

    g(y)=c y³+d y⁴ log y+r(y),
    |r^(j)(y)|≤K j!100^j y^(4−j)L(y),  j=0,...,4,
    L(y)=1+log(1/y).

Assume r is C⁴ away from zero with the indicated derivatives of the same
function. Let χ be smooth, equal to one near zero and zero near δ. Evenly
reflect χg, extend by zero and regard the result as 2π-periodic. Its third
weak derivative is BV and

    TV[(χg)_even'''] ≤ 12|c| + 2 Σ_{j=0}⁴ binom(4,j)
       ||χ^(4−j)||∞ [ |c| a_j J_j + (|d| b_j+K A_j) R_j ],  (1)

where A_j=j!100^j, a=(1,3,6,6,0), b=(1,5,19,50,74), J₄=0,

    J_j=δ^(4−j)/(4−j)  (0≤j≤3),
    R_j=δ^(5−j)[L(δ)/(5−j)+1/(5−j)²]  (0≤j≤4).

All constants are finite and explicitly include cutoff transitions. The
bound holds with K replaced by a uniform enlarged constant for the weighted
physical-side approximants constructed in
[the cutoff note](weighted-remainder-cutoff.md). It does not require the
approximants' ordinary fourth derivatives to be uniformly bounded.

## Proof

For j≤3 the derivatives of y³ have coefficients a_j, and their L¹ norms
are a_j J_j; its fourth derivative on y>0 is zero. The derivatives of
j≤3 of y⁴ log y obey the b_j bounds given in
[the H³ mapping](collar-periodic-h3.md). Its fourth derivative is
24 log y+50, whose absolute value is at most 74L(y). The remainder bounds
integrate to KA_j R_j. Leibniz and the triangle inequality therefore bound
∫₀^δ |(χg)''''| by the sum in (1).

As y↓0, g'''(y)=6c+O(yL(y)); its reflected third derivative is odd and
has jump 12c at the seam. The distributional derivative of that third
derivative is the sum of the jump measure 12c δ₀ and the reflected
piecewise fourth derivative. Its total variation is bounded by the jump
magnitude plus twice the positive-side L¹ bound. No additional jump occurs
at the cutoff or periodic join because χg vanishes near δ. This proves (1)
and preserves the cubic instead of replacing it by a smooth even field.

The source's explicit log smoothing and general weighted remainder cutoff
must be checked against the indicated j=4 bound with constants uniform in
the regulator. The latter construction already provides an enlarged
uniform weight constant; adding the unchanged cubic preserves its 12c
jump. Periodic mollification used in the BV bridge proof can further smooth
the double without increasing total variation, but it is a separate analytic
approximation and is not claimed to be the physical regulator.

For a positive bridge coefficient one may add a smooth positive seed and
choose perturbations so a common lower bound m holds. Inequality (1) then
controls the localized variation's contribution to TV(f'''); a global seed
and all atlas/cutoff terms must be bounded separately. This does not prove
that the periodic bridge equals the actual paired kernel or establish the
zeroth term, thermal images or common-regulator response.

Remaining to-do list: verify actual global coefficient and regulator bounds,
control the zeroth bridge term and paired boundary, reconcile contacts,
complete novelty review, and certify supported results on GCP.
