# Local energy estimate for the complex paired form

Status: ordinary conditional form calculation completing the local
first-derivative step outlined in [the complex-family note](complex-family-locality.md).
It assumes that note's uniform sectorial tube, H¹ domains and weighted
semigroup estimates; physical bundle matching and Lean certification are
not established here.

## Setup

Let q_z be the closed sectorial form on the common first-order domain V
from the complex-family note, and let L_z be its associated operator.
Assume that, for z in a fixed disk and real scalar ψ∈W^{1,∞}, the product
rules for both first-order factors hold with uniformly bounded coefficients.
Write D_b for the real-base first-order operator. Uniform coercivity and
boundedness take the form

    Re q_z(w,w)+C₀||w||² ≥ c₀||D_b w||²,
    |q_z(w₁,w₂)| ≤ C₀ ||w₁||_V ||w₂||_V,                (1)

where ||w||_V=||D_b w||+||w|| and c₀>0 is uniform. The scalar cutoff ψ
preserves V; no square-domain preservation is required for this form
calculation.

## Cutoff energy inequality

For u∈Dom(L_z), expand the two product rules in q_z(ψu,ψu) and
q_z(u,ψ²u). The leading ψ² first-order terms agree. Every remaining term
contains a derivative of ψ and at most one first-order derivative of u.
Express ψD_bu as D_b(ψu)-[D_b,ψ]u. The uniform multiplier and Clifford
bounds then yield

    |q_z(ψu,ψu)-q_z(u,ψ²u)|
      ≤ Cψ ||1_suppψ u|| (||D_b(ψu)||+||1_suppψ u||). (2)

Here Cψ depends on ||ψ||∞, ||dψ||∞ and the uniform coefficient bounds.
The expression uses the support of ψ and dψ, so no derivative of u away
from the local cutoff is hidden. The associated-operator identity gives
q_z(u,ψ²u)=<L_z u,ψ²u> with the matching slot convention. Apply (1), (2),
Cauchy–Schwarz and Young's inequality, absorbing half the D_b term. This
gives

    ||D_b(ψu)||²
       ≤ C [ ||1_suppψ L_z u|| · ||1_suppψ u||
              + ||1_suppψ u||² ].                     (3)

This is an inequality, rather than the exact real self-adjoint identity:
the non-self-adjoint cross terms are bounded and absorbed, not cancelled.

## Off-diagonal derivative

Let E be separated from supp ψ by distance d>0 and set
u=e^(-tL_z)1_E f. The weighted semigroup and time-derivative estimates (3)
of the complex-family note give uniformly in the complex tube

    ||1_suppψ u|| ≤ C exp(-c/t)||f||,
    ||1_suppψ L_z u|| ≤ C t^(-1) exp(-c/t)||f||,

for 0<t≤t₀, after optimizing the Lipschitz distance weight. Equation (3)
therefore implies

    ||D_b(ψ e^(-tL_z)1_E)||
       ≤ C(1+t^(-1/2)) exp(-c'/t).                    (4)

If the actual collar commutator C_z satisfies the uniform local graph bound
||C_z w||≤C(||D_b(ψw)||+||ψw||), (4) supplies the derivative
operator-norm input to the Schatten splitting argument. The analogous
estimate for the adjoint form uses the same uniform bounds. The constants
are uniform only when the sectorial radius, graph, cutoff and distance
constants are uniform.

## Remaining application

The complex commutator and its cutoff-domain mapping must still be checked
for the physical and auxiliary realizations and matching collar. The
compact H→H¹ smoothing/Schatten input, complete thermal normalization,
geometric/coincidence vertices and common-regulator limit remain separate
requirements. This calculation does not prove a physical curved remainder
or a Lean theorem. No numerical computation is used.

Remaining to-do list: verify the complex commutator and physical common
collar, complete geometric and contact response and novelty audits, then
write and certify the supported paper claims on GCP.
