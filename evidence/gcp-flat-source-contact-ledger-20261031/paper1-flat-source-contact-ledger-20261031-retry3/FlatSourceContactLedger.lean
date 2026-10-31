import Mathlib.Tactic.Ring

/-!
Exact rational coefficient bookkeeping for the flat constant-direction
comparison in `notes/p1d-response-versus-conversion.md`.

Every coefficient below has the common factor `1 / (pi * t^2)` and the
insertion pairing `U` removed.  The source contact follows from
`2 * Theta' * I_t`, with leading `Theta' = -C / t^2` and the folded flat
insertion coefficient `I_t = U / (4*pi)`.  The Duhamel and orbit-bracket
coefficients are imported from the ordinary flat model derivation.  This file
proves only the rational algebra; it does not prove those analytic inputs,
the physical normalization, or a common-regulator response theorem.
-/

def sourceContactCoefficient (C U : ℚ) : ℚ := 2 * (-C) * (U / 4)

def pureAngularCoefficient (C U : ℚ) : ℚ := 2 * C * U / 2

def orbitAngularCrossCoefficient (C U : ℚ) : ℚ := 4 * C * U / 2

def fullCorrectionCoefficient (C U : ℚ) : ℚ :=
  pureAngularCoefficient C U + orbitAngularCrossCoefficient C U

def correctionMinusContactCoefficient (C U : ℚ) : ℚ :=
  fullCorrectionCoefficient C U - sourceContactCoefficient C U

def orbitBracketCoefficient (C U : ℚ) : ℚ := C * U / 2

def totalFlatLedgerCoefficient (C U : ℚ) : ℚ :=
  correctionMinusContactCoefficient C U + orbitBracketCoefficient C U

theorem source_contact_coefficient_eq (C U : ℚ) :
    sourceContactCoefficient C U = -(C * U) / 2 := by
  dsimp [sourceContactCoefficient]
  ring

theorem physical_half_correction_eq (C U : ℚ) :
    fullCorrectionCoefficient C U = 3 * C * U := by
  dsimp [fullCorrectionCoefficient, pureAngularCoefficient,
    orbitAngularCrossCoefficient]
  ring

theorem correction_minus_contact_eq (C U : ℚ) :
    correctionMinusContactCoefficient C U = 7 * C * U / 2 := by
  dsimp [correctionMinusContactCoefficient, fullCorrectionCoefficient,
    pureAngularCoefficient, orbitAngularCrossCoefficient,
    sourceContactCoefficient]
  ring

theorem total_flat_ledger_eq (C U : ℚ) :
    totalFlatLedgerCoefficient C U = 4 * C * U := by
  dsimp [totalFlatLedgerCoefficient, correctionMinusContactCoefficient,
    fullCorrectionCoefficient, pureAngularCoefficient,
    orbitAngularCrossCoefficient, sourceContactCoefficient,
    orbitBracketCoefficient]
  ring

#print axioms source_contact_coefficient_eq
#print axioms physical_half_correction_eq
#print axioms correction_minus_contact_eq
#print axioms total_flat_ledger_eq
