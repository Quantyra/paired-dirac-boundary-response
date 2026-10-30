# GCP radial comparison-gap check

Run `paper1-radial-mass-gap-20261030d` on `quantyra-lean-builder-01`
returned exit code 0 with Lean 4.30.0. The checked source is
`lean/RadialMassGapDraft.lean`, SHA-256
`aa972bc4a76c6a6929e845003042accdbe447120dce9f767b549a88b68d48705`.
Its three printed axiom reports contain `propext`, `Classical.choice`, and
`Quot.sound`, with no `sorryAx`. The original log, exit code and driver are
retained here. The reused source-only Mathlib environment reported local
changes in its dependencies, so this is not a clean-build provenance claim.

Run b ended with shutdown and no exit record. Run c checked the original
source and failed on two proof errors; its log is retained. Run d corrects
the explicit completion-of-square identity and multiplication order. These
are scalar statements conditional on their hypotheses, not an operator
estimate, physical geometry result, physical admission margin, or full paper
certification.