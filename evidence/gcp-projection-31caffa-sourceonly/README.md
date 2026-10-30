# Abstract positive-square self-adjointness: GCP check

GCP run `paper1-projection-sourceonly-31caffa-20261029` exited 0 with
Lean 4.30.0 using source-built dependencies. At immutable source
`31caffa64058f0ffb649999d717cc72f74300823`, Lean checked the reverse
adjoint-domain inclusion and the equality `(D*D)* = D*D` for a densely
defined closed partial operator on a complex Hilbert space, using the
constructed natural product domain. Both reports list only `propext`,
`Classical.choice` and `Quot.sound`. Unused-simplification warnings
remain. Raw log SHA-256: `0ad5c4f103384291dc4fbc98a71edb102f39564cc8b61369b437fb341cdc1119`.

This is an abstract operator theorem. It does not establish the physical
paired-domain hypotheses, heat response, novelty or the complete paper.
The source-only environment audit and its extra reproduced Lake hash file
are recorded separately.

Remaining to-do list: connect the theorem to the physical realization,
complete and formalize the response and novelty audits, and prepare the manuscript.
