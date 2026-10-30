# Fixed-seed physical heat diagonal bounds

This verifies the fixed-positive-time diagonal hypotheses of
`physical-mixed-second-vertex-trace.md` under explicit smooth bounded-geometry
assumptions. It is not a uniform rough-regulator or finite-cut estimate and
is not Lean certified.

Let X be the fixed smooth nonextremal Euclidean RN-AdS exterior with the
regular thermal bolt and g=u^(-2)ghat near infinity. Assume the smooth
magnetic twisting connection and a smooth real scalar b have uniformly
bounded covariant derivatives through a sufficiently high fixed order, with
b bounded. Let D_b=exp(-b/2)D exp(-b/2) be the closed complete-manifold
realization and L_b=D_b*D_b. In a uniformly locally finite family of fixed
radius charts and bundle gauges, assume the coefficients of L_b are uniformly
elliptic and have the bounded derivatives needed for H4 interior regularity.
These assumptions hold for the fixed smooth RN metric and its standard
magnetic connection once the stated chart/gauge construction is made; they
are not asserted uniformly for every rough approximant.

The chart construction near infinity can be seen directly. At a point with
u=u0 small, use coordinates (u-u0)/u0 and (z-z0)/u0 in a fixed compactified
boundary chart. On a sufficiently small fixed ball these coordinates stay in
the collar, do not wrap around a periodic chart, and the coefficients of
u^(-2)ghat and their derivatives have uniform bounds and ellipticity because
ghat is smooth and nondegenerate at u=0. A finite atlas handles the compact
interior and regular bolt. The fixed monopole connection can be represented
in local gauges with controlled derivatives when its curvature and the
required covariant derivatives are uniformly bounded; its physical
orthonormal magnitude decays at infinity. This argument concerns fixed seed
constants and does not supply explicit numerical values.

For any t>0 spectral calculus gives, for j<=2,

    ||(1+L_b)^j exp(-t L_b/2)|| <= C_j(1+t^(-j)).     (1)

Uniform local elliptic regularity on nested charts therefore bounds the H4
norm of exp(-t L_b/2)h on each fixed-radius smaller chart by
C(1+t^(-2))||h||_2. Sobolev embedding H4 in dimension four controls a
section and its first derivative pointwise. With the bounded first-order
coefficients of D_b, uniformly in x,

    |(K_(t/2)h)(x)| + |(D_b K_(t/2)h)(x)|
       <= C(1+t^(-2))||h||_2.                           (2)

Point evaluation of either smoothing operator is a bounded map from L2 to a
finite-dimensional fiber. The Riesz representation and an orthonormal-basis
sum identify its Hilbert--Schmidt norm squared with the corresponding heat
kernel diagonal. Therefore

    sup_x tr K_t(x,x) <= C'(1+t^(-4)),
    sup_x tr[(D_b K_(t/2))(D_b K_(t/2))*](x,x)
       <= C'(1+t^(-4)).                                  (3)

These are deliberately crude positive-time bounds, not sharp small-time heat
asymptotics. They provide A_t,B_t in the conditional mixed second-vertex
estimate for a fixed smooth b with the stated uniform local coefficient
bounds. Standard local elliptic/semigroup regularity also supplies the kernel
and form-core identities used there.

The constants can depend on the fixed b and high derivatives. The weighted
mass/log cutoff class has not been shown to have all required derivatives
uniformly bounded in the physical charts, and boundary-cut heat constants
are not covered by this complete-manifold argument. Equations (2)--(3) do
not bound the ordered mixed vertices or establish an integrable subtracted
proper-time remainder. No numerical calculation is used.

Remaining to-do list: establish the necessary rough-family and finite-cut
uniformity, control ordered vertices and the full regulator, match the source
and boundary normalization, resolve prior art, prepare the manuscript, and
certify supported claims in Lean on GCP.