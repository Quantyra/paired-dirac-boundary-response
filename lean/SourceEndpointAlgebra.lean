import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic.Ring

/-!
The scalar algebra at the geometric endpoint of the variable-contact path.

This theorem isolates only the bounded scalar multiplication part. It does
not model an unbounded Dirac domain, the angular Clifford grading, a square
operator, or a heat trace.
-/

theorem source_geometric_endpoint_action
    {V : Type*} [AddCommGroup V] [Module ℝ V]
    (D : V →ₗ[ℝ] V) (b m : ℝ) (x : V) :
    Real.exp (-b / 2) •
        (D (Real.exp (-b / 2) • x) +
          (m * Real.exp b) • (Real.exp (-b / 2) • x))
      = Real.exp (-b / 2) • D (Real.exp (-b / 2) • x) + m • x := by
  rw [smul_add]
  congr 1
  have hexp : Real.exp (-b / 2) * Real.exp b * Real.exp (-b / 2) = 1 := by
    rw [← Real.exp_add, ← Real.exp_add]
    have hz : (-b / 2 + b) + (-b / 2) = 0 := by ring
    rw [hz]
    simp
  calc
    Real.exp (-b / 2) •
        ((m * Real.exp b) • (Real.exp (-b / 2) • x))
        = (Real.exp (-b / 2) * (m * Real.exp b) * Real.exp (-b / 2)) • x := by
            rw [smul_smul, smul_smul]
    _ = m • x := by
          congr 1
          calc
            Real.exp (-b / 2) * (m * Real.exp b) * Real.exp (-b / 2)
                = m * (Real.exp (-b / 2) * Real.exp b * Real.exp (-b / 2)) := by ring
            _ = m := by rw [hexp, mul_one]

#print axioms source_geometric_endpoint_action
