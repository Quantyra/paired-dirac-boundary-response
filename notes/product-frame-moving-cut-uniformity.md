# Uniform compact-product estimates for a moving smooth cut

This addresses the missing uniform constants in
`canonical-angular-contact-scale-compatibility.md` for a fixed smooth
product-frame seed with local projector boundary conditions. It does not
identify those conditions with transported physical infinity data, match the
canonical and Euclidean squares, or prove a Lean theorem.

Let X_0=O_0 x S be a compact smooth product with boundary, fixed smooth
spin/twisting bundles and product sphere operator B. Assume the orbit seed
metric and connections extend smoothly across a boundary collar, the bolt is
a smooth interior point, and the boundary involution is chi=tau_3 c(n).
For 0<=delta<=delta_0 let X_delta be the submanifold obtained by moving the
outer boundary inward by collar coordinate delta. Equip each cut with the
same local projector condition Pi_- trace=0. Assume the seed first-order
realization at delta=0 has the elliptic H1 graph estimate and complementary
adjoint domain used in `finite-cut-elliptic-domain-bridge.md`.

Choose collar diffeomorphisms F_delta:X_0->X_delta which translate the
boundary by delta and are the identity away from a fixed collar. Their
coefficients and inverses converge in every fixed C^k norm as delta->0.
Use smooth normal-frame and bundle parallel transport, together with the
square root of the pulled-back density, to identify the L2 spaces unitarily.
Choose the boundary frame so that the identified chi and Pi_- are fixed;
this is possible for the stated local normal projector. The transported
operators P_delta then act on one H1 projector space V, and smoothness gives

    ||(P_delta-P_0)v||_2 <= C delta ||v||_H1,  v in V.  (1)

The fixed sphere bundle and operator are unaffected by the orbit-only
transport. Equation (1) includes first-order coefficient and zero-order
connection changes; the diffeomorphism is identity near the bolt. From the
fixed-cut estimate ||v||_H1<=C0(||P_0 v||+||v||), absorb C0 C delta for
small delta to obtain a single C1 such that

    ||v||_H1 <= C1 (||P_delta v||+||v||),  v in V.     (2)

The reverse graph estimate also has a common constant. Thus the first-order
form domains and graph constants are uniform on this small moving-cut family.
This argument uses the H1 realization and smooth coefficient convergence;
it does not infer it solely from equality of formal symbols.

Let b_delta,u_delta,w_delta be real orbit scalar multipliers whose pulled-back
W1,infinity norms have a common finite bound and whose exponentials preserve
V. Their complex congruence forms are uniformly close to the real base forms
on a sufficiently small common parameter polydisc, by the weak product rule
and (2). The exact product-mode graph identity and the scalar congruence
estimate then give constants a,C independent of delta and angular mode with

    Re q_(delta,z)(v,v) >= a ||Bv||^2 - C ||v||^2.      (3)

The full uniform H1 coercivity is retained as well. On the fixed reference
manifold, the embedding V->L2 has singular values O(j^(-1/4)); the constant
is independent of delta because V and the Hilbert norms have been fixed by
the unitary identifications. Uniform sectorial smoothing and the n-factor
argument in `complex-heat-sharp-trace-bound.md` therefore give

    ||T_(delta,z)(t)||_1 <= K t^(-2),  0<t<=1,          (4)

with one K on the common smaller polydisc. The argument of
`full-weyl-mixed-response-angular-tail.md` now gives its Gaussian angular
mixed-derivative tail with constants uniform in delta, provided the
multipliers are orbit-dependent and the mode projections reduce the forms.
The Cauchy radii are uniform when the direction norms are uniformly bounded;
localized directions require the separate uniform scaled-norm hypotheses.

For the fixed RN product frame, B(u) in the collar metric
B(u)d tau^2+b^2 du^2/B(u) is smooth and B(0)>0, so small cuts u=delta have
the required nondegenerate collar; the regular bolt and fixed sphere/bundle
assumptions are still to be matched to the source. In particular, the local
projector at each cut is not automatically the infinity projector transported
through the removed collar. The uncompactified physical metric, exact
spin/copy and magnetic maps, rough-family uniformity, common counterterms and
fixed-direction curved complement remain separate. Equations (3)--(4) do not
prove the physical subtracted response or a regulator interchange. No
numerical calculation is used.

Remaining to-do list: verify the physical pullback and transported boundary,
match all response and regulator terms, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.