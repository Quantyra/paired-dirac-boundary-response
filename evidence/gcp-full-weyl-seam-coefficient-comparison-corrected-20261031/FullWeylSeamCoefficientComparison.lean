import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

noncomputable section

namespace FullWeylSeamCoefficientComparison

variable (b c_u c_w sqrtPi pi C : ℝ)

def orbitTowerCubic : ℝ := -(15 * b^2 * c_u * c_w) / (512 * sqrtPi)
def fullWeylCubic : ℝ := -(27 * b^2 * c_u * c_w) / (512 * sqrtPi)
def cubicCorrection : ℝ := -(3 * b^2 * c_u * c_w) / (128 * sqrtPi)

theorem fullWeyl_cubic_difference :
    fullWeylCubic b c_u c_w sqrtPi - orbitTowerCubic b c_u c_w sqrtPi
      = cubicCorrection b c_u c_w sqrtPi := by
  dsimp [fullWeylCubic, orbitTowerCubic, cubicCorrection]
  ring

def orbitTowerLog : ℝ := (2 * b^2) * (-(C) / (70 * pi))
def fullWeylLog : ℝ := -(2 * b^2 * C) / (35 * pi)
def fullWeylLogCorrection : ℝ := -(b^2 * C) / (35 * pi)

theorem fullWeyl_log_difference :
    fullWeylLog b pi C - orbitTowerLog b pi C
      = fullWeylLogCorrection b pi C := by
  dsimp [orbitTowerLog, fullWeylLog, fullWeylLogCorrection]
  ring

end FullWeylSeamCoefficientComparison

#print axioms FullWeylSeamCoefficientComparison.fullWeyl_cubic_difference
#print axioms FullWeylSeamCoefficientComparison.fullWeyl_log_difference
