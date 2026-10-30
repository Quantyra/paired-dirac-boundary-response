# Positive square symmetry: GCP check

The GCP run `paper1-positive-sourceonly-b1f5523-20261029` exited 0 using
Lean 4.30.0 and the source-built dependency environment. At immutable source
`b1f5523f2aa482a4141de53b04a5e15bb7432810`, Lean checked the symmetry
of the constructed square and its inclusion in its adjoint when the square
domain is dense. Both report only `propext`, `Classical.choice` and
`Quot.sound`. Raw log SHA-256: `9017879a8969f64624e2ad83b3d364faed41ce40e1d7a1beaed9282cd16b6032`.

The inclusion explicitly assumes square-domain density. It does not prove
that density, the reverse inclusion, self-adjointness, or the physical domain
and response hypotheses. The base environment's audit limitations remain
recorded in the source-only receipt.

Remaining to-do list: establish density and reverse inclusion, complete the
physical and response arguments, and certify the supported paper.
