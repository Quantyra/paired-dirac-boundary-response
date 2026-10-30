# Explicit common-bundle construction of the partner map

Status: construction of the source's orientation-aware folded model from one
common twisted Dirac bundle, conditional on identifying that model with the
physical pullbacks. This is an ordinary argument, not a Lean certificate.
It makes the overlap condition in [the elliptic bridge](finite-cut-elliptic-domain-bridge.md)
explicit and narrows the remaining issue in [the source audit](source-reflection-partner-audit.md).

## Bundle and overlap data

Let S be the Hermitian rank-four twisted Dirac bundle over a smooth finite-cut
D²×S², with Clifford action c and compatible connection ∇. Use oriented
orthonormal spin frames and matched magnetic gauges on an open cover. In a
radial product chart choose the s=+ representation of the pinned source,

    cτ=-σ₃⊗1,  cn=σ₁⊗1,  cA=-σ₂⊗γA,S,

and set H=σ₁⊗1. Let g_ab be the unitary spin-and-magnetic transition matrix
of S from chart b to chart a. Define a second set of transition matrices

    g_ab^- = H g_ab H⁻¹,       g_ab^+ = g_ab.

Both satisfy the cocycle condition, so they define bundles S_- and S_+.
On S_- define c^-_a=H c^+_a H⁻¹ and connection matrices
ω^-_a=H ω^+_a H⁻¹. The constant H is a change of representation in each
chart, not a claimed Spin lift of an orientation-reversing frame map.
Since H is constant, the connection transformation law is inherited from
that of ω^+ under the displayed transitions. The maps H in each chart patch
to a global parallel unitary h:S_+→S_-, because

    g_ab^- H = H g_ab^+,        ω^-_a H = H ω^+_a.

This applies on every chart in the cover, including Cartesian disk charts
and sphere monopole overlaps; no radial frame at the bolt is required.
The construction needs the coordinate matrices of H to be used consistently
in all charts, with the minus transitions defined by conjugation as above.

## Folded operator and boundary

Let E=S_+⊕S_-, D=diag(D_+,D_-), with D_-=h D_+ h⁻¹, and

    J(u_+,u_-)=(h⁻¹u_-,h u_+),    T(u_+,u_-)=(u_+,-u_-).

The map J is a global parallel unitary involution and commutes with D and
all folded Clifford multiplications. In the displayed radial frames the
matrix of J is τ₁⊗σ₁⊗1, and the folded gamma matrices are precisely

    γτ=-τ₃⊗σ₃⊗1, γn=1⊗σ₁⊗1,
    γA=-τ₃⊗σ₂⊗γA,S.

These formulas agree with the pinned representation because H commutes with
σ₁ and conjugates σ₂ and σ₃ to their negatives. Define χ=T c(n) at the
boundary. As h intertwines the normal Clifford actions, JχJ=-χ. Thus J
exchanges the two projector trace spaces. If the finite-cut realization is
the H¹ realization with χ=+1 trace and its adjoint is the complementary H¹
realization, and the bulk expression is formally skew-adjoint, then

    D*=-JDJ

with equality of domains and actions. This follows by applying the trace
condition and the already established commutation with the differential
expression, as in the elliptic bridge. The positive-square conjugacy follows
on the corresponding composition domains. No independent bolt boundary
condition is introduced.

## Identification still required

This is an explicit common-bundle model satisfying the global algebra, not
a derivation that the original physical copy pullbacks possess these exact
transition functions. To apply it, the physical copy and boundary maps must
identify each pulled-back spin/magnetic connection and Clifford action with
these constructed data; in particular the boundary identification in the
source's convention must be checked against h and the basis changes, rather
than equating a coordinate matrix H with a physical boundary map by fiat.
The source assumes identical pullbacks and an identity boundary map in fixed
frames, but its displayed local formulas alone do not establish this global
identification. This construction also does not establish rough-family
uniformity, the tangent response or a curved trace limit.

No numerical calculation is needed for the bundle algebra. The existing GCP
Lean checks cover selected local matrix relations and abstract domain results,
not the bundle construction or the physical identification above.

Remaining to-do list: check the physical copy and boundary maps against this
explicit model; finish the tangent response and prior-art decision; develop
the supported manuscript and certify its claims in Lean on GCP.
