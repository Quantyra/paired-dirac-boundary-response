import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Ring

noncomputable section

def fullModeHeat (t lambda mu b : ℝ) : ℝ :=
  Real.exp (-t * (lambda + mu ^ 2) * Real.exp (-2 * b))

def orbitOnlyModeHeat (t lambda mu b : ℝ) : ℝ :=
  Real.exp (-t * (lambda * Real.exp (-2 * b) + mu ^ 2))

theorem full_mode_second_derivative (t lambda mu : ℝ) :
    deriv (deriv (fun b : ℝ => fullModeHeat t lambda mu b)) 0
      = 4 * (t ^ 2 * (lambda + mu ^ 2) ^ 2 - t * (lambda + mu ^ 2))
          * Real.exp (-t * (lambda + mu ^ 2)) := by
  let C : ℝ := -t * (lambda + mu ^ 2)
  let f : ℝ → ℝ := fun b => Real.exp (C * Real.exp (-2 * b))
  let g : ℝ → ℝ := fun b =>
    -2 * C * Real.exp (-2 * b) * Real.exp (C * Real.exp (-2 * b))
  have hlinear (b : ℝ) : HasDerivAt (fun x : ℝ => -2 * x) (-2) b := by
    convert (hasDerivAt_id b).const_mul (-2) using 1 <;> ring
  have hexp (b : ℝ) :
      HasDerivAt (fun x : ℝ => Real.exp (-2 * x))
        (Real.exp (-2 * b) * (-2)) b := by
    convert (Real.hasDerivAt_exp (-2 * b)).comp b (hlinear b) using 1 <;> ring
  have hinner (b : ℝ) :
      HasDerivAt (fun x : ℝ => C * Real.exp (-2 * x))
        (C * (Real.exp (-2 * b) * (-2))) b := by
    convert (hexp b).const_mul C using 1 <;> ring
  have hf (b : ℝ) : HasDerivAt f
      (-2 * C * Real.exp (-2 * b) * Real.exp (C * Real.exp (-2 * b))) b := by
    dsimp [f]
    convert (Real.hasDerivAt_exp (C * Real.exp (-2 * b))).comp b (hinner b) using 1 <;> ring
  have hderiv : deriv f = g := by
    funext b
    exact (hf b).deriv
  have hA (b : ℝ) : HasDerivAt (fun x : ℝ => -2 * C * Real.exp (-2 * x))
      (-2 * C * (Real.exp (-2 * b) * (-2))) b := by
    convert (hexp b).const_mul (-2 * C) using 1 <;> ring
  have hB (b : ℝ) : HasDerivAt
      (fun x : ℝ => Real.exp (C * Real.exp (-2 * x)))
      (Real.exp (C * Real.exp (-2 * b)) *
        (C * (Real.exp (-2 * b) * (-2)))) b := by
    convert (Real.hasDerivAt_exp (C * Real.exp (-2 * b))).comp b (hinner b) using 1 <;> ring
  have hg (b : ℝ) : HasDerivAt g
      ((-2 * C * (Real.exp (-2 * b) * (-2))) * Real.exp (C * Real.exp (-2 * b)) +
        (-2 * C * Real.exp (-2 * b)) *
          (Real.exp (C * Real.exp (-2 * b)) *
            (C * (Real.exp (-2 * b) * (-2))))) b := by
    dsimp [g]
    convert (hA b).mul (hB b) using 1 <;> ring
  have hsecond := (hg 0).deriv
  have hsecond' : deriv g 0 =
      4 * (C ^ 2 + C) * Real.exp C := by
    calc
      deriv g 0 = 2 * C * 2 * Real.exp C +
          2 * C * (Real.exp C * (C * 2)) := by
        simpa [Real.exp_zero] using hsecond
      _ = 4 * C * Real.exp C + 4 * C ^ 2 * Real.exp C := by ring
      _ = 4 * (C ^ 2 + C) * Real.exp C := by ring
  unfold fullModeHeat
  change deriv (deriv f) 0 = _
  rw [hderiv]
  rw [hsecond']
  dsimp [C, fullModeHeat, f]
  ring

#print axioms full_mode_second_derivative

theorem full_minus_orbit_only_hessian (t lambda mu : ℝ) :
    (4 * (t ^ 2 * (lambda + mu ^ 2) ^ 2 - t * (lambda + mu ^ 2)) *
        Real.exp (-t * (lambda + mu ^ 2)))
      - (4 * (t ^ 2 * lambda ^ 2 - t * lambda) *
        Real.exp (-t * (lambda + mu ^ 2)))
    = 4 * t * mu ^ 2 * (t * (2 * lambda + mu ^ 2) - 1) *
        Real.exp (-t * (lambda + mu ^ 2)) := by
  ring

#print axioms full_minus_orbit_only_hessian
