import GraphProjectionDraft
import ClosedGraphDraft

/-! Development draft joining congruence and the actual self-adjoint square. -/

namespace PairedDirac

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H]

/-- Closed congruence, its adjoint, and the self-adjoint natural square. -/
theorem congruence_closed_selfAdjoint_square_draft
    (D : H →ₗ.[ℂ] H) (E : H ≃L[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hEinv : ∀ x ∈ D.domain, E.symm x ∈ D.domain)
    (hEA : ∀ x ∈ D.adjoint.domain, E x ∈ D.adjoint.domain)
    (hEAinv : ∀ x ∈ D.adjoint.domain, E.symm x ∈ D.adjoint.domain)
    (hClosed : D.IsClosed) (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (E x) y = inner ℂ x (E y)) :
    (congruence D E.toLinearEquiv hE).IsClosed ∧
    (congruence D E.toLinearEquiv hE).adjoint =
      congruence D.adjoint E.toLinearEquiv hEA ∧
    (positiveSquare (congruence D E.toLinearEquiv hE)).adjoint =
      positiveSquare (congruence D E.toLinearEquiv hE) := by
  have hc := congruence_isClosed_draft D E hE hEinv hClosed
  have hd : Dense ((congruence D E.toLinearEquiv hE).domain : Set H) := by
    simpa using hDense
  exact ⟨hc,
    congruence_adjoint_eq_draft D E.toLinearEquiv hE hEinv hEA hEAinv hDense hSymm,
    positiveSquare_selfAdjoint_draft _ hc hd⟩

end PairedDirac

#print axioms PairedDirac.congruence_closed_selfAdjoint_square_draft