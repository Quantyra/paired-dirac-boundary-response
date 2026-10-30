# Positive-square domain density: GCP check

GCP run `paper1-projection-sourceonly-a9bfdfb-20261029` exited 0 using
Lean 4.30.0 and the source-built dependencies. At immutable source
`a9bfdfbdb03178a088e902950c94faaf66c56dd0`, Lean checked density of the
natural `D*D` domain for densely defined closed D, using the previously
checked surjectivity and nonnegativity. The axiom report lists only
`propext`, `Classical.choice` and `Quot.sound`; unused-simplification
warnings remain. Raw log SHA-256: `6cf4f6c528f5852120867cbee5c4b24e0dabd7c7822a1927b180bb1238dba3d0`.

The reverse adjoint inclusion and self-adjointness are not yet formalized.
The physical paired-domain and response hypotheses remain separate.

Remaining to-do list: establish adjoint equality in Lean, verify the physical
and response claims, and prepare the manuscript.
