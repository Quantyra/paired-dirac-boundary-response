# Zero-angle boundary map and the folded partner

Status: source-specific boundary calculation at the finite-cut zero-angle
seed, conditional on the actual finite-cut realization and a global
connection-preserving copy isomorphism. This is not a Lean certificate.
It sharpens the last section of [the common-bundle construction](common-folded-bundle-partner.md).

## Boundary condition at zero angle

The pinned [coupled-domain source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/coupled-fermion-domain.md),
section 1, writes the boundary condition in fixed common frames as

    P_+ ψ_R + h U† P_+ ψ_L = 0,
    P_- ψ_L + h U P_- ψ_R = 0,
    P_±=(1±β)/2,   β=σ₁,   θ=2 arctan h.

Here U is the unitary relative boundary map in the source's convention;
it is not the time-reflection matrix used elsewhere. At h=0 these reduce to

    P_+ ψ_R=0,       P_- ψ_L=0.                         (1)

The relative map U drops out of the allowed trace space. With source flavor
order (L,R), equation (1) is equivalently χ₀ψ=ψ for χ₀=τ₃⊗β: the L
component lies in the β=+1 eigenspace and the R component in β=-1.
Thus the paired-phase note's χ=τ₃γn projector agrees with the zero-angle
coupled boundary equations in this displayed convention.

## Effect of the basis change

Suppose the two bulk bundles have been identified by the parallel isomorphism
h_b:S_+→S_- of the common-bundle construction, whose matrix is H=β in the
specified radial frames. Use + for L and - for R, consistently with τ₃.
The global partner exchanges components using h_b and h_b⁻¹. In the radial
frames it has matrix J=τ₁⊗β. Since β commutes with its own spectral
projectors, J sends an L trace in P_+ to an R trace in P_+ and an R trace in
P_- to an L trace in P_-. These are exactly the complementary projector
conditions. In particular Jχ₀J=-χ₀. This verifies the boundary part of the
partner construction without requiring h_b to equal the source's relative
coupling map U at h=0.

The two maps have different jobs. U specifies the cross-copy coupling at
nonzero h; h_b is a bulk connection- and Clifford-intertwining isomorphism
used to construct J. Their equality is not needed for (1), but is relevant
if one transports a nonzero-angle boundary condition by a global copy
rotation. A boundary map alone does not supply h_b, and an arbitrary bulk
isomorphism need not reproduce the prescribed nonzero-angle coupling.

## Remaining physical checks

The source explicitly selects h=0, identical pulled-back spin and monopole
connections and the displayed orientation-aware gamma matrices. For the
zero-angle boundary matching, the common-bundle model now accounts for the
source's projector algebra directly; the previously stated requirement to
match the coupling map U to h_b was unnecessarily strong at this angle.
Still to establish independently are a global connection-preserving copy
isomorphism for the physical pullbacks, its agreement with the orientation
convention throughout the manifold, and that the selected finite-cut H¹
projector problem is the physical realization. The original coupled-domain
source warns that arbitrary finite cuts need their own matching; this
calculation does not derive that matching from conformal infinity.

The ordinary boundary calculation does not prove the response, a nonlinear
family or a curved regulator limit. No numerical calculation is needed.

Remaining to-do list: establish the global physical copy isomorphism and
finite-cut matching; finish the tangent and prior-art audits; develop the
supported manuscript and Lean certification on GCP.
