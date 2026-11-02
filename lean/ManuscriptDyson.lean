import ManuscriptFormal

/-!
# Manuscript formalization: the first-order discrete Duhamel identity

The finite-Galerkin reading of `(5.1)`'s first-vertex term: if the perturbed
propagator satisfies

```text
Z j = (K j + ε • A j) * Z (j+1)
```

then the unperturbed accumulated propagator `P` gives

```text
Z 0 = P n * Z n + ε • (Σ_{j<n} P j * A j * Z (j+1)),
```

with `P j = K 0 * ⋯ * K (j-1)` (`prop` in `ManuscriptFormal`). This is the
discrete analogue of the first Duhamel vertex in `(5.1)`: the perturbation at
step `j` is transported by the unperturbed propagator up to `j` and leaves the
perturbed tail `Z (j+1)` after it.

**Not** certified: the second-order (two-vertex) discrete expansion, and any
continuous heat family `K_s = exp(-sL)`.
-/

namespace PairedDirac.Manuscript

open scoped BigOperators

/-- First-order finite-Galerkin Duhamel identity. -/
theorem discrete_dyson_first_order {m : ℕ} (K A : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (Z : ℕ → Matrix (Fin m) (Fin m) ℂ) (ε : ℂ)
    (hrec : ∀ j, Z j = (K j + ε • A j) * Z (j + 1)) :
    ∀ n, Z 0 = prop m K n * Z n
      + ε • (∑ j ∈ Finset.range n, prop m K j * A j * Z (j + 1)) := by
  intro n
  induction n with
  | zero => simp [prop]
  | succ n ih =>
      rw [ih, hrec n, Finset.sum_range_succ]
      have hP : prop m K (n + 1) = prop m K n * K n := rfl
      rw [hP]
      simp only [smul_add, smul_mul_assoc]
      noncomm_ring

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.discrete_dyson_first_order
