import ManuscriptFormal

/-!
# Manuscript formalization: the closed two-vertex double sum

Substituting the first-order vertex identity into the second-order one gives the
closed finite-Galerkin two-vertex sum — the discrete counterpart of `(5.1)`'s
ordered `da db` triangle:

```text
Z2 0 = P n * Z2 n
     + Σ_{j<n} (P j A j P_{j+1,n} Z1 n)
     + Σ_{j<n} Σ_{i<n-j-1} (P j A j P_{j+1,j+1+i} A (j+1+i) Z0 (j+1+i+1)),
```

with `P_{a,b} = prop m (fun l => K (a+l)) (b-a)` the segment product; by
`prop_add`, `P j * P_{j,j+1} = P (j+1)`, so the middle factor is the product of
the `K`s strictly between the two insertions.

Certified ingredients: `prop_add` (`ManuscriptFormal`), `first_order_vertex` and
`second_order_vertex` (`ManuscriptDyson`). The scalar
`triangle_area` (`ManuscriptDuhamel`) is the continuum counterpart of the
double-index sum.

**Not** certified: a continuous heat family `K_s = exp(-sL)` or any unbounded
Section 5 statement.
-/

namespace PairedDirac.Manuscript

open scoped BigOperators

/-- `Z0 0 = P n * Z0 n` for the homogeneous recursion. -/
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

/-- First-order vertex. -/
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

/-- Second-order (two-vertex) level. -/
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

