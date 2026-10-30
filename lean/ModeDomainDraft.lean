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

end PairedDirac

#print axioms PairedDirac.mode_composition_domain
