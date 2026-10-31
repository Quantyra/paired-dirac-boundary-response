/-!
Abstract composition-domain reduction for a bounded scalar congruence.

The theorem isolates only the set-theoretic domain step used in
`physical-product-contact-operator-gap.md`. The H1 projector domains,
conformal bundle map, multiplier invariance, and closed-operator adjoint
formula remain analytic inputs and are not formalized here.
-/

namespace FiniteCutCongruence

def congruence {α : Type} (E T : α → α) (x : α) : α := E (T (E x))

def compositionDomain {α : Type} (V Vstar : α → Prop)
    (E T : α → α) (x : α) : Prop :=
  V (E x) ∧ Vstar (E (congruence E T x))

theorem composition_domain_reduction
    {α : Type} (V Vstar : α → Prop) (E T : α → α)
    (hV : ∀ x, V (E x) ↔ V x)
    (hVstar : ∀ x, Vstar (E (E x)) ↔ Vstar x) :
    ∀ x, compositionDomain V Vstar E T x ↔
      (V x ∧ Vstar (T (E x))) := by
  intro x
  exact and_congr (hV x) (hVstar (T (E x)))

#print axioms composition_domain_reduction

end FiniteCutCongruence
