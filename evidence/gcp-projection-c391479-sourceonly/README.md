# Shifted positive-square surjectivity: GCP check

GCP run `paper1-projection-sourceonly-c391479-20261029` exited 0 with Lean
4.30.0 and the source-built dependencies. At source
`c39147967cc6a72c957f3b8a878044c4d4fd9d8d`, Lean checked surjectivity of
`I + D*D` on the constructed natural product domain for a densely defined
closed operator. Its axiom report lists only `propext`, `Classical.choice`
and `Quot.sound`; unused-simplification warnings remain. Raw log SHA-256:
`f47e8a267be4fcc403d89f918fd0ae3c471113ad2b36fda9efc68ba1605835f4`.

This does not yet establish square-domain density or self-adjointness in
Lean, nor the physical and response claims. The base environment audit is
recorded separately.

Remaining to-do list: derive density and adjoint equality in Lean, establish
the physical and response claims, and prepare the manuscript.
