import ManuscriptFormal

/-!
# Manuscript formalization: the `(2.4)` block-system elimination

Draft `(2.4)` writes the Pauli square system as two block rows with
`A = νσ₂ - μaσ₃` and lower-right block `Aᵀ` (certified in
`ManuscriptFormal.kzetaManuscript_lower_right`). Solving the first row for the
flux (`σ₂⁻¹ = -σ₂`, `flux_of_first_row`), substituting into the second row, and
applying `(i f⁻¹)σ₂` to both rows gives the second-order equation

```text
η'' = Aη' + A'η - (f'/f)(η' - Aη) + (σ₂Aᵀσ₂)(η' - Aη) - (ζ-M²)f⁻²η.
```

The identity is purely algebraic in the two rows, the flux relation and the
differentiated flux relation; `σ₂² = 1` (`pauli2_sq`) and `f⁻¹f = 1` are the
only structural inputs. The operator derivation of `K_ζ` from
`(P*P+M²-ζ)ψ = g` remains outside the certified scope.
-/

namespace PairedDirac.Manuscript

open Matrix

/-- `(2.4)` elimination, at the matrix-vector level. -/
theorem elimination_second_order
    (A A' : Matrix (Fin 2) (Fin 2) ℂ) (f fp zM2 : ℝ) (hf : (f : ℂ) ≠ 0)
    (eta eta' eta'' xi xi' : Fin 2 → ℂ)
    (h0 : eta' = A.mulVec eta + ((Complex.I * ((f : ℂ)⁻¹)) • pauli2).mulVec xi)
    (h1 : xi' = ((Complex.I * ((zM2 : ℂ) * ((f : ℂ)⁻¹))) • pauli2).mulVec eta
        + (Matrix.transpose A).mulVec xi)
    (hflux : xi = ((-Complex.I * (f : ℂ)) • pauli2).mulVec (eta' - A.mulVec eta))
    (hflux' : xi' = ((-Complex.I * ((fp : ℝ) : ℂ)) • pauli2).mulVec (eta' - A.mulVec eta)
        + ((-Complex.I * (f : ℂ)) • pauli2).mulVec (eta'' - A'.mulVec eta - A.mulVec eta')) :
    eta'' = A.mulVec eta' + A'.mulVec eta
        - ((fp : ℂ) / (f : ℂ)) • (eta' - A.mulVec eta)
        + (pauli2 * Matrix.transpose A * pauli2).mulVec (eta' - A.mulVec eta)
        - ((zM2 : ℂ) / ((f : ℂ) * (f : ℂ))) • eta := by
  set u : Fin 2 → ℂ := eta' - A.mulVec eta with hudef
  set v : Fin 2 → ℂ := eta'' - A'.mulVec eta - A.mulVec eta' with hvdef
  have hxi : xi = ((-Complex.I * (f : ℂ)) • pauli2).mulVec u := by
    rw [hudef]
    exact hflux
  -- scalar identities
  have hsc1 : (Complex.I * ((f : ℂ)⁻¹)) * (Complex.I * ((zM2 : ℂ) * ((f : ℂ)⁻¹)))
      = -((zM2 : ℂ) / ((f : ℂ) * (f : ℂ))) := by
    field_simp
    rw [Complex.I_sq]
    ring
  have hsc2 : (Complex.I * ((f : ℂ)⁻¹)) * (-Complex.I * ((fp : ℝ) : ℂ))
      = (fp : ℂ) / (f : ℂ) := by
    field_simp
    rw [Complex.I_sq]
    ring
  have hsc3 : (Complex.I * ((f : ℂ)⁻¹)) * (-Complex.I * (f : ℂ)) = 1 := by
    field_simp
    rw [Complex.I_sq]
    ring
  -- conjugating the `σ₂ Aᵀ σ₂` sandwich
  have hmat : ((Complex.I * ((f : ℂ)⁻¹)) • pauli2) * Matrix.transpose A
        * ((-Complex.I * (f : ℂ)) • pauli2)
      = pauli2 * Matrix.transpose A * pauli2 := by
    rw [Matrix.smul_mul, Matrix.mul_smul, Matrix.smul_mul, smul_smul]
    rw [show (-Complex.I * (f : ℂ)) * (Complex.I * ((f : ℂ)⁻¹)) = 1 by
      rw [mul_comm]; exact hsc3, one_smul]
  -- a Pauli sandwich acting on `w`
  have key : ∀ (c : ℂ) (w : Fin 2 → ℂ),
      ((Complex.I * ((f : ℂ)⁻¹)) • pauli2).mulVec ((c • pauli2).mulVec w)
        = ((Complex.I * ((f : ℂ)⁻¹)) * c) • w := by
    intro c w
    rw [Matrix.smul_mulVec, Matrix.smul_mulVec, Matrix.mulVec_smul,
      Matrix.mulVec_mulVec, pauli2_sq, Matrix.one_mulVec, smul_smul]
  -- the `Aᵀ ξ` term
  have keyA : ((Complex.I * ((f : ℂ)⁻¹)) • pauli2).mulVec ((Matrix.transpose A).mulVec xi)
      = (pauli2 * Matrix.transpose A * pauli2).mulVec u := by
    rw [hxi, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hmat]
  -- apply `(i f⁻¹)σ₂` to both block rows and equate
  have E1 : ((Complex.I * ((f : ℂ)⁻¹)) • pauli2).mulVec xi'
      = ((Complex.I * ((f : ℂ)⁻¹)) • pauli2).mulVec
          (((Complex.I * ((zM2 : ℂ) * ((f : ℂ)⁻¹))) • pauli2).mulVec eta
            + (Matrix.transpose A).mulVec xi) := by rw [h1]
  have E2 : ((Complex.I * ((f : ℂ)⁻¹)) • pauli2).mulVec xi'
      = ((Complex.I * ((f : ℂ)⁻¹)) • pauli2).mulVec
          (((-Complex.I * ((fp : ℝ) : ℂ)) • pauli2).mulVec u
            + ((-Complex.I * (f : ℂ)) • pauli2).mulVec v) := by
    rw [hflux']
  have E3 := E1.symm.trans E2
  rw [Matrix.mulVec_add, Matrix.mulVec_add, keyA, key, key, key, hsc1, hsc2, hsc3,
    one_smul] at E3
  -- `E3 : -(zM2/f²)•eta + (σ₂Aᵀσ₂)u = (f'/f)•u + v`
  have hv : v = (pauli2 * Matrix.transpose A * pauli2).mulVec u
      - ((fp : ℂ) / (f : ℂ)) • u - ((zM2 : ℂ) / ((f : ℂ) * (f : ℂ))) • eta := by
    rw [show v = (((fp : ℂ) / (f : ℂ)) • u + v) - ((fp : ℂ) / (f : ℂ)) • u by abel]
    rw [← E3]
    simp only [neg_smul, smul_neg]
    abel
  have hgoal : eta'' = v + A'.mulVec eta + A.mulVec eta' := by
    rw [hvdef]
    abel
  rw [hgoal, hv, hudef]
  abel_nf

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.elimination_second_order
