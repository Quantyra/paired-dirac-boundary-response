import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Module

noncomputable section

/-!
Algebraic boundary-coefficient transport for a scalar congruence.

This formalizes only the projected Robin coefficient change. The normal
product rule, geometric projector, composition-domain realization, and
physical boundary identification remain hypotheses outside this file.
-/

namespace ProjectedRobinCongruence

variable {V : Type} [AddCommGroup V] [Module ℝ V]

/-- The source Robin operator after a scalar congruence, written using the
normal product rule and the seed extrinsic-curvature term. -/
def transportedRobinInput (n : V →ₗ[ℝ] V) (e de k : ℝ) (x : V) : V :=
  e • n x + de • x + (k / 2 * e) • x

/-- The coefficient in the fixed-frame Robin condition after congruence. -/
def p1RobinCoefficient (k normalJet : ℝ) : ℝ := (k - normalJet) / 2

/-- The transported projected Robin operator is the scalar multiplier times
the P1 Robin operator with coefficient `(K - b_n)/2`. -/
theorem projected_robin_congruence
    (P n : V →ₗ[ℝ] V) (e de k normalJet : ℝ) (x : V)
    (hproduct : de = -(normalJet / 2) * e) :
    P (transportedRobinInput n e de k x)
      = e • P (n x + p1RobinCoefficient k normalJet • x) := by
  dsimp [transportedRobinInput, p1RobinCoefficient]
  simp only [LinearMap.map_add, LinearMap.map_smul]
  rw [hproduct]
  module

/-- At zero normal multiplier jet, the source and P1 seed Robin
coefficients reduce to the same `K/2` term. -/
theorem seed_robin_coefficient_match (k : ℝ) :
    p1RobinCoefficient k 0 = k / 2 := by
  simp [p1RobinCoefficient]

end ProjectedRobinCongruence

#print axioms ProjectedRobinCongruence.projected_robin_congruence
#print axioms ProjectedRobinCongruence.seed_robin_coefficient_match
