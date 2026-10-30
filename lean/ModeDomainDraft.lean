import Mathlib.Analysis.InnerProductSpace.LinearPMap

/-! Algebraic domain step for the paired sphere-mode square. This does not
prove the geometric trace or adjoint hypotheses. -/

namespace PairedDirac

variable {H : Type*} [AddCommGroup H] [Module ℂ H]

/-- Adding a vector known to belong to the complementary domain does not
change membership of the remaining term in that domain. -/
theorem mode_composition_domain
    (W : Submodule ℂ H) (d g : H) (a : ℂ) (hg : g ∈ W) :
    d + a • g ∈ W ↔ d ∈ W := by
  constructor
  · intro h
    have hsub := W.sub_mem h (W.smul_mem a hg)
    simpa using hsub
  · intro h
    exact W.add_mem h (W.smul_mem a hg)

/-- The algebraic cross-term cancellation in a mode square, given the
intertwining and involution identities. Domain obligations are separate. -/
theorem mode_square_cross_cancel
    (D A G : H →ₗ[ℂ] H) (a : ℂ) (x : H)
    (hintertwine : A (G x) = G (D x)) (hinvolution : G (G x) = x) :
    A (D x + a • G x) - a • G (D x + a • G x) =
      A (D x) - (a * a) • x := by
  simp only [map_add, map_smul, smul_add, smul_smul, hintertwine, hinvolution]
  abel
end PairedDirac

#print axioms PairedDirac.mode_composition_domain

#print axioms PairedDirac.mode_square_cross_cancel
