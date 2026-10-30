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

/-- The same equivalence after embedding the common regularity space into
an ambient space, conditional on injectivity of that embedding. -/
theorem embedded_boundary_kernel_eq_iff
    {H : Type*} (j : V → H) (hj : Function.Injective j)
    (A : V →ₗ[ℂ] B) (T : V →ₗ[ℂ] C) (N : C →ₗ[ℂ] B)
    (htrace : ∀ c : C, ∃ x : V, A x = 0 ∧ T x = c) :
    j '' ((A - N.comp T).ker : Set V) = j '' (A.ker : Set V) ↔ N = 0 := by
  constructor
  · intro hdom
    have hker : (A - N.comp T).ker = A.ker := by
      apply Submodule.ext
      intro x
      constructor
      · intro hx
        have hy : j x ∈ j '' (A.ker : Set V) := by
          rw [← hdom]
          exact ⟨x, hx, rfl⟩
        obtain ⟨y, hy, hxy⟩ := hy
        have h : y = x := hj hxy
        simpa [h] using hy
      · intro hx
        have hy : j x ∈ j '' ((A - N.comp T).ker : Set V) := by
          rw [hdom]
          exact ⟨x, hx, rfl⟩
        obtain ⟨y, hy, hxy⟩ := hy
        have h : y = x := hj hxy
        simpa [h] using hy
    exact (boundary_kernel_eq_iff A T N htrace).mp hker
  · intro hN
    rw [boundary_kernel_eq_of_zero A T N hN]
/-- A tangential operator that flips the involution eigenspaces has zero
compression to the allowed eigenspace. -/
theorem tangential_compression_zero
    (chi P C : V →ₗ[ℂ] V)
    (hplus : ∀ x, chi (P x) = P x)
    (hP : ∀ x, P (chi x) = P x)
    (hanti : ∀ x, chi (C x) = -C (chi x)) :
    ∀ x, P (C (P x)) = 0 := by
  intro x
  have hflip : P (C (P x)) = -P (C (P x)) := by
    calc
      P (C (P x)) = P (chi (C (P x))) := (hP _).symm
      _ = P (-C (chi (P x))) := by rw [hanti]
      _ = -P (C (P x)) := by rw [hplus, map_neg]
  have hsum : P (C (P x)) + P (C (P x)) = 0 := by
    nth_rw 2 [hflip]
    exact add_neg_cancel _
  have htwo : (2 : ℂ) • P (C (P x)) = 0 := by
    simpa [two_smul] using hsum
  exact (smul_eq_zero.mp htwo).resolve_left (by norm_num)
/-- The canonical + projector of an involution satisfies the hypotheses
needed for tangential compression. -/
theorem involution_tangential_compression_zero
    (chi C : V →ₗ[ℂ] V)
    (hinv : ∀ x, chi (chi x) = x)
    (hanti : ∀ x, chi (C x) = -C (chi x)) :
    let P : V →ₗ[ℂ] V := (1 / 2 : ℂ) • (LinearMap.id + chi)
    ∀ x, P (C (P x)) = 0 := by
  let P : V →ₗ[ℂ] V := (1 / 2 : ℂ) • (LinearMap.id + chi)
  have hp : ∀ x, chi (P x) = P x := by
    intro x
    simp [P, map_add, map_smul, hinv, add_comm]
  have hP : ∀ x, P (chi x) = P x := by
    intro x
    simp [P, hinv, add_comm]
  exact tangential_compression_zero chi P C hp hP hanti
/-- The paired involution chi=tau gamma_n has the required properties
when tau and gamma_n are commuting involutions, tau commutes with a
tangential Clifford action, and gamma_n anticommutes with it. -/
theorem paired_clifford_tangential_compression
    (tau gn gt : V →ₗ[ℂ] V)
    (htau : ∀ x, tau (tau x) = x)
    (hgn : ∀ x, gn (gn x) = x)
    (hcomm : ∀ x, tau (gn x) = gn (tau x))
    (htc : ∀ x, tau (gt x) = gt (tau x))
    (hantic : ∀ x, gn (gt x) = -gt (gn x)) :
    let chi := tau.comp gn
    let P : V →ₗ[ℂ] V := (1 / 2 : ℂ) • (LinearMap.id + chi)
    ∀ x, P (gt (P x)) = 0 := by
  let chi := tau.comp gn
  have hinv : ∀ x, chi (chi x) = x := by
    intro x
    change tau (gn (tau (gn x))) = x
    rw [← hcomm (gn x), hgn, htau]
  have hanti : ∀ x, chi (gt x) = -gt (chi x) := by
    intro x
    change tau (gn (gt x)) = -gt (tau (gn x))
    rw [hantic, map_neg, htc]
  exact involution_tangential_compression_zero chi gt hinv hanti
/-- An independent sphere-factor map commuting with the orbit projector
preserves the tangential compression cancellation. -/
theorem compression_with_commuting_factor
    (P C G : V →ₗ[ℂ] V)
    (hcompress : ∀ x, P (C (P x)) = 0)
    (hcomm : ∀ x, G (P x) = P (G x)) :
    ∀ x, P (C (G (P x))) = 0 := by
  intro x
  rw [hcomm]
  exact hcompress (G x)
end PairedDirac

#print axioms PairedDirac.boundary_kernel_eq_iff

#print axioms PairedDirac.embedded_boundary_kernel_eq_iff

#print axioms PairedDirac.tangential_compression_zero

#print axioms PairedDirac.involution_tangential_compression_zero

#print axioms PairedDirac.paired_clifford_tangential_compression

#print axioms PairedDirac.compression_with_commuting_factor
