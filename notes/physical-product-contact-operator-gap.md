# Physical versus product-frame contact: the operator gap

This compares the finite-cut physical contact in
`physical-contact-joint-cut-approximants.md` with the product-frame orbit
contact in `tangent-regulator-normalization.md`. It identifies a concrete
operator obstruction; it does not prove that their regulated responses differ
or establish either determinant limit.

## Audit contract

**Claim.** On each fixed smooth cut, after the stated bundle and projector
identification, the physical L2 square transports to the composition square
of `P=E D_hat E`, with the domain in (3).

**Ordinary argument.** Apply four-dimensional Dirac conformal covariance and
the physical-to-product L2 unitary. On a fixed cut, scalar smooth positive
multipliers preserve the H1 projector traces; compute the adjoint and actual
composition domain in order.

**First unsupported implication.** Uniformly carry this exact finite-cut
composition and its full Weyl response to the moving conformal endpoint and
identify its density/contact/LLL subtraction with the source's product-frame
orbit conversion under a common regulator.

**Numerical role.** None for this operator identity. Computation cannot
establish the boundary-domain equivalence or the moving-cut trace limit.

On a fixed finite cut let ghat=u^2 g in four dimensions, with u=b/r>0.
Let D_g,D_hat denote the geometric Dirac expressions for g,ghat with the
same smooth spin/twist identification. The standard conformal covariance is

  D_hat = u^(-5/2) D_g u^(3/2).                       (1)

The unitary map from physical L2(g) spinors to product-frame L2(ghat)
spinors is multiplication by U=u^(-2), since dvol_ghat=u^4 dvol_g.
Combining this unitary map with (1) gives on a smooth common core

  U D_g U^(-1) = u^(1/2) D_hat u^(1/2).              (2)

## Exact finite-cut composition domain

Fix one smooth finite cut. Assume the pulled-back physical and product-frame
projectors agree under the stated bundle identification, and that their
common complementary first-order domains are

  V  = {psi in H^1 : Pi_- tr(psi)=0},
  V* = {phi in H^1 : Pi_+ tr(phi)=0}.

The finite-cut source model's projector and adjoint-domain argument is audited
in [`source-finite-cut-domain-instantiation.md`](source-finite-cut-domain-instantiation.md).
For the static zero-angle RN seed, the parent source's finite-cut conformal
domain derivation supplies the physical-to-product unitary and projector
identification at the conformal boundary in the compactified product frame.
This does not identify the source-induced domain on an arbitrary finite
physical radial truncation: the source explicitly requires separate matching
there, and the exact collar test in
[`finite-cut-boundary-transport.md`](finite-cut-boundary-transport.md) shows
that the transported projector generally mixes angular modes. No extension
to other frames or varying boundary angles is asserted.

On this fixed cut E=u^(1/2) and E^(-1) are smooth bounded multipliers that
preserve both projector domains. Thus P=U D_g U^(-1)=E D_hat E has
Dom(P)=V and Dom(P*)=V*. The adjoint statement follows from
P*=E D_hat* E and the complementary trace condition. Its actual composition
domain and action are therefore

  Dom(P*P) = {psi in V : D_hat(E psi) in V*},
  P*P psi = E D_hat* E^2 D_hat E psi.                 (3)

For the domain equality, P psi is in Dom(P*) precisely when
E P psi=E^2 D_hat(E psi) lies in Dom(D_hat*)=V*. Since E^2 and its inverse
preserve V*, this is equivalent to D_hat(E psi) in V*. This condition is
not the bare product-frame square condition
`psi in V, D_hat psi in V*` unless an additional domain equivalence is
proved. Formula (3) keeps the physical square's composition domain explicit.
The set-theoretic reduction under the two domain-preservation assumptions is
checked in Lean on GCP; see the
[exact-source receipt](../evidence/gcp-finite-cut-congruence-domain-20261031/README.md).
The analytic assumptions themselves are not part of that Lean theorem.

## Exact finite-cut heat-trace transport

The map `U` above is unitary between the physical and product-frame `L^2`
spaces, and (3) gives the actual transported composition domain. Hence the
physical square `D_g^*D_g` and transported square `P^*P` are unitarily
equivalent, including their domains. For each fixed finite cut and `t>0`,

    U exp(-t D_g^*D_g) U^(-1) = exp(-t P^*P),
    Tr_(L2(g))(exp(-t D_g^*D_g))
      = Tr_(L2(ghat))(exp(-t P^*P)),

whenever either heat operator is trace class; in that case both are. This
uses the same proper-time parameter and incorporates the physical volume
density through the unitary map. If coefficients vary and these trace
functions are differentiable, the equality holds pointwise in the parameter,
so their first and mixed derivatives agree and include the moving-density
terms encoded by the transported family `P`.

Here `P=E D_hat E`, not `D_hat`. The identity gives no equality with the
bare product-frame heat trace, the orbit-only mode family, or the canonical
Lorentzian Hamiltonian contact in
`canonical-euclidean-contact-matching.md`. It also gives no uniformity as
the cut moves, no small-time subtracted limit, and no common-regulator
conversion to the conformal-infinity source observable. Those comparisons
still require separate operator, domain and trace arguments.

