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
end PairedDirac.Orbit

#print axioms PairedDirac.Orbit.paired_time_compression
#print axioms PairedDirac.Orbit.paired_sphere_orbit_compression
