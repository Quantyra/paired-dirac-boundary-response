import ManuscriptFormal

/-!
# Manuscript formalization: the discrete Duhamel expansion to two vertices

The finite-Galerkin (Dyson) expansion behind `(5.1)`, in its *hierarchical*
Taylor-coefficient form. A perturbation series

```text
Z(j) = Z0(j) + ε Z1(j) + ε² Z2(j) + ⋯
```

of the recursion `Z j = (K j + ε A j) Z (j+1)` is characterised by

```text
Z0 j = K j * Z0 (j+1),
Z1 j = K j * Z1 (j+1) + A j * Z0 (j+1),
Z2 j = K j * Z2 (j+1) + A j * Z1 (j+1).
```

This file certifies, for the unperturbed propagator `P n = prop m K n`:

* `homogeneous_propagation` — `Z0 0 = P n * Z0 n`;
* `first_order_vertex` — `Z1 0 = P n * Z1 n + Σ_{j<n} P j * A j * Z0 (j+1)`;
* `second_order_vertex` — `Z2 0 = P n * Z2 n + Σ_{j<n} P j * A j * Z1 (j+1)`.

The second-order line is the two-vertex structure: the insertion `A j` at step
`j` is transported by the unperturbed propagator `P j` and acts on the
*previous-order* tail `Z1 (j+1)`, which is itself a first-order vertex sum. This
is the discrete counterpart of `(5.1)`'s ordered `da db` triangle; the closed
double sum over `i < j` follows by substituting `first_order_vertex` into
`second_order_vertex` (not carried out here).

**Not** certified: a continuous heat family `K_s = exp(-sL)`, the unbounded
realization, or any trace/regulator statement of Section 5. In particular the
exact truncated identity `Z 0 = P n Z n + ε(⋯) + ε²(⋯)` is **false** for a genuine
`Z` (an `ε³` remainder is present), which is why the hierarchical form is used.
-/

namespace PairedDirac.Manuscript

open scoped BigOperators

/-- `Z0 0 = P n * Z0 n` for the homogeneous recursion `Z0 j = K j * Z0 (j+1)`. -/
theorem homogeneous_propagation {m : ℕ} (K : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (Z0 : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (h0 : ∀ j, Z0 j = K j * Z0 (j + 1)) :
    ∀ n, Z0 0 = prop m K n * Z0 n := by
  intro n
  induction n with
  | zero => simp [prop]
  | succ n ih =>
      rw [ih, h0 n]
      have hP : prop m K (n + 1) = prop m K n * K n := rfl
      rw [hP, Matrix.mul_assoc]

/-- First-order vertex: `Z1 0 = P n Z1 n + Σ_{j<n} P j A j Z0 (j+1)`. -/
theorem first_order_vertex {m : ℕ} (K A : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (Z0 Z1 : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (h1 : ∀ j, Z1 j = K j * Z1 (j + 1) + A j * Z0 (j + 1)) :
    ∀ n, Z1 0 = prop m K n * Z1 n
      + ∑ j ∈ Finset.range n, prop m K j * A j * Z0 (j + 1) := by
  intro n
  induction n with
  | zero => simp [prop]
  | succ n ih =>
      rw [ih, h1 n, Finset.sum_range_succ]
      have hP : prop m K (n + 1) = prop m K n * K n := rfl
      rw [hP]
      simp only [Matrix.mul_add, Matrix.mul_assoc]
      abel

/-- Second-order (two-vertex) level: `Z2 0 = P n Z2 n + Σ_{j<n} P j A j Z1 (j+1)`. -/
theorem second_order_vertex {m : ℕ} (K A : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (Z1 Z2 : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (h2 : ∀ j, Z2 j = K j * Z2 (j + 1) + A j * Z1 (j + 1)) :
    ∀ n, Z2 0 = prop m K n * Z2 n
      + ∑ j ∈ Finset.range n, prop m K j * A j * Z1 (j + 1) := by
  intro n
  induction n with
  | zero => simp [prop]
  | succ n ih =>
      rw [ih, h2 n, Finset.sum_range_succ]
      have hP : prop m K (n + 1) = prop m K n * K n := rfl
      rw [hP]
      simp only [Matrix.mul_add, Matrix.mul_assoc]
      abel

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.homogeneous_propagation
#print axioms PairedDirac.Manuscript.first_order_vertex
#print axioms PairedDirac.Manuscript.second_order_vertex
