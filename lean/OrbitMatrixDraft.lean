import BoundaryKernelDraft

/-! Explicit rank-four orbit representation from the pinned paired-phase
source. The sphere fiber, bundle transitions and domains remain outside this
finite-dimensional check. -/

namespace PairedDirac.Orbit

abbrev W := Fin 2 → Fin 2 → ℂ

def tau : W →ₗ[ℂ] W where
  toFun v i j := if i = 0 then v i j else -v i j
  map_add' := by intro x y; ext i j; fin_cases i <;> simp [add_comm]
  map_smul' := by intro a x; ext i j; fin_cases i <;> simp

def normal : W →ₗ[ℂ] W where
  toFun v i j := v i (if j = 0 then 1 else 0)
  map_add' := by intro x y; ext i j; simp
  map_smul' := by intro a x; ext i j; simp

def timeGamma : W →ₗ[ℂ] W where
  toFun v i j := if i = j then -v i j else v i j
  map_add' := by intro x y; ext i j; fin_cases i <;> fin_cases j <;> simp [add_comm]
  map_smul' := by intro a x; ext i j; fin_cases i <;> fin_cases j <;> simp

theorem tau_sq (v : W) : tau (tau v) = v := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [tau]

theorem normal_sq (v : W) : normal (normal v) = v := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [normal]

theorem tau_normal (v : W) : tau (normal v) = normal (tau v) := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [tau, normal]

theorem tau_time (v : W) : tau (timeGamma v) = timeGamma (tau v) := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [tau, timeGamma]

theorem normal_time (v : W) : normal (timeGamma v) = -timeGamma (normal v) := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [normal, timeGamma]

theorem paired_time_compression :
    let chi := tau.comp normal
    let P : W →ₗ[ℂ] W := (1 / 2 : ℂ) • (LinearMap.id + chi)
    ∀ v, P (timeGamma (P v)) = 0 := by
  exact PairedDirac.paired_clifford_tangential_compression tau normal timeGamma
    tau_sq normal_sq tau_normal tau_time normal_time

/-- Orbit factor −tau₃⊗sigma₂ of either sphere-tangential gamma. -/
def sphereOrbit : W →ₗ[ℂ] W where
  toFun v i j := (if i = j then Complex.I else -Complex.I) *
    v i (if j = 0 then 1 else 0)
  map_add' := by
    intro x y; ext i j; fin_cases i <;> fin_cases j <;> simp [mul_add]
  map_smul' := by
    intro a x; ext i j; fin_cases i <;> fin_cases j <;> simp [mul_assoc, mul_comm, mul_left_comm]

theorem tau_sphere (v : W) : tau (sphereOrbit v) = sphereOrbit (tau v) := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [tau, sphereOrbit]

theorem normal_sphere (v : W) : normal (sphereOrbit v) = -sphereOrbit (normal v) := by
  ext i j; fin_cases i <;> fin_cases j <;> simp [normal, sphereOrbit]

theorem paired_sphere_orbit_compression :
    let chi := tau.comp normal
    let P : W →ₗ[ℂ] W := (1 / 2 : ℂ) • (LinearMap.id + chi)
    ∀ v, P (sphereOrbit (P v)) = 0 := by
  exact PairedDirac.paired_clifford_tangential_compression tau normal sphereOrbit
    tau_sq normal_sq tau_normal tau_sphere normal_sphere
/-- Coordinate realization of the tensor product of the rank-four orbit
fiber with a two-component sphere-spin fiber. -/
abbrev Full := Fin 2 → W

def liftOrbit (A : W →ₗ[ℂ] W) : Full →ₗ[ℂ] Full where
  toFun v s := A (v s)
  map_add' := by intro x y; ext s i j; simp
  map_smul' := by intro a x; ext s i j; simp

def sphereSpinOne : Full →ₗ[ℂ] Full where
  toFun v s := v (if s = 0 then 1 else 0)
  map_add' := by intro x y; ext s i j; simp
  map_smul' := by intro a x; ext s i j; simp

