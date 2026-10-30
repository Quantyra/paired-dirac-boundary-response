import CongruenceSquareDraft

/-! Algebraic bridge from multiplier-compatible traces to invariant domains.
The geometric Sobolev and trace hypotheses remain explicit assumptions. -/

namespace PairedDirac

variable {H B : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H] [AddCommGroup B] [Module ℂ B]

/-- A projected trace kernel, embedded in the ambient Hilbert space. -/
def projectedTraceDomain (S : Submodule ℂ H) (T : S →ₗ[ℂ] B)
    (P : B →ₗ[ℂ] B) : Submodule ℂ H :=
  ((P.comp T).ker).map S.subtype

/-- An ambient multiplier preserves the domain when traces intertwine and
the boundary multiplier commutes with the boundary map. -/
theorem projectedTraceDomain_preserved_draft
    (S : Submodule ℂ H) (T : S →ₗ[ℂ] B) (P M : B →ₗ[ℂ] B)
    (E : H →ₗ[ℂ] H) (hS : ∀ x ∈ S, E x ∈ S)
    (hTrace : ∀ x : S, T ⟨E x, hS x x.property⟩ = M (T x))
    (hComm : ∀ b : B, P (M b) = M (P b)) :
    ∀ x ∈ projectedTraceDomain S T P, E x ∈ projectedTraceDomain S T P := by
  intro x hx
  obtain ⟨s, hs, rfl⟩ := hx
  refine ⟨⟨E s, hS s s.property⟩, ?_, rfl⟩
  change P (T ⟨E s, hS s s.property⟩) = 0
  rw [hTrace s, hComm]
  change P (T s) = 0 at hs
  rw [hs, map_zero]

/-- Both projected trace domains are invariant under a multiplier and its
inverse when the two trace intertwinings and commutators hold. -/
theorem two_projectedTrace_domains_invariant_draft
    (S : Submodule ℂ H) (T : S →ₗ[ℂ] B) (P Q M N : B →ₗ[ℂ] B)
    (E : H ≃L[ℂ] H)
    (hS : ∀ x ∈ S, E x ∈ S)
    (hSinv : ∀ x ∈ S, E.symm x ∈ S)
    (hTrace : ∀ x : S, T ⟨E x, hS x x.property⟩ = M (T x))
    (hTraceInv : ∀ x : S, T ⟨E.symm x, hSinv x x.property⟩ = N (T x))
    (hPM : ∀ b : B, P (M b) = M (P b))
    (hPN : ∀ b : B, P (N b) = N (P b))
    (hQM : ∀ b : B, Q (M b) = M (Q b))
    (hQN : ∀ b : B, Q (N b) = N (Q b)) :
    (∀ x ∈ projectedTraceDomain S T P, E x ∈ projectedTraceDomain S T P) ∧
    (∀ x ∈ projectedTraceDomain S T P, E.symm x ∈ projectedTraceDomain S T P) ∧
    (∀ x ∈ projectedTraceDomain S T Q, E x ∈ projectedTraceDomain S T Q) ∧
    (∀ x ∈ projectedTraceDomain S T Q, E.symm x ∈ projectedTraceDomain S T Q) := by
  exact ⟨projectedTraceDomain_preserved_draft S T P M E.toLinearMap hS hTrace hPM,
    projectedTraceDomain_preserved_draft S T P N E.symm.toLinearMap hSinv hTraceInv hPN,
    projectedTraceDomain_preserved_draft S T Q M E.toLinearMap hS hTrace hQM,
    projectedTraceDomain_preserved_draft S T Q N E.symm.toLinearMap hSinv hTraceInv hQN⟩

end PairedDirac

#print axioms PairedDirac.projectedTraceDomain_preserved_draft
#print axioms PairedDirac.two_projectedTrace_domains_invariant_draft
namespace PairedDirac

variable {H B : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable [CompleteSpace H] [AddCommGroup B] [Module ℂ B]

/-- Projected trace hypotheses imply the closed congruence, its adjoint
identity, and the self-adjoint natural square. -/
theorem projectedTrace_congruence_square_draft
    (D : H →ₗ.[ℂ] H) (S : Submodule ℂ H) (T : S →ₗ[ℂ] B)
    (P Q M N : B →ₗ[ℂ] B) (E : H ≃L[ℂ] H)
    (hDomain : D.domain = projectedTraceDomain S T P)
    (hAdjDomain : D.adjoint.domain = projectedTraceDomain S T Q)
    (hS : ∀ x ∈ S, E x ∈ S)
    (hSinv : ∀ x ∈ S, E.symm x ∈ S)
    (hTrace : ∀ x : S, T ⟨E x, hS x x.property⟩ = M (T x))
    (hTraceInv : ∀ x : S, T ⟨E.symm x, hSinv x x.property⟩ = N (T x))
    (hPM : ∀ b : B, P (M b) = M (P b))
    (hPN : ∀ b : B, P (N b) = N (P b))
    (hQM : ∀ b : B, Q (M b) = M (Q b))
    (hQN : ∀ b : B, Q (N b) = N (Q b))
    (hClosed : D.IsClosed) (hDense : Dense (D.domain : Set H))
    (hSymm : ∀ x y : H, inner ℂ (E x) y = inner ℂ x (E y)) :
    ∃ hE : ∀ x ∈ D.domain, E x ∈ D.domain,
    ∃ hEA : ∀ x ∈ D.adjoint.domain, E x ∈ D.adjoint.domain,
      (congruence D E.toLinearEquiv hE).IsClosed ∧
      (congruence D E.toLinearEquiv hE).adjoint =
        congruence D.adjoint E.toLinearEquiv hEA ∧
      (positiveSquare (congruence D E.toLinearEquiv hE)).adjoint =
        positiveSquare (congruence D E.toLinearEquiv hE) := by
  obtain ⟨hp, hpInv, hq, hqInv⟩ :=
    two_projectedTrace_domains_invariant_draft S T P Q M N E hS hSinv
      hTrace hTraceInv hPM hPN hQM hQN
  have hE : ∀ x ∈ D.domain, E x ∈ D.domain := by simpa [hDomain] using hp
  have hEinv : ∀ x ∈ D.domain, E.symm x ∈ D.domain := by simpa [hDomain] using hpInv
  have hEA : ∀ x ∈ D.adjoint.domain, E x ∈ D.adjoint.domain := by
    simpa [hAdjDomain] using hq
  have hEAinv : ∀ x ∈ D.adjoint.domain, E.symm x ∈ D.adjoint.domain := by
    simpa [hAdjDomain] using hqInv
  exact ⟨hE, hEA,
    congruence_closed_selfAdjoint_square_draft D E hE hEinv hEA hEAinv
      hClosed hDense hSymm⟩

end PairedDirac

#print axioms PairedDirac.projectedTrace_congruence_square_draft