# Finite-cut congruence composition-domain reduction: GCP Lean receipt

Date: 2026-10-31 HST  
Source: [`lean/FiniteCutCongruenceDomain.lean`](../../lean/FiniteCutCongruenceDomain.lean)  
Source SHA-256: `F027BAE8861A86CDF2BE95AD7C938553CC59608EC52C049262847209AD48204F`

The exact source passed `lake env lean /tmp/FiniteCutCongruenceDomain.lean` on GCP with exit code 0. Lean reported that `FiniteCutCongruence.composition_domain_reduction` depends on no axioms. Captured output is in [`success.log`](success.log). The source-only Lake workspace emitted local-change warnings for its nine reused dependencies; this is an exact-source replay, not a clean dependency rebuild.

## Certified claim

For predicates `V` and `Vstar`, maps `E` and `T`, and assumptions

```text
(forall x, V (E x) <-> V x)
(forall x, Vstar (E (E x)) <-> Vstar x)
```

Lean proves that the domain predicate for the composition `E ∘ T ∘ E`, namely

```text
V (E x) and Vstar (E (E (T (E x))))
```

is equivalent to

```text
V x and Vstar (T (E x)).
```

This certifies only the set-theoretic domain reduction used in the finite-cut operator note. It does not prove that the physical multiplier preserves the Sobolev projector domains, establish the adjoint formula for unbounded operators, verify the spin-bundle identification, or imply moving-cut trace and regulator convergence. Those remain ordinary analytic obligations.

Compiler: Lean 4.30.0, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`, Release; Lake 5.0.0. GCP instance: `quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone `us-central1-a`.

Remaining to-do list: establish the physical domain-preservation hypotheses and complete the modewise density/contact/LLL and common-regulator comparison.