theorem full_sphere_gamma_compression :
    let orbitP : W →ₗ[ℂ] W := (1 / 2 : ℂ) • (LinearMap.id + tau.comp normal)
    let P := liftOrbit orbitP
    let C := liftOrbit sphereOrbit
    ∀ v, P (C (sphereSpinOne (P v))) = 0 := by
  let orbitP : W →ₗ[ℂ] W := (1 / 2 : ℂ) • (LinearMap.id + tau.comp normal)
  let P := liftOrbit orbitP
  let C := liftOrbit sphereOrbit
  have hcompress : ∀ v, P (C (P v)) = 0 := by
    intro v
    ext s i j
    change (orbitP (sphereOrbit (orbitP (v s)))) i j = 0
    exact congrFun (congrFun (paired_sphere_orbit_compression (v s)) i) j
  have hcomm : ∀ v, sphereSpinOne (P v) = P (sphereSpinOne v) := by
    intro v
    ext s i j
    fin_cases s <;> rfl
  exact PairedDirac.compression_with_commuting_factor P C sphereSpinOne hcompress hcomm
/-- Local fixed-flux time-reflection lift U=1⊗sigma₁⊗c_S. -/
def reflectionU : Full →ₗ[ℂ] Full where
  toFun v s i j := if s = 0 then v s i (if j = 0 then 1 else 0)
    else -v s i (if j = 0 then 1 else 0)
  map_add' := by intro x y; ext s i j; fin_cases s <;> simp [add_comm]
  map_smul' := by intro a x; ext s i j; fin_cases s <;> simp

/-- Local partner J=tau₁⊗sigma₁⊗1. -/
def partnerJ : Full →ₗ[ℂ] Full where
  toFun v s i j := v s (if i = 0 then 1 else 0) (if j = 0 then 1 else 0)
  map_add' := by intro x y; ext s i j; simp
  map_smul' := by intro a x; ext s i j; simp

noncomputable def chiFull : Full →ₗ[ℂ] Full := (liftOrbit tau).comp (liftOrbit normal)
def timeFull : Full →ₗ[ℂ] Full := liftOrbit timeGamma
def normalFull : Full →ₗ[ℂ] Full := liftOrbit normal
noncomputable def sphereFull : Full →ₗ[ℂ] Full := (liftOrbit sphereOrbit).comp sphereSpinOne

theorem reflection_involution (v : Full) : reflectionU (reflectionU v) = v := by
  ext s i j; fin_cases s <;> fin_cases i <;> fin_cases j <;> simp [reflectionU]

theorem reflection_time (v : Full) : reflectionU (timeFull v) = -timeFull (reflectionU v) := by
  ext s i j; fin_cases s <;> fin_cases i <;> fin_cases j <;> simp [reflectionU, timeFull, liftOrbit, timeGamma]

theorem reflection_normal (v : Full) : reflectionU (normalFull v) = normalFull (reflectionU v) := by
  ext s i j; fin_cases s <;> fin_cases i <;> fin_cases j <;> simp [reflectionU, normalFull, liftOrbit, normal]

theorem reflection_sphere (v : Full) : reflectionU (sphereFull v) = sphereFull (reflectionU v) := by
  ext s i j; fin_cases s <;> fin_cases i <;> fin_cases j <;> simp [reflectionU, sphereFull, liftOrbit, sphereOrbit, sphereSpinOne]

theorem reflection_chi (v : Full) : reflectionU (chiFull v) = chiFull (reflectionU v) := by
  ext s i j; fin_cases s <;> fin_cases i <;> fin_cases j <;> simp [reflectionU, chiFull, liftOrbit, tau, normal]

theorem partner_chi (v : Full) : partnerJ (chiFull v) = -chiFull (partnerJ v) := by
  ext s i j; fin_cases s <;> fin_cases i <;> fin_cases j <;> simp [partnerJ, chiFull, liftOrbit, tau, normal]

theorem reflection_partner (v : Full) : reflectionU (partnerJ v) = partnerJ (reflectionU v) := by
  ext s i j; fin_cases s <;> fin_cases i <;> fin_cases j <;> simp [reflectionU, partnerJ]
end PairedDirac.Orbit

#print axioms PairedDirac.Orbit.paired_time_compression
#print axioms PairedDirac.Orbit.paired_sphere_orbit_compression

#print axioms PairedDirac.Orbit.full_sphere_gamma_compression

#print axioms PairedDirac.Orbit.reflection_sphere
#print axioms PairedDirac.Orbit.partner_chi