/-- Third-order (three-vertex) level of the same hierarchy. -/
theorem third_order_vertex {m : ℕ} (K A : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (Z2 Z3 : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (h3 : ∀ j, Z3 j = K j * Z3 (j + 1) + A j * Z2 (j + 1)) :
    ∀ n, Z3 0 = prop m K n * Z3 n
      + ∑ j ∈ Finset.range n, prop m K j * A j * Z2 (j + 1) := by
  intro n
  induction n with
  | zero => simp [prop]
  | succ n ih =>
      rw [ih, h3 n, Finset.sum_range_succ]
      have hP : prop m K (n + 1) = prop m K n * K n := rfl
      rw [hP]
      simp only [Matrix.mul_add, Matrix.mul_assoc]
      abel

/-- **Closed two-vertex double sum.** Substituting the first-order vertex
identity (for the shifted family `K (j+1+·)`) into the second-order one. -/
theorem second_order_closed {m : ℕ} (K A : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (Z0 Z1 Z2 : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (h1 : ∀ j, Z1 j = K j * Z1 (j + 1) + A j * Z0 (j + 1))
    (h2 : ∀ j, Z2 j = K j * Z2 (j + 1) + A j * Z1 (j + 1)) :
    ∀ n, Z2 0 = prop m K n * Z2 n
      + (∑ j ∈ Finset.range n,
          prop m K j * A j * prop m (fun i => K (j + 1 + i)) (n - (j + 1)) * Z1 n)
      + (∑ j ∈ Finset.range n, ∑ i ∈ Finset.range (n - (j + 1)),
          prop m K j * A j * prop m (fun l => K (j + 1 + l)) i
            * A (j + 1 + i) * Z0 (j + 1 + i + 1)) := by
  intro n
  rw [second_order_vertex K A Z1 Z2 h2 n]
  have hsplit : ∀ j ∈ Finset.range n,
      prop m K j * A j * Z1 (j + 1)
        = prop m K j * A j * prop m (fun i => K (j + 1 + i)) (n - (j + 1)) * Z1 n
          + ∑ i ∈ Finset.range (n - (j + 1)),
              prop m K j * A j * prop m (fun l => K (j + 1 + l)) i
                * A (j + 1 + i) * Z0 (j + 1 + i + 1) := by
    intro j hj
    have hj' : j < n := Finset.mem_range.mp hj
    have hh : ∀ i, Z1 (j + 1 + i)
        = K (j + 1 + i) * Z1 (j + 1 + i + 1) + A (j + 1 + i) * Z0 (j + 1 + i + 1) :=
      fun i => h1 (j + 1 + i)
    rw [first_order_vertex (K := fun i => K (j + 1 + i)) (A := fun i => A (j + 1 + i))
      (Z0 := fun i => Z0 (j + 1 + i)) (Z1 := fun i => Z1 (j + 1 + i)) hh
      (n - (j + 1))]
    rw [Nat.add_comm (j + 1) (n - (j + 1)), Nat.sub_add_cancel (Nat.succ_le_of_lt hj'),
      Matrix.mul_add, Finset.mul_sum]
    simp only [Matrix.mul_assoc, Nat.add_assoc]
  rw [Finset.sum_congr rfl hsplit, Finset.sum_add_distrib]
  abel

/-- **Closed three-vertex triple sum.** Substituting the second-order vertex
identity (for the shifted family `K (j+1+·)`) into the third-order one. -/
theorem third_order_closed {m : ℕ} (K A : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (Z1 Z2 Z3 : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (h2 : ∀ j, Z2 j = K j * Z2 (j + 1) + A j * Z1 (j + 1))
    (h3 : ∀ j, Z3 j = K j * Z3 (j + 1) + A j * Z2 (j + 1)) :
    ∀ n, Z3 0 = prop m K n * Z3 n
      + (∑ j ∈ Finset.range n,
          prop m K j * A j * prop m (fun i => K (j + 1 + i)) (n - (j + 1)) * Z2 n)
      + (∑ j ∈ Finset.range n, ∑ i ∈ Finset.range (n - (j + 1)),
          prop m K j * A j * prop m (fun l => K (j + 1 + l)) i
            * A (j + 1 + i) * Z1 (j + 1 + i + 1)) := by
  intro n
  rw [third_order_vertex K A Z2 Z3 h3 n]
  have hsplit : ∀ j ∈ Finset.range n,
      prop m K j * A j * Z2 (j + 1)
        = prop m K j * A j * prop m (fun i => K (j + 1 + i)) (n - (j + 1)) * Z2 n
          + ∑ i ∈ Finset.range (n - (j + 1)),
              prop m K j * A j * prop m (fun l => K (j + 1 + l)) i
                * A (j + 1 + i) * Z1 (j + 1 + i + 1) := by
    intro j hj
    have hj' : j < n := Finset.mem_range.mp hj
    have hh : ∀ i, Z2 (j + 1 + i)
        = K (j + 1 + i) * Z2 (j + 1 + i + 1) + A (j + 1 + i) * Z1 (j + 1 + i + 1) :=
      fun i => h2 (j + 1 + i)
    rw [second_order_vertex (K := fun i => K (j + 1 + i)) (A := fun i => A (j + 1 + i))
      (Z1 := fun i => Z1 (j + 1 + i)) (Z2 := fun i => Z2 (j + 1 + i)) hh
      (n - (j + 1))]
    rw [Nat.add_comm (j + 1) (n - (j + 1)), Nat.sub_add_cancel (Nat.succ_le_of_lt hj'),
      Matrix.mul_add, Finset.mul_sum]
    simp only [Matrix.mul_assoc, Nat.add_assoc]
  rw [Finset.sum_congr rfl hsplit, Finset.sum_add_distrib]
  abel

/-- **Fully expanded three-vertex sum.** Substituting the first-order vertex
identity inside `third_order_closed`, so that the base level `Z0` appears at the
bottom of the triple sum. -/
theorem third_order_expanded {m : ℕ} (K A : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (Z0 Z1 Z2 Z3 : ℕ → Matrix (Fin m) (Fin m) ℂ)
    (h1 : ∀ j, Z1 j = K j * Z1 (j + 1) + A j * Z0 (j + 1))
    (h2 : ∀ j, Z2 j = K j * Z2 (j + 1) + A j * Z1 (j + 1))
    (h3 : ∀ j, Z3 j = K j * Z3 (j + 1) + A j * Z2 (j + 1)) :
    ∀ n, Z3 0 = prop m K n * Z3 n
      + (∑ j ∈ Finset.range n,
          prop m K j * A j * prop m (fun i => K (j + 1 + i)) (n - (j + 1)) * Z2 n)
      + (∑ j ∈ Finset.range n, ∑ i ∈ Finset.range (n - (j + 1)),
          prop m K j * A j * prop m (fun l => K (j + 1 + l)) i * A (j + 1 + i)
            * prop m (fun p => K (j + 1 + i + 1 + p)) (n - (j + 1 + i + 1)) * Z1 n)
      + (∑ j ∈ Finset.range n, ∑ i ∈ Finset.range (n - (j + 1)),
          ∑ l ∈ Finset.range (n - (j + 1 + i + 1)),
            prop m K j * A j * prop m (fun l => K (j + 1 + l)) i * A (j + 1 + i)
              * prop m (fun p => K (j + 1 + i + 1 + p)) l * A (j + 1 + i + 1 + l)
              * Z0 (j + 1 + i + 1 + l + 1)) := by
  intro n
  rw [third_order_closed K A Z1 Z2 Z3 h2 h3 n]
  have hsplit : ∀ j ∈ Finset.range n, ∀ i ∈ Finset.range (n - (j + 1)),
      prop m K j * A j * prop m (fun l => K (j + 1 + l)) i * A (j + 1 + i)
          * Z1 (j + 1 + i + 1)
        = prop m K j * A j * prop m (fun l => K (j + 1 + l)) i * A (j + 1 + i)
            * prop m (fun p => K (j + 1 + i + 1 + p)) (n - (j + 1 + i + 1)) * Z1 n
          + ∑ l ∈ Finset.range (n - (j + 1 + i + 1)),
              prop m K j * A j * prop m (fun l => K (j + 1 + l)) i * A (j + 1 + i)
                * prop m (fun p => K (j + 1 + i + 1 + p)) l * A (j + 1 + i + 1 + l)
                * Z0 (j + 1 + i + 1 + l + 1) := by
    intro j hj i hi
    have hj' : j < n := Finset.mem_range.mp hj
    have hi' : i < n - (j + 1) := Finset.mem_range.mp hi
    have hjle : j + 1 ≤ n := Nat.succ_le_of_lt hj'
    have hilt : i + (j + 1) < n := by
      have h := Nat.add_lt_add_right hi' (j + 1)
      rwa [Nat.sub_add_cancel hjle] at h
    have hle : j + 1 + i + 1 ≤ n := by
      have h := Nat.succ_le_of_lt hilt
      simpa [Nat.add_comm, Nat.add_left_comm, Nat.add_assoc] using h
    have hh : ∀ k, Z1 (j + 1 + i + 1 + k)
        = K (j + 1 + i + 1 + k) * Z1 (j + 1 + i + 1 + k + 1)
          + A (j + 1 + i + 1 + k) * Z0 (j + 1 + i + 1 + k + 1) :=
      fun k => h1 (j + 1 + i + 1 + k)
    have key := first_order_vertex (K := fun k => K (j + 1 + i + 1 + k))
      (A := fun k => A (j + 1 + i + 1 + k)) (Z0 := fun k => Z0 (j + 1 + i + 1 + k))
      (Z1 := fun k => Z1 (j + 1 + i + 1 + k)) hh (n - (j + 1 + i + 1))
    simp only [Nat.add_zero] at key
    rw [Nat.add_comm (j + 1 + i + 1) (n - (j + 1 + i + 1)), Nat.sub_add_cancel hle] at key
    rw [key, Matrix.mul_add, Finset.mul_sum]
    simp only [Matrix.mul_assoc, Nat.add_assoc]
  rw [Finset.sum_congr rfl (fun j hj => Finset.sum_congr rfl (fun i hi => hsplit j hj i hi))]
  simp only [Finset.sum_add_distrib]
  abel

end PairedDirac.Manuscript

#print axioms PairedDirac.Manuscript.homogeneous_propagation
#print axioms PairedDirac.Manuscript.first_order_vertex
#print axioms PairedDirac.Manuscript.second_order_vertex
#print axioms PairedDirac.Manuscript.second_order_closed
#print axioms PairedDirac.Manuscript.third_order_vertex
#print axioms PairedDirac.Manuscript.third_order_closed
#print axioms PairedDirac.Manuscript.third_order_expanded
