# Uniform varying-coefficient bounds for the reflected auxiliary

Status: ordinary global estimate for the explicit auxiliary cylinder in
[the construction note](compact-reflected-auxiliary.md). It supplies uniform
graph and heat-trace constants when the collar coefficient varies within
fixed positive and Lipschitz bounds. The physical collar/bundle matching
and Lean certification remain open.

## Full-cylinder estimate

On the fixed compact cylinder S¹_(2L)×S¹_T, let

    D_f=γ_y∂_y+f(y)γ_τ∂_τ,
    0<m≤f≤M,       ||f'||∞≤G,

with Hermitian Clifford involutions γ_y,γ_τ and a fixed thermal spin
structure. The H¹ domain and volume measure are the fixed ones in the
auxiliary construction. Write Γ=γ_yγ_τ. Integration by parts in the two
periodic variables (with the fixed spin transition) gives, for H¹ sections,

    ||D_f ψ||²
      = ||∂_y ψ||²+||f∂_τ ψ||²
        - Re ∫ <ψ, Γ f' ∂_τ ψ>.                         (1)

The cross term has this sign in the stated convention; the estimates below
use its absolute value. The identity holds first for smooth f and sections,
then for f∈W^{1,∞} by approximation. Young's inequality gives

    ||D_f ψ||² ≥ ||∂_y ψ||² + (m²/2)||∂_τ ψ||²
                         - [G²/(2m²)]||ψ||².             (2)

Thus, with a₀=min(1,m²/2) and c₀=G²/(2m²), the full graph estimate
||ψ||_(H¹)≤C(||D_f ψ||+||ψ||) has a constant depending only on m,G,
not on the particular f. The upper graph bound depends only on M.
The first-order operator is closed on the common H¹ domain; its square is
defined by composition.

## Heat-trace consequence

Let L_f=D_f*D_f and let Δ₀ be the nonnegative flat Laplacian on the same
cylinder and spin bundle. Equation (2) is the common-domain form bound

    L_f ≥ a₀ Δ₀ - c₀.

Min-max on the compact cylinder yields λ_j(L_f)≥a₀λ_j(Δ₀)-c₀, so

    Tr(e^(-tL_f)) ≤ e^(c₀t) Tr(e^(-a₀tΔ₀))
                   ≤ C_heat t^(-1),  0<t≤t₀.            (3)

The last constant depends on m,G,L,T,t₀, fiber rank and the fixed thermal
spin structure; it follows from the explicit flat-torus eigenvalue sum.
It is uniform over the coefficient family. It is not uniform over arbitrary
periods or collapsing m.

## Half-cylinder and multiplier family

If f is even on the doubled circle and constant near the second fixed
point as in the construction note, its U-even restriction is the paired
half-cylinder square under the stated H¹ gluing and complementary-adjoint
identification. The half heat trace is at most the full trace, so (3)
applies to the half-cylinder as well. The H¹ norm of a half section and
its normalized reflected extension agree up to fixed factors, giving the
same uniform graph control on the half domain.

For an additional real scalar congruence b with ||b||∞≤B and ||db||∞≤G_b,
the reverse graph inequality in the fixed-seed note applies to every f
with the same constants. Composing it with (2) and applying min-max again
provides uniform graph and t^(-1) heat-trace bounds for the family (f,b).
The scalar commutator and weighted-form constants are likewise uniform
when the cutoffs and local Clifford identification are fixed.

## Scope

This verifies the auxiliary coefficient-family inputs under the declared
compact-cylinder domains and fixed periods. It does not prove that the
physical finite-cut spin bundle and half-density agree with the auxiliary
collar, or that physical global graph and heat constants are uniform. It
also does not establish geometric variation vertices or the common-regulator
limit. No numerical calculation is used.

Remaining to-do list: establish the physical common-collar identification
and global uniform estimates; complete contact and geometric response,
novelty review, manuscript and GCP Lean certification.
