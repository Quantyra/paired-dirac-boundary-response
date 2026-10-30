# Physical heat diagonal bounds uniform in the weighted cutoff

This extends `physical-fixed-seed-heat-diagonal.md` to the recorded radial
weighted collar approximants on one fixed RN physical geometry. It assumes
explicit matching interior regularity and the local elliptic estimate stated
below. It does not prove uniformity over changing geometries or finite-cut
boundaries, the ordered response vertices, or Lean certification.

Use g=u^(-2)ghat, y=alpha u+O(u^2), and the fixed-radius physical charts
centered at u0 described in the fixed-seed note. On such a chart u is
comparable to u0, and each coordinate differentiation in a rescaled chart
contributes a factor u0 in compactified coordinates. Let

    b_e(y)=c y^3+r_e(y),
    |r_e^(j)(y)|<=C_j y^(4-j)(1+|log y|), j=0,...,5,   (1)

with constants independent of the physical-side cutoff e. The cutoff and
smooth approximation construction in `weighted-remainder-cutoff.md`
provides these bounds with enlarged uniform constants. For fixed radial
profiles, the chain rule and smooth y(u) imply on the rescaled chart

    |partial_chart^j r_e| <= C u0^4(1+|log u0|),
    |partial_chart^j (c y^3)| <= C u0^3,  j<=5.        (2)

Here multi-indices include tangential chart directions; the radial profile
has no tangential dependence, and smooth changes of chart and y(u) have
uniformly controlled derivatives. The right sides are uniformly bounded as
u0->0, even for j=4,5. This does not assert bounded fourth or fifth
derivatives in the unscaled compactified coordinate.

Assume on a fixed compact interior and bolt cover that the chosen smooth
approximants have uniform C5 bounds and agree with a uniformly controlled
extension. Together with (2), the fixed seed's uniform metric and magnetic
gauges, and a uniform bound on |b_e|, the coefficients of
L_e=(E_e D E_e)*(E_e D E_e) are uniformly elliptic on the physical charts.
Their leading, first-order and zeroth-order coefficients have the uniform
W2,infinity bounds needed for the local H4 elliptic estimate: expanding the
square uses derivatives of b_e through order two, and differentiating those
coefficients twice uses at most four. All constants may depend on the fixed
seed, cutoff constants and interior extension, but not on e.

For the nonnegative self-adjoint L_e, spectral calculus supplies the same
uniform bounds on (1+L_e)^j exp(-t L_e/2), j<=2. Applying the uniform local
H4 estimate and H4->C1 embedding as in `physical-fixed-seed-heat-diagonal.md`
gives, uniformly in e and x,

    tr K_(e,t)(x,x) <= C(1+t^(-4)),
    tr[(D_e K_(e,t/2))(D_e K_(e,t/2))*](x,x)
       <= C(1+t^(-4)),                                  (3)

for t>0, with the usual fixed interval convention for enlarging C. Thus the
Hilbert--Schmidt mixed second-vertex estimate and its local cubic tail in
`physical-mixed-second-vertex-trace.md` hold with constants independent of e,
provided the directions and their physical L2 bounds are uniformly controlled.
The matched raw cutoffs have those bounds by
`physical-cubic-bilinear-integrability.md`.

The proof relies on a fixed smooth seed, radial profiles, the stipulated
uniform interior extension, and the uniform local elliptic H4 estimate. It
does not assert uniform constants across a changing RN family or moving
finite-cut boundaries. The O(t^-4) bound is crude and does not make the
subtracted proper-time integral converge. It also does not control the two
ordered first-vertex terms or identify the physical regulator. No numerical
calculation is used.

Remaining to-do list: verify the finite-cut and physical boundary hypotheses,
control ordered vertices and the full regulator, resolve prior art, prepare
the manuscript, and certify supported claims in Lean on GCP.