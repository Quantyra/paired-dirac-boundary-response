# Positive square composition: source-built GCP check

GCP run `paper1-positive-sourceonly-b27d0b0-20261029` exited 0 with Lean
4.30.0, using the source-built dependencies from the successful base run.
At immutable source `b27d0b0ed127e3650f245bbfc45ec7f74645fe0d`, the
actual partially defined composition `positiveSquare` and its two domain
lemmas typechecked. The lemmas report only `propext`, `Classical.choice`
and `Quot.sound`. Raw log SHA-256: `8b5566b3676d22c04018ee2d3f123ecca3169d4a984e4ad031edad4dff38a875`.

This establishes the domain of the constructed product under its abstract
setup. Positivity, the physical domain assumptions, and the response claims
are not established by these declarations. The underlying environment's
strict worktree audit still reports one extra hash file; its isolated Lake
reproduction and toolchain audit are retained separately.

Remaining to-do list: establish the remaining square properties and physical
hypotheses, complete the response and novelty audits, and certify the paper.
