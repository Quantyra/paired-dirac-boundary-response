import OrbitMatrixDraft

/-! Local Clifford identities used in the paired product-domain argument.
This does not formalize the geometric bundle or unbounded operator domains. -/

namespace PairedDirac.Orbit

theorem chirality_is_sphere_orbit (v : W) :
    sphereOrbit v = Complex.I • normal (timeGamma v) := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [sphereOrbit, normal, timeGamma]

theorem chirality_square (v : W) : sphereOrbit (sphereOrbit v) = v := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [sphereOrbit, ← mul_assoc, Complex.I_mul_I]

theorem chirality_swaps_projector (v : W) :
    sphereOrbit ((tau.comp normal) v) = -(tau.comp normal) (sphereOrbit v) := by
  ext i j
  fin_cases i <;> fin_cases j <;> simp [sphereOrbit, tau, normal]

end PairedDirac.Orbit

#print axioms PairedDirac.Orbit.chirality_is_sphere_orbit
#print axioms PairedDirac.Orbit.chirality_square
#print axioms PairedDirac.Orbit.chirality_swaps_projector
