# Reflection covariance of the paired closed domains

Status: ordinary conditional domain argument. The local matrix identities
were checked in Lean at paper commit `53011ac`; this note does not certify the
geometric hypotheses or the following functional-analytic proof in Lean.
It refines [the fixed-flux reflection audit](fixed-flux-time-reflection.md).

## Precise statement

Let X be a compact smooth Riemannian manifold with smooth boundary, E a
Hermitian bundle, and D a first-order differential operator with smooth
coefficients on E. Let chi be a smooth self-adjoint involution of E at the
boundary and P_minus=(1-chi)/2. Define

    Dom(D_P) = {u in H^1(X;E): P_minus Tr(u)=0},    D_P u=Du.

Suppose r:X->X is a smooth isometric involution preserving the boundary,
and R is a smooth fiberwise unitary bundle map covering r, with R²=1.
Assume on smooth sections that RD=DR and, on the boundary, the induced
fiber map intertwines chi at x with chi at r(x). Then R maps Dom(D_P)
onto itself and commutes with D_P there. The same holds for the complementary
projector P_plus. If D_P is closed, R also commutes with its adjoint, and
preserves both composition domains Dom(D_P* D_P) and Dom(D_P D_P*).
Consequently R commutes with their resolvents at every point in the
respective resolvent sets and with their heat semigroups when these products
are nonnegative self-adjoint.

This is a fixed-realization statement: no equality between a perturbed and an
unperturbed square domain is asserted. The bolt is an interior point of X,
not an additional boundary. A disk times sphere with a smooth finite-cut
metric is within the geometric form of the statement if the listed bundle
and operator hypotheses are established.

## Argument

Pullback by a smooth diffeomorphism and multiplication by a smooth bundle
map are bounded on H^1 on a compact manifold; the same applies to the inverse.
For smooth sections the trace satisfies Tr(Ru)=R_boundary Tr(u). Density of
smooth sections in H^1 and continuity of the trace extend this identity to
all H^1 sections. The boundary intertwining gives

    P_minus(x) (R_boundary f)(x)
       = R_boundary (P_minus f)(x),

where the right side evaluates f at r(x). Thus the projector condition is
preserved. Since R²=1, preservation is onto, and the same calculation applies
to P_plus. The smooth-section identity RD=DR extends to H^1 by density and
boundedness of D:H^1->L². Hence RD_P=D_P R as closed operators.

For the adjoint, use unitarity: if v belongs to Dom(D_P*) then, for all
u in Dom(D_P),

    <D_P u,Rv> = <R D_P u,v> = <D_P R u,v>,

with the usual convention adjusted if the inner product is linear in the
other slot. The right side is bounded in ||u||, so Rv belongs to Dom(D_P*)
and D_P* Rv=R D_P* v. Involution gives equality of domains. Applying the
first-order domain invariance twice yields invariance of each composition
domain and commutation with the products. Resolvent commutation follows by
applying R to (A-z)u=f and using uniqueness. Heat commutation follows from
the spectral functional calculus for the nonnegative self-adjoint product.

## Application and exact missing inputs

For the displayed local matrices, the checked relation [U,chi]=0 supplies
the fiber algebra needed at a boundary point once the boundary values are
identified by the time reflection. It does not supply the smooth global
bundle map R. In particular, one must prove that the polar expression
U=1 tensor sigma_1 tensor c_S patches across the orbit center and across
all spin and magnetic charts, that R²=1, that it is unitary and that it
intertwines the full differential expression including connection terms.
The local time/sphere gamma relations are necessary checks, not those
conclusions. The boundary projector must be the one used by the actual
paired realization and must be carried to itself by the boundary map.

This lemma shows that, once those geometric facts and the H^1 realization
are supplied, separate pointwise verification of the square-domain boundary
condition is unnecessary for reflection covariance: the composition-domain
argument handles it directly. It does not identify the time reflection with
the partner copy map J, establish D*=-JDJ, or prove a heat-kernel trace or a
curved-response limit. No numerical computation is used.

Remaining to-do list: construct and verify the physical global reflection
and paired realization; identify the partner map; close the response and
novelty audits; and certify the supported paper claims on GCP.