On each fixed cut these statements make the products and transformed
boundary conditions precise under the stated projector identification. In
the moving-cut limit the bounds on u, u^(-1), and their derivatives need not
be uniform. Equation (2) is a congruence, not a unitary conjugacy between
D_g and D_hat.

## Angular-mode form of the finite-cut physical operator

For the stationary RN seed, the source-side conformal-domain derivation also
gives the following application-specific inputs at the conformal boundary
of the compactified product: the conformal spinor map takes the physical
mixed domain to the same product-frame projector domain, and that domain is
independent of sphere angular eigenspaces. These statements are recorded in the parent source repository's
`notes/stationary-exterior-conformal-domain.md`, commit `08cb71afea3f0e5310cac8a50c05d5007555641f`
(file blob `b9117fa2b2e9e9e2cec36e1c71f52f414b5349b9`). They apply to the
static zero-angle conformal-boundary realization under its stated spin/bundle
identification. At a finite physical radial cutoff, the propagated domain
requires an additional boundary transport argument.

The product-frame Dirac expression separates into orbit modes
`D+i mu G`, with the chiral LLL treated as a distinct zero sector. Since
`E=u^(1/2)` is radial, it commutes with the sphere angular projections. Thus
on each fixed finite cut the transported physical massive-mode expression is
exactly

  P_mu = E (D+i mu G) E,  Dom(P_mu)=V,
  Dom(P_mu*P_mu)={psi in V : (D+i mu G)(E psi) in V*}.   (4)

This is the full-Weyl mode family of
[`full-weyl-angular-mode-correction.md`](full-weyl-angular-mode-correction.md),
not the source conversion's fixed-angular-mass orbit-only family. Its
angular-mass and commutator vertices therefore belong in the physical
response for this realization. The LLL remains separate. At a finite radial
cut, (4) describes the imposed local-projector model unless its boundary
condition has been matched to the source at infinity. Even where (4) applies,
it supplies no cut-uniform graph or trace estimate, density/contact
normalization, small-time subtraction, or common-regulator limit.

The positive physical square transported by U is the actual composition
square in (3). Its principal symbol is u^2 times the
principal symbol of D_hat*D_hat. Thus, when u is nonconstant, this square
is not the product-frame square at the same proper time under the specified
unitary identification. This conclusion is local and does not assume that
square domains are equal. In particular, strong convergence or a diagonal
bound for the physical square does not automatically yield one for the
product-frame square.

The principal-symbol discrepancy persists at the level of the response
vertices. Write the Weyl factor as `E_b=exp(b/2)` and use the seed product
frame symbol `|xi|^2`. The transported square symbol is then
`σ_2(P_b*P_b)=E_b^4|xi|^2=exp(2b)|xi|^2`. For directions `v,w`,

    delta_v σ_2 = 2v |xi|^2,
    delta_v delta_w σ_2 = 4vw |xi|^2.              (5)

These are the principal-symbol parts of the first and mixed second
variations; lower-order Clifford, density, and boundary vertices remain in
addition. By contrast, the scalar-potential family `L_0+V_b` has zero first
and mixed second variations of its principal symbol. Consequently its
derivative-jump coefficient cannot be substituted for P1's response by
matching only an effective potential. Any reduction must explicitly account
for the `2v` and `4vw` symbol vertices as well as the boundary/domain and
trace-density changes. This is a local symbol calculation, not a trace
estimate or a conclusion that the two renormalized observables differ.
The source conversion instead separates the product-frame square into orbit
and angular pieces and defines its contact before multiplying by the
angular factor Theta'(t). Consequently applying that factor to a full
physical four-dimensional contact would also require an independently proved
separation and normalization; it cannot be inferred from (2). Both contacts
may still be useful in a larger conformal comparison, but such a comparison
must retain the transformed square domains, trace density, local and boundary
terms, and a common proper-time regulator. The existing positive-time
physical-cut contact theorem is therefore supporting analysis for its stated
operator, not yet a proof of the paper's product-frame contact.

This calculation does not assert that no other equivalence or subtracted
identity exists, and does not decide the finite contact or the full action.
No numerical calculation is used. The Lean receipt above checks only the
abstract set-theoretic domain reduction, not the operator or trace claims.

Remaining to-do list: establish the product-frame contact and its source
normalization or prove the complete conformal comparison, resolve the common
regulator and prior-art decision, prepare the manuscript, and certify
supported claims in Lean on GCP.

A quantitative moving-cut limitation is recorded in [nnite-cut-congruence-uniformity-obstruction.md](finite-cut-congruence-uniformity-obstruction.md): for `u=ell/r` on `[r_h,R]`, `||E^(-1)||_(L2->L2)=sqrt(R/ell)`. Thus a uniform endpoint graph bound cannot come from the direct bounded-invertible multiplier argument. This does not imply divergence of the renormalized response or trace.
