# Product-frame physical collar and auxiliary half-density matching

Status: ordinary local calculation for a stationary product-frame orbit
collar with the pinned projector and fixed spin convention. It verifies the
local differential expression and boundary trace matching used by
[the auxiliary construction](compact-reflected-auxiliary.md). It does not
prove the global copy map, full physical realization, or Lean certification.

## Half-density conjugation

On 0≤y<h, take the smooth orbit metric

    g₂=dy²+a(y)²dτ²,      a>0,       τ mod T,

and an oriented normal-parallel orthonormal spin frame with Hermitian
constant Clifford matrices γ_y,γ_τ. With the conventional spin connection,
the bulk Dirac expression is

    D_g=γ_y(∂_y+a'/(2a))+γ_τ a^(-1)∂_τ.                 (1)

There is no orbit gauge component in the pinned purely magnetic seed. The
map Wψ=a^(1/2)ψ is unitary from the geometric orbit L² measure a dy dτ to
dy dτ. On smooth collar sections,

    W D_g W⁻¹ = γ_y∂_y+f(y)γ_τ∂_τ,       f=1/a.          (2)

Indeed a^(1/2)(∂_y+a'/(2a))a^(-1/2)=∂_y, and a is τ-independent.
The argument applies componentwise to the two folded copies in the stated
common local frame. Since f is real and τ-independent, the flat-measure
bulk expression in (2) is formally skew-adjoint. Its square has the exact
bulk expression

    -(W D_g W⁻¹)²=-∂_y²-f²∂_τ²-γ_yγ_τ f'∂_τ,           (3)

matching the pinned [curved paired bridge](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-curved-paired-heat-bridge.md),
section 2. This calculation is local and uses the same f, not a smooth even
replacement of the physical coefficient.

## Projector and square trace

The source's allowed trace is Π_-ψ=0 with χ=τ₃γ_n and
Π_±=(1±χ)/2. Multiplication by positive scalar a^(1/2) commutes with χ, so
W preserves this condition and its complementary adjoint condition. If y
is inward while γ_n is the source's outward normal Clifford matrix, the
constant sign between γ_n and γ_y must be included in χ when choosing the
auxiliary basis; the eigenspace is carried by the specified identification,
not silently relabelled.

Assume the physical first-order and adjoint realizations are the stated H¹
projector domains. Since a and a⁻¹ are bounded W^{1,∞} on the finite
collar, W maps those local Sobolev trace spaces isomorphically. The local
composition condition for the positive square becomes

    Π_-φ=0,       Π_+ D_flat φ=0,     φ=Wψ.                (4)

Because χ commutes with γ_y and anticommutes with γ_τ, and Π_+φ=φ at the
boundary, Π_+γ_τ∂_τφ=0 for the tangential derivative of an allowed trace.
Thus in the regular H² trace setting (4) reduces to

    Π_-φ=0,       Π_+∂_y φ=0.                              (5)

This is precisely the auxiliary mixed boundary condition at y=0. It is the
half-density form of the source's geometric normal-plus-curvature condition;
no angular-mass Robin term is introduced. Equation (5) is not used to
replace composition-domain reasoning when the H² trace regularity is not
established.

## Spin and remaining identification

The disk's bounding thermal spin structure appears as antiperiodicity in
the rotating polar frame used to extend the collar; it can be assigned
identically to the auxiliary thermal circle. The scalar W does not change
that transition. The fixed-sphere product separation and magnetic sphere
bundle remain separate from this orbit calculation.

Equations (2)–(5) establish the local operator and boundary algebra once
the physical collar coordinate, spin frame and copy identification are
fixed as stated. They do not establish a global unitary map between the
disk and auxiliary cylinder, the physical H¹/adjoint domain equality,
uniform estimates on a varying global atlas, or the regulator limit. Those
are still required by the locality theorem. No numerical computation is
used.

Remaining to-do list: verify global physical domains and common bundle;
combine the local match with uniform locality, geometric and contact
vertices, the regulator and novelty audit; certify supported claims on GCP.
