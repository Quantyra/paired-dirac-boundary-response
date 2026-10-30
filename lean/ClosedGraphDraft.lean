import PairedDirac

/-!
Development draft for the graph-preimage step of the bounded-congruence
argument. This file is not an acceptance result: it must be compiled and
audited on GCP against the pinned dependencies before any claim is made.
-/

namespace PairedDirac

variable {H : Type*} [AddCommGroup H] [Module ℂ H]

/-- Candidate exact graph identity, including inverse-domain invariance. -/
theorem congruence_graph_preimage_draft
    (D : H →ₗ.[ℂ] H) (E : H ≃ₗ[ℂ] H)
    (hE : ∀ x ∈ D.domain, E x ∈ D.domain)
    (hEinv : ∀ x ∈ D.domain, E.symm x ∈ D.domain) :
    (congruence D E hE).graph =
      D.graph.comap (E.toLinearMap.prodMap E.symm.toLinearMap) := by
  ext ⟨x, y⟩
  simp only [Submodule.mem_comap, LinearMap.prodMap_apply, LinearPMap.mem_graph_iff]
  constructor
  · rintro ⟨z, rfl, hz⟩
    refine ⟨⟨E z, hE z z.property⟩, rfl, ?_⟩
    change D ⟨E z, hE z z.property⟩ = E.symm y
    have hy : E (D ⟨E z, hE z z.property⟩) = y := by
      simpa [congruence, domainRestriction] using hz
    apply E.injective
    simpa using hy
  · rintro ⟨z, hz, hy⟩
    have hx : x ∈ D.domain := by
      have h := hEinv z z.property
      simpa [hz] using h
    refine ⟨⟨x, hx⟩, rfl, ?_⟩
    change E (D ⟨E x, hE x hx⟩) = y
    have hz' : (⟨E x, hE x hx⟩ : D.domain) = z := Subtype.ext hz.symm
    rw [hz', hy]
    simp

end PairedDirac

#print axioms PairedDirac.congruence_graph_preimage_draft
