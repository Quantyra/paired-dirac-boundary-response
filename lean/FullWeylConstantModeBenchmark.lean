import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Ring

noncomputable section

def fullModeHeat (t lambda mu b : ℝ) : ℝ :=
  Real.exp (-t * (lambda + mu ^ 2) * Real.exp (-2 * b))

def orbitOnlyModeHeat (t lambda mu b : ℝ) : ℝ :=
  Real.exp (-t * (lambda * Real.exp (-2 * b) + mu ^ 2))

def scaledExpModeHeat (C D b : ℝ) : ℝ :=
  Real.exp (C * Real.exp (-2 * b) + D)

theorem scaled_exp_mode_second_derivative (C D : ℝ) :
    deriv (deriv (fun b : ℝ => scaledExpModeHeat C D b)) 0
      = 4 * (C ^ 2 + C) * Real.exp (C + D) := by
  let f : ℝ → ℝ := fun b => Real.exp (C * Real.exp (-2 * b) + D)
  let g : ℝ → ℝ := fun b =>
    -2 * C * Real.exp (-2 * b) * Real.exp (C * Real.exp (-2 * b) + D)
  have hlinear (b : ℝ) : HasDerivAt (fun x : ℝ => -2 * x) (-2) b := by
    convert (hasDerivAt_id b).const_mul (-2) using 1 <;> ring
  have hexp (b : ℝ) :
      HasDerivAt (fun x : ℝ => Real.exp (-2 * x))
        (Real.exp (-2 * b) * (-2)) b := by
    convert (Real.hasDerivAt_exp (-2 * b)).comp b (hlinear b) using 1 <;> ring
  have hinner (b : ℝ) :
      HasDerivAt (fun x : ℝ => C * Real.exp (-2 * x) + D)
        (C * (Real.exp (-2 * b) * (-2))) b := by
    convert ((hexp b).const_mul C).add_const D using 1 <;> ring
  have hf (b : ℝ) : HasDerivAt f
      (-2 * C * Real.exp (-2 * b) * Real.exp (C * Real.exp (-2 * b) + D)) b := by
    dsimp [f]
    convert (Real.hasDerivAt_exp (C * Real.exp (-2 * b) + D)).comp b (hinner b) using 1 <;> ring
  have hderiv : deriv f = g := by
    funext b
    exact (hf b).deriv
  have hA (b : ℝ) : HasDerivAt (fun x : ℝ => -2 * C * Real.exp (-2 * x))
      (-2 * C * (Real.exp (-2 * b) * (-2))) b := by
    convert (hexp b).const_mul (-2 * C) using 1 <;> ring
  have hB (b : ℝ) : HasDerivAt
      (fun x : ℝ => Real.exp (C * Real.exp (-2 * x) + D))
      (Real.exp (C * Real.exp (-2 * b) + D) *
        (C * (Real.exp (-2 * b) * (-2)))) b := by
    convert (Real.hasDerivAt_exp (C * Real.exp (-2 * b) + D)).comp b (hinner b) using 1 <;> ring
  have hg (b : ℝ) : HasDerivAt g
      ((-2 * C * (Real.exp (-2 * b) * (-2))) *
          Real.exp (C * Real.exp (-2 * b) + D) +
        (-2 * C * Real.exp (-2 * b)) *
          (Real.exp (C * Real.exp (-2 * b) + D) *
            (C * (Real.exp (-2 * b) * (-2))))) b := by
    dsimp [g]
    convert (hA b).mul (hB b) using 1 <;> ring
  have hsecond := (hg 0).deriv
  have hsecond' : deriv g 0 = 4 * (C ^ 2 + C) * Real.exp (C + D) := by
    calc
      deriv g 0 = 2 * C * 2 * Real.exp (C + D) +
          2 * C * (Real.exp (C + D) * (C * 2)) := by
        simpa [Real.exp_zero] using hsecond
      _ = 4 * C * Real.exp (C + D) +
          4 * C ^ 2 * Real.exp (C + D) := by ring
      _ = 4 * (C ^ 2 + C) * Real.exp (C + D) := by ring
  unfold scaledExpModeHeat
  change deriv (deriv f) 0 = _
  rw [hderiv, hsecond']

theorem full_mode_second_derivative (t lambda mu : ℝ) :
    deriv (deriv (fun b : ℝ => fullModeHeat t lambda mu b)) 0
      = 4 * (t ^ 2 * (lambda + mu ^ 2) ^ 2 - t * (lambda + mu ^ 2))
          * Real.exp (-t * (lambda + mu ^ 2)) := by
  have heq : (fun b : ℝ => fullModeHeat t lambda mu b) =
      (fun b => scaledExpModeHeat (-t * (lambda + mu ^ 2)) 0 b) := by
    funext b
    simp [fullModeHeat, scaledExpModeHeat]
  rw [heq]
  convert scaled_exp_mode_second_derivative (-t * (lambda + mu ^ 2)) 0 using 1 <;>
    simp [scaledExpModeHeat] <;> ring

theorem orbit_only_mode_second_derivative (t lambda mu : ℝ) :
    deriv (deriv (fun b : ℝ => orbitOnlyModeHeat t lambda mu b)) 0
      = 4 * (t ^ 2 * lambda ^ 2 - t * lambda)
          * Real.exp (-t * (lambda + mu ^ 2)) := by
  have heq : (fun b : ℝ => orbitOnlyModeHeat t lambda mu b) =
      (fun b => scaledExpModeHeat (-t * lambda) (-t * mu ^ 2) b) := by
    funext b
    simp [orbitOnlyModeHeat, scaledExpModeHeat]
    congr 1 <;> ring
  rw [heq]
  convert scaled_exp_mode_second_derivative (-t * lambda) (-t * mu ^ 2) using 1 <;>
    simp [scaledExpModeHeat] <;> ring

theorem full_minus_orbit_only_hessian (t lambda mu : ℝ) :
    (4 * (t ^ 2 * (lambda + mu ^ 2) ^ 2 - t * (lambda + mu ^ 2)) *
        Real.exp (-t * (lambda + mu ^ 2)))
      - (4 * (t ^ 2 * lambda ^ 2 - t * lambda) *
        Real.exp (-t * (lambda + mu ^ 2)))
    = 4 * t * mu ^ 2 * (t * (2 * lambda + mu ^ 2) - 1) *
        Real.exp (-t * (lambda + mu ^ 2)) := by
  ring

#print axioms scaled_exp_mode_second_derivative
#print axioms full_mode_second_derivative
#print axioms orbit_only_mode_second_derivative
#print axioms full_minus_orbit_only_hessian
