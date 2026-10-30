# Physical integrability of local cubic bilinears

This supplements `weighted-fields-physical-norms.md` for the fixed smooth
RN product collar. It concerns local products, not the nonlocal mixed heat
trace or a Lean certificate.

Use g=u^(-2)ghat, y=alpha u+O(u^2), alpha>0, and the two real radial
profiles v(y)=c_v y^3+r_v(y), w(y)=c_w y^3+r_w(y), with the recorded
weighted remainder bounds through two derivatives. The physical volume is
u^(-4)J(u,z)du dz, with J smooth and positive and a compact boundary cross
section. The first-order bound in the preceding note gives

    |v|+|dv|_g <= C u^3,     |w|+|dw|_g <= C u^3.    (1)

The physical Hessian also obeys |nabla_g^2 v|_g<=C u^3, and similarly for
w. To see this, the conformal connection formula makes the coordinate
components of nabla_g^2 v a sum of nabla_hat^2 v and terms of order
u^(-1)|dv|_hat; both are O(u) in a smooth compactified frame. The two inverse
metric factors used in the tensor norm contribute u^2. In particular
|Delta_g v|<=C u^3. Fixed smooth bounded physical tensor coefficients may be
inserted in the contractions below.

It follows that each of

    v w,   <dv,dw>_g,   v Delta_g w,   w Delta_g v,
    <nabla_g^2 v,nabla_g^2 w>_g                       (2)

is physical L1 near the outer end, with absolute tail

    integral_(0<u<delta) |term| dvol_g <= C delta^3.   (3)

For example, each integrand is O(u^6), and the radial density is O(u^-4).
This is compatible with a single nonzero cubic profile failing L1: a mixed
local term has two decaying factors.

Now replace each remainder by the same type of physical-side cutoff used in
`weighted-remainder-cutoff.md`, retaining its cubic coefficient. On the
transition y<2e, the difference of a field, its physical gradient, and its
physical Hessian is O(u^4(1+|log u|)); outside that transition the raw cutoff
agrees with the field. This follows from the weighted j<=2 estimates,
cutoff derivatives supported at y comparable to e, and the conformal
connection formula above. The other factor in each term of (2) is O(u^3),
uniformly in e. Consequently the difference of each local bilinear has
physical L1 norm bounded by

    C integral_0^(C'e) u^3(1+|log u|)du
       = O(e^4(1+|log e|)).                             (4)

Fixed interior extensions and smooth mollifications need their own matched
bounds; (4) applies directly to the raw physical-side cutoff. The estimate
also applies when only one of the two factors is regularized.

These facts justify absolute integrability and cutoff convergence of the
listed local contractions on the fixed physical seed. They do not show that
the complete mixed heat derivative is trace class: its ordered first-vertex
products are nonlocal, involve unbounded differential form vertices, and
may have time-dependent tails. They also do not identify physical heat
counterterms, handle all possible moving-density terms, or justify common
regulator limits. No numerical calculation is used.

Remaining to-do list: control the nonlocal boundary-reaching heat vertices,
match the physical source and regulator, finish prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.