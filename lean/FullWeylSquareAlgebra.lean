import Mathlib.Tactic.Ring
import Mathlib.Tactic.NoncommRing

/-!
Abstract algebra for the full-Weyl mode square. The theorem keeps the angular
term inside the congruence. Its hypotheses encode the partner identity,
grading involution, scalar commutation, and imaginary angular coefficient.
It does not identify a physical mode domain or prove a heat-trace result.
-/

theorem full_weyl_mode_square_identity
    {R : Type} [Ring R]
    (Dstar D M G q mu : R)
    (hqDstar : Dstar * q = q * Dstar)
    (hqM : q * M = M * q)
    (hqG : q * G = G * q)
    (hDstarG : Dstar * G = G * D)
    (hMG : M * G = G * M)
    (hG2 : G * G = 1)
    (hq2 : q * q = -(mu * mu)) :
    (Dstar - q * (M * G)) * (D + q * (M * G))
      = Dstar * D + mu * mu * (M * M)
          + q * G * (D * M - M * D) := by
  have hDstarMG : Dstar * (M * G) = G * (D * M) := by
    calc
      Dstar * (M * G) = Dstar * (G * M) := by rw [hMG]
      _ = (Dstar * G) * M := by noncomm_ring
      _ = (G * D) * M := by rw [hDstarG]
      _ = G * (D * M) := by noncomm_ring
  have hMGD : (M * G) * D = G * (M * D) := by
    calc
      (M * G) * D = (G * M) * D := by rw [hMG]
      _ = G * (M * D) := by noncomm_ring
  have hMG2 : (M * G) * (M * G) = M * M := by
    calc
      (M * G) * (M * G) = M * (G * M) * G := by noncomm_ring
      _ = M * (M * G) * G := by rw [hMG.symm]
      _ = M * M * (G * G) := by noncomm_ring
      _ = M * M := by rw [hG2]; noncomm_ring
  have hqMG : q * (M * G) = (M * G) * q := by
    calc
      q * (M * G) = (q * M) * G := by noncomm_ring
      _ = (M * q) * G := by rw [hqM]
      _ = M * (G * q) := by rw [mul_assoc, hqG]
      _ = (M * G) * q := by noncomm_ring
  have hqSquare : (q * (M * G)) * (q * (M * G))
      = -(mu * mu) * (M * M) := by
    calc
      (q * (M * G)) * (q * (M * G)) = q * (M * G) * q * (M * G) := by noncomm_ring
      _ = q * ((M * G) * q) * (M * G) := by noncomm_ring
      _ = q * (q * (M * G)) * (M * G) := by rw [← hqMG]
      _ = q * q * (M * G) * (M * G) := by noncomm_ring
      _ = (q * q) * ((M * G) * (M * G)) := by noncomm_ring
      _ = (q * q) * (M * M) := by rw [hMG2]
      _ = -(mu * mu) * (M * M) := by rw [hq2]
  calc
    (Dstar - q * (M * G)) * (D + q * (M * G))
        = Dstar * D + Dstar * (q * (M * G))
            - (q * (M * G)) * D
            - (q * (M * G)) * (q * (M * G)) := by noncomm_ring
    _ = Dstar * D + q * (G * (D * M))
          - q * (G * (M * D)) + mu * mu * (M * M) := by
      rw [show Dstar * (q * (M * G)) = q * (G * (D * M)) by
            calc
              Dstar * (q * (M * G)) = (Dstar * q) * (M * G) := by noncomm_ring
              _ = (q * Dstar) * (M * G) := by rw [hqDstar]
              _ = q * (Dstar * (M * G)) := by noncomm_ring
              _ = q * (G * (D * M)) := by rw [hDstarMG],
          show (q * (M * G)) * D = q * (G * (M * D)) by
            calc
              (q * (M * G)) * D = q * ((M * G) * D) := by noncomm_ring
              _ = q * (G * (M * D)) := by rw [hMGD],
          hqSquare]
      ; noncomm_ring
    _ = Dstar * D + mu * mu * (M * M)
          + q * G * (D * M - M * D) := by noncomm_ring

#print axioms full_weyl_mode_square_identity
