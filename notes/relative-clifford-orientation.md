# Relative Clifford frames and magnetic orientation

Status: local algebra and a conditional topological check, not a
reconstruction of the physical copy diffeomorphism or a Lean certificate.
This refines [the spin matching audit](finite-cut-spin-matching.md).
The matrix conventions are those in the pinned
[paired-phase source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md).

## What the displayed local matrices determine

Restrict the source's orbit/copy representation to τ₃=s=±1. In a common
normal frame its Clifford matrices are

    γ_τ,s=−s σ₃,   γ_n,s=σ₁,   γ_A,s=−s σ₂⊗γ_{A,S}.

Conjugation by σ₁ maps the s=+ matrices to the s=− matrices: it fixes σ₁
and negates σ₂,σ₃. In the doubled representation the corresponding map
is J=τ₁⊗σ₁, which exchanges the two sectors and commutes with all displayed
γ matrices. This is the pointwise intertwiner used in the partner argument.

If, only for interpreting this algebra, the two displayed sector frames are
regarded as frames of one fixed Clifford module, the relative transformation
changes the signs of the τ direction and both sphere tangent directions,
while retaining the normal direction. Its determinant is −1. An
orientation-reversing orthogonal frame change is not itself a Spin(4)
frame transition; treating σ₁ automatically as an ordinary even Spin lift
would therefore be unjustified. The algebra can instead be read as an
intertwiner between two orientation-aware Clifford representations. Which
geometric reading is correct requires the source's actual copy and spin
identification; the local matrices alone do not supply it.

## A constraint on a proposed sphere reversal

Suppose one proposes to compensate an orbit orientation reversal by an
orientation-reversing diffeomorphism of the sphere, so that the product
orientation is preserved. Any such sphere map has degree −1. For the
nonzero monopole curvature F with flux ∫_{S²}F=2πq, its pullback has flux
−2πq. Consequently the pulled-back line bundle has the opposite first Chern
number. For q≠0 it is not isomorphic as a complex line bundle to the
original charge-q bundle without an additional charge reversal or a
specified conjugate-line construction. A gauge transformation cannot
change this Chern number.

This is a test of that proposed compensation, not a claim that the source
uses it. The [coupled-domain source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/coupled-fermion-domain.md)
instead states that the pulled-back monopole bundles agree in global angular
coordinates and fixes the boundary map. Opposite outward charge signs alone
do not determine a degree-minus-one sphere map. A charge-conjugating or
antilinear map would also require a separate check against the linear
partner identity and the chosen boundary domain.

The remaining physical task is to specify the actual oriented copy map,
its spin/Clifford lift and the magnetic connection pullback, and compare
those data with J and the boundary coupling. The pointwise matrix identity,
unique spin-structure class, and matching flux statement each solve only
part of that task. No numerical check can establish the global map.

Remaining to-do list: reconstruct the source's copy and bundle maps, verify
closed domains and bolt localization, complete the response and novelty
audits, and certify supported claims on GCP.
