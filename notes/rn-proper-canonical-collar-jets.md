# RN proper-distance jets in the canonical cut coordinate

This checks the coordinate assumption in
`changing-cut-removed-collar-trace.md` for the frozen classical RN product
frame. It is a local coordinate comparison, not an identification of the
canonical heat trace with the full physical response or a Lean certificate.

Use the frozen source conventions

    u=b/r, B(u)=u² F(b/u),
    ghat_2=B(u)dτ²+b² du²/B(u), B(0)=X>0.

Let y be inward proper distance for ghat_2 from u=0, and let x_* be the
canonical tortoise coordinate with dx_*/dr=1/F(r), x_*(infinity)=0. Put
s=-x_*>=0. Direct substitution gives

    dy/du=b/sqrt(B(u)),    ds/du=b/B(u),
    dy/ds=sqrt(B(u(s))).                                    (1)

Because B is continuous and B(0)=X>0, on a sufficiently small fixed
collar there are finite positive constants B_- and B_+ such that
B_-<=B<=B_+. Integrating (1) from zero yields the two-sided comparison

    sqrt(B_-) s <= y(s) <= sqrt(B_+) s.                     (2)

In particular y/s->sqrt(X). These are fixed-seed statements; uniformity
for a varying RN family requires common bounds on X and the collar.

If a scalar direction obeys |u(y)|<=K y³ on the physical side of this
collar, then its pullback to the canonical coordinate obeys

    |u(s)|<=K B_+^(3/2) s³,
    integral_0^ell |u(s)|² ds <= K² B_+³ ell^7/7.          (3)

Thus the cubic-zero hypothesis of the removed-collar estimate holds in the
canonical coordinate for the frozen product seed, with the displayed
constant. A bound |u(y)|<=K y³ follows from the weighted cubic-plus-remainder
class on a fixed sufficiently small collar after absorbing y L(y) into K;
the explicit logarithmic term does not change the order.

For a cut at radius R, the fixed-reference estimate ell_R<=2 L4²/R in
`rn-cut-smoothed-transport.md` then yields an O(R^-7) upper bound for the
squared radial L² collar norm in (3), with fixed geometry and direction
constants. The heat trace still carries its t, angular smoothing and local
heat factors from the removed-collar note.

This comparison concerns the product-frame proper distance, not physical
proper distance in the uncompactified metric. It does not prove equality of
the canonical and Euclidean paired operators, an angular regulator limit,
or transport of the infinity projector to the finite cut. No numerical
calculation is used.

Remaining to-do list: establish the physical trace and domain matching,
control the common regulator, finish novelty and manuscript, and certify
supported results in Lean on GCP.
