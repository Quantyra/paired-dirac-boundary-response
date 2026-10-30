# Uniform physical finite-cut heat diagonals

This extends `physical-ordered-vertices-cutoff-uniform.md` to smooth local
finite-cut projector problems under the uniform boundary regularity stated
below. It does not establish finite-cut integration by parts for every
ordered vertex, a physical infinity-boundary identification, a regulator
limit or Lean certification.

Use the fixed nonextremal physical RN metric g=u^(-2)ghat with its smooth
bolt, fixed spin and magnetic bundles, and cuts X_delta={u>=delta} for
0<delta<=delta0. Let D_(delta,e)=E_e D_delta E_e, E_e=exp(-b_e/2), with
the actual H1 local projector domain and complementary adjoint domain at
each cut. Let L_(delta,e)=D_(delta,e)*D_(delta,e) with its composition
domain. Assume the radial b_e and the fixed interior extensions satisfy the
uniform physical-chart C5 bounds of
`physical-rough-family-heat-diagonal.md`.

The moving cut admits uniformly controlled physical boundary charts. Near a
point with u comparable to delta, use the coordinates scaled by its u value
as in `physical-fixed-seed-heat-diagonal.md`; u=delta becomes a smooth
uniformly controlled hypersurface, and the physical metric and its needed
derivatives have common ellipticity and coefficient bounds. The compact
interior and regular bolt use a fixed cover. The normal, second fundamental
form, spin connection and matched magnetic gauges have uniform derivatives
to the needed finite order in these charts. Thus the local projector chi and
its derivatives are uniformly controlled as well. These facts concern one
fixed RN seed and fixed period, not arbitrary near-extremal families.

At a smooth cut the composition square has the mixed boundary form: Pi_-
v=0 and a normal Robin condition on Pi_+v. Its leading normal derivative is
invertible on the allowed subbundle; tangential Clifford terms exchange the
projector subbundles. The Robin coefficient includes curvature and scalar
multiplier jets. The weighted physical-chart bounds supply uniform control
of those jets. Consequently the principal mixed boundary symbol has a common
complementing constant. Assume the corresponding standard local boundary
elliptic estimates, uniformly on these charts: the first-order H1 graph
estimate for D_(delta,e), and the H3/H5 estimates for L_(delta,e) with
homogeneous composition boundary conditions. This is the explicit analytic
input; it is not inferred merely from the formal projector matrices.

For t>0, spectral calculus gives uniform bounds on
L_(delta,e)^j exp(-t L_(delta,e)/2), j<=2, and on
D_(delta,e)L_(delta,e)^2 exp(-t L_(delta,e)/2). Heat smoothing places each
factor in the required operator or form domain. Applying the uniform graph
estimate to L^2 K, then the H3 and H5 boundary estimates to L K and K on
nested half-charts, yields

    ||K_(delta,e,t/2)h||_H5(smaller chart)
       <= C(1+t^(-5/2))||h||_2,                        (1)

with C independent of delta,e and the chart. The same estimate holds on
interior charts. Boundary Sobolev embedding in dimension four and point
evaluation yield uniform diagonal bounds for the heat kernel and its spatial
derivatives through order two, and for D_(delta,e)K_(delta,e,t/2), at each
fixed positive t. These bounds include points approaching the moving cut.
They also imply the weighted Hilbert--Schmidt estimates used for the local
mixed second form vertex, with constants independent of delta,e.

The H5 estimates and core regularity above must be verified for the actual
chosen first-order realization and all its composition traces; the argument
provides a concrete uniform boundary-ellipticity route, not a proof of the
physical coupled boundary or bolt bundle. In particular, derivative transfer
in the ordered first-vertex trace may generate boundary terms unless the
specific multiplier and adjoint-domain relations eliminate them. This note
does not discard such terms. The constants in (1) are nonsharp as t->0 and
provide no subtracted proper-time remainder. No numerical calculation is
used.

Remaining to-do list: establish the uniform boundary estimates and ordered
vertex boundary terms for the actual realization, match physical source and
regulator, resolve prior art, prepare the manuscript, and certify supported
claims in Lean on GCP.