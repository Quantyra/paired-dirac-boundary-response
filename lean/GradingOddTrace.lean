import Mathlib.Data.Complex.Basic
import Mathlib.LinearAlgebra.Matrix.Trace

/-! Finite-dimensional grading cancellation. Infinite-dimensional trace-class
and physical domain hypotheses are not proved by this file. -/

namespace PairedDirac

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

theorem grading_odd_trace_zero (G X : Matrix ι ι ℂ)
    (hG : G * G = 1) (hodd : G * X = -(X * G)) :
    Matrix.trace X = 0 := by
  have hconj : G * X * G = -X := by
    calc
      G * X * G = -(X * G * G) := by rw [hodd, Matrix.neg_mul]
      _ = -X := by rw [Matrix.mul_assoc, hG, Matrix.mul_one]
  have htr : Matrix.trace (G * X * G) = Matrix.trace X := by
    rw [Matrix.mul_assoc, Matrix.trace_mul_comm, Matrix.mul_assoc, hG, Matrix.mul_one]
  rw [hconj, Matrix.trace_neg] at htr
  have hz : Matrix.trace X + Matrix.trace X = 0 := by
    calc
      Matrix.trace X + Matrix.trace X = -Matrix.trace X + Matrix.trace X := by rw [htr]
      _ = 0 := neg_add_cancel _
  have htwo : (2 : ℂ) * Matrix.trace X = 0 := by simpa [two_mul] using hz
  exact (mul_eq_zero.mp htwo).resolve_left (by exact two_ne_zero)

end PairedDirac

#print axioms PairedDirac.grading_odd_trace_zero