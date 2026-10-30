import Mathlib.Analysis.InnerProductSpace.LinearPMap

/-! Algebraic core of the finite-cut square boundary criterion.
Geometric traces, elliptic jet extension and Clifford invertibility are
hypotheses here, not established by this file. -/

namespace PairedDirac

variable {V B C : Type*} [AddCommGroup V] [Module ℂ V]
variable [AddCommGroup B] [Module ℂ B] [AddCommGroup C] [Module ℂ C]

/-- If a boundary perturbation vanishes, the seed and perturbed boundary
kernels agree. -/
theorem boundary_kernel_eq_of_zero (A : V →ₗ[ℂ] B)
    (T : V →ₗ[ℂ] C) (N : C →ₗ[ℂ] B) (hN : N = 0) :
    (A - N.comp T).ker = A.ker := by
  rw [hN]
  simp

/-- If all allowed traces arise from seed-domain elements, equality of the
seed and perturbed kernels forces the boundary perturbation to vanish. -/
theorem boundary_perturbation_zero_of_kernel_eq (A : V →ₗ[ℂ] B)
    (T : V →ₗ[ℂ] C) (N : C →ₗ[ℂ] B)
    (htrace : ∀ c : C, ∃ x : V, A x = 0 ∧ T x = c)
    (heq : (A - N.comp T).ker = A.ker) : N = 0 := by
  ext c
  obtain ⟨x, hx, hxc⟩ := htrace c
  have hxker : x ∈ A.ker := by simpa using hx
  have hxpert : x ∈ (A - N.comp T).ker := by rw [heq]; exact hxker
  have hzero : A x - N (T x) = 0 := by simpa using hxpert
  rw [hx, zero_sub, neg_eq_zero] at hzero
  simpa [hxc] using hzero

/-- Algebraic equivalence, conditional on trace extension. -/
theorem boundary_kernel_eq_iff (A : V →ₗ[ℂ] B)
    (T : V →ₗ[ℂ] C) (N : C →ₗ[ℂ] B)
    (htrace : ∀ c : C, ∃ x : V, A x = 0 ∧ T x = c) :
    (A - N.comp T).ker = A.ker ↔ N = 0 := by
  constructor
  · exact boundary_perturbation_zero_of_kernel_eq A T N htrace
  · exact boundary_kernel_eq_of_zero A T N

end PairedDirac

#print axioms PairedDirac.boundary_kernel_eq_iff
