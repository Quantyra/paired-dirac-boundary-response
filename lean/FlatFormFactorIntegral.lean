import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

open MeasureTheory intervalIntegral
noncomputable section
namespace PairedDirac

def scalarA (x : ℝ) : ℝ := ∫ a in (0:ℝ)..1, Real.exp (-(a * (1-a) * x))
def scalarB (x : ℝ) : ℝ := ∫ a in (0:ℝ)..1, (a * (1-a)) * Real.exp (-(a * (1-a) * x))
def diracF (x : ℝ) : ℝ := (1 + scalarA x + x * scalarB x) / 2

theorem flat_form_factor_relation (x : ℝ) :
    diracF x = 1/4 + (6+x)*scalarA x/8 := by
  let e : ℝ → ℝ := fun a => Real.exp (-(a * (1-a) * x))
  let b : ℝ → ℝ := fun a => a * (1-a) * e a
  let f : ℝ → ℝ := fun a => (a-1/2) * e a
  have he : Continuous e := by dsimp [e]; fun_prop
  have hb : Continuous b := by dsimp [b]; fun_prop
  have hderiv : ∀ a ∈ Set.uIcc (0:ℝ) 1,
      HasDerivAt f ((1+x/2)*e a - 2*x*b a) a := by
    intro a ha
    have hp : HasDerivAt (fun a : ℝ => -(a*(1-a)*x)) (-(1-2*a)*x) a := by
      convert (((hasDerivAt_id a).mul ((hasDerivAt_const a 1).sub (hasDerivAt_id a))).mul_const x).neg using 1 <;> ring
    have hf := ((hasDerivAt_id a).sub_const (1/2:ℝ)).mul hp.exp
    convert hf using 1 <;> dsimp [f,e,b] <;> ring
  have hi : IntervalIntegrable (fun a => (1+x/2)*e a - 2*x*b a) MeasureTheory.volume 0 1 := by
    apply Continuous.intervalIntegrable
    fun_prop
  have ht := intervalIntegral.integral_eq_sub_of_hasDerivAt hderiv hi
  have h1 : (∫ a in (0:ℝ)..1, ((1+x/2)*e a - 2*x*b a)) = 1 := by
    rw [ht]
    dsimp [f,e]
    norm_num
  rw [intervalIntegral.integral_sub (he.const_mul _).intervalIntegrable (hb.const_mul _).intervalIntegrable,
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul] at h1
  change (1+x/2)*scalarA x - (2*x)*scalarB x = 1 at h1
  dsimp [diracF]
  linarith
end PairedDirac
#print axioms PairedDirac.flat_form_factor_relation