# Weyl direction in the proper-distance bridge coordinate

This computes the actual first variation needed to compare the fixed-space
smeared trace with `complex-bridge-geometric-remainder.md`. It is a local
radial orbit-conformal calculation under the stated weighted collar
hypotheses, not a physical domain or Lean certificate.

Start with g0=dy²+a(y)²dτ², f=1/a, and the real family
g_s=e^(2s v(y))g0. Set

    Y_s(y)=integral_0^y e^(s v(x))dx,
    W(y)=integral_0^y v(x)dx,
    f_s(Y_s(y))=e^(-s v(y))f(y).

At fixed Y=y, implicit differentiation gives

    delta_v f_s(Y)|_0 = g(y):=-v(y) f(y)-W(y) f'(y).        (1)

The second term is the proper-distance coordinate movement; the direction
is not simply -v f. For an insertion u fixed as a function of the original
manifold coordinate, its expression in the moving proper coordinate is
u_s(Y)=u(y_s(Y)), hence

    delta_v u_s(Y)|_0 = -W(y) u'(y).                         (2)

This is the coordinate representation of a fixed geometric insertion,
not an additional physical insertion chosen independently. In a trace
written in proper-coordinate half-density form, differentiating the bridge
must include both (1) and (2). The unitary coordinate and half-density maps
supply the measure change; their compatibility with the actual paired
realization is still a separate hypothesis.

Suppose f is the RN-side coefficient or a bounded radial Weyl variation
with f'(0)=0 and a reflected cubic, and v=c_v y³+O(y^4 L(y)) with the
weighted derivative bounds through order five. Then W=c_v y^4/4+O(y^5 L),
f'=O(y), and

    g(y)=-c_v f(0)y³+O(y^4 L(y)),
    [g_even''']_0=-12 c_v f(0).                            (3)

The moving-coordinate term W f' begins at order y^5, so it does not change
the cubic coefficient. Repeated differentiation of (1), using the source's
integrable logarithmic fourth-derivative bound for f and the y^4 factor in
W, gives g in W^{3,infinity} with g''' of bounded variation on a localized
periodic extension, provided the stated fifth-derivative weights and fixed
cutoff transitions hold. In particular W f'''' is bounded and the terms
containing W f''''' are integrable near the seam. The corresponding
constants depend on the fixed collar, seed and weighted direction bounds.
The insertion derivative -W u' obeys the same regularity under analogous
weighted hypotheses on u; it vanishes as y^6 when u is cubic.

At the level of a differentiable auxiliary bridge functional, its first
derivative at s=0 is therefore the derivative along the linear complex
coefficient path f+z g plus the separate linear insertion derivative (2).
This use of a linear complex path avoids assuming that the nonlinear
proper-coordinate inverse exists for complex s. The complex BV estimates and
the insertion derivative still need to be established with uniform constants
and matched to the physical heat trace; the present calculation does not
supply those analytic or domain identities.

No numerical computation is used. This result is for orbit-only conformal
variation; a full four-dimensional Weyl family also changes the angular
mode as recorded in `full-weyl-angular-vertices.md`.

Remaining to-do list: prove the complex bridge and insertion estimates, match
physical domains and regulator, complete novelty and the manuscript, and
certify supported claims in Lean on GCP.
