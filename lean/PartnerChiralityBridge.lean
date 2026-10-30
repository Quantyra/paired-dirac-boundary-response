import Mathlib.Analysis.InnerProductSpace.LinearPMap

/-! Domain-aware algebra for the paired partner/chirality bridge. The stated
intertwining and domain properties are assumptions, not physical theorems. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

theorem partner_chirality_anticommutes
    (D : H →ₗ.[ℂ] H) (J G : H →ₗ[ℂ] H)
    (hJ : ∀ y : H, J (J y) = y)
    (hComm : ∀ y : H, G (J y) = J (G y))
    (hGDomain : ∀ x ∈ D.domain, G x ∈ D.adjoint.domain)
    (hJDomain : ∀ y ∈ D.adjoint.domain, J y ∈ D.domain)
    (hPartner : ∀ (y : H) (hy : y ∈ D.adjoint.domain),
      D.adjoint ⟨y, hy⟩ = - J (D ⟨J y, hJDomain y hy⟩))
    (hChirality : ∀ (x : H) (hx : x ∈ D.domain),
      D.adjoint ⟨G x, hGDomain x hx⟩ = G (D ⟨x, hx⟩))
    (x : H) (hx : x ∈ D.domain) :
    J (D ⟨J (G x), hJDomain (G x) (hGDomain x hx)⟩) =
      - J (G (J (D ⟨x, hx⟩))) := by
  rw [hComm, hJ]
  rw [← hChirality x hx, hPartner (G x) (hGDomain x hx)]
  simp

end PairedDirac

#print axioms PairedDirac.partner_chirality_anticommutes