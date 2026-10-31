import FlatFormFactorIntegral

open MeasureTheory intervalIntegral
noncomputable section
namespace PairedDirac

def rawTangentF (x : ℝ) : ℝ :=
  ∫ a in (0:ℝ)..1, (1 + x*(a*(1-a)) + (x^2/4)*(a*(1-a))*(1-2*a)^2) *
    Real.exp (-(a*(1-a)*x))

theorem raw_tangent_form_factor (x : ℝ) : rawTangentF x = diracF x := by
  let e : ℝ → ℝ := fun a => Real.exp (-(a*(1-a)*x))
  let b : ℝ → ℝ := fun a => a*(1-a)*e a
  let c : ℝ → ℝ := fun a => a*(1-a)*(1-2*a)^2*e a
  let f : ℝ → ℝ := fun a => a*(1-a)*(1-2*a)*e a
  have he : Continuous e := by dsimp [e]; fun_prop
  have hb : Continuous b := by dsimp [b]; fun_prop
  have hc : Continuous c := by dsimp [c]; fun_prop
  have hd : ∀ a ∈ Set.uIcc (0:ℝ) 1,
      HasDerivAt f (e a - 6*b a - x*c a) a := by
    intro a ha
    have hp : HasDerivAt (fun a : ℝ => -(a*(1-a)*x)) (-(1-2*a)*x) a := by
      convert (((hasDerivAt_id a).mul ((hasDerivAt_const a 1).sub (hasDerivAt_id a))).mul_const x).neg using 1 <;> simp only [Pi.sub_apply, Pi.one_apply, id_eq] <;> ring
    have hpoly := ((hasDerivAt_id a).mul ((hasDerivAt_const a 1).sub (hasDerivAt_id a))).mul ((hasDerivAt_const a 1).sub ((hasDerivAt_id a).const_mul 2))
    have hf := hpoly.mul hp.exp
    convert hf using 1 <;> simp only [Pi.sub_apply, Pi.one_apply, id_eq] <;> dsimp [f,e,b,c] <;> ring
  have hi : IntervalIntegrable (fun a => e a - 6*b a - x*c a) volume 0 1 := by
    apply Continuous.intervalIntegrable
    fun_prop
  have ht := intervalIntegral.integral_eq_sub_of_hasDerivAt hd hi
  have hzero : (∫ a in (0:ℝ)..1, (e a - 6*b a - x*c a)) = 0 := by
    rw [ht]
    dsimp [f,e]
    norm_num
  rw [intervalIntegral.integral_sub ((he.sub (hb.const_mul 6)).intervalIntegrable 0 1) ((hc.const_mul x).intervalIntegrable 0 1),
      intervalIntegral.integral_sub (he.intervalIntegrable 0 1) ((hb.const_mul 6).intervalIntegrable 0 1),
      intervalIntegral.integral_const_mul, intervalIntegral.integral_const_mul] at hzero
  change scalarA x - 6*scalarB x - x*(∫ a in (0:ℝ)..1, c a) = 0 at hzero
  have hr : rawTangentF x = scalarA x + x*scalarB x + (x^2/4)*(∫ a in (0:ℝ)..1, c a) := by
    unfold rawTangentF
    have heq : (fun a : ℝ => (1+x*(a*(1-a))+(x^2/4)*(a*(1-a))*(1-2*a)^2)*Real.exp (-(a*(1-a)*x))) =
        (fun a => e a + x*b a + (x^2/4)*c a) := by
      funext a
      dsimp [e,b,c]
      ring
    rw [heq]
    let d : ℝ → ℝ := fun a => e a + x*b a
    change (∫ a in (0:ℝ)..1, d a + (x^2/4)*c a) = _
    have hdi : IntervalIntegrable d volume 0 1 := by
      dsimp [d]
      exact (he.add (hb.const_mul x)).intervalIntegrable 0 1
    rw [intervalIntegral.integral_add hdi ((hc.const_mul (x^2/4)).intervalIntegrable 0 1),
        intervalIntegral.integral_const_mul]
    dsimp [d]
    rw [intervalIntegral.integral_add (he.intervalIntegrable 0 1) ((hb.const_mul x).intervalIntegrable 0 1),
        intervalIntegral.integral_const_mul]
    rfl
  have hm := congrArg (fun t : ℝ => (x/4)*t) hzero
  have hfirst := flat_form_factor_relation x
  dsimp [diracF] at hfirst ⊢
  rw [hr]
  nlinarith
end PairedDirac
#print axioms PairedDirac.raw_tangent_form_factor