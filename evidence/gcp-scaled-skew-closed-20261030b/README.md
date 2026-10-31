# Closedness under nonzero scaling: GCP development check

Run b exited 0 under Lean 4.30.0 for source SHA-256 `8d1f5857a2ace5fe7a04513211aecbb72390ef85ac56e184b2a8efeaad40760c`. The declaration `scaled_operator_closed_draft` reports `propext`, `Classical.choice`, and `Quot.sound`, without `sorryAx`. It proves that a nonzero complex scalar multiple of a closed partially defined operator is closed, by expressing its graph as a continuous preimage. Run a preserves the preceding graph-membership elaboration failure.

This was a development check with reused compiled dependencies and local-change warnings, so a clean replay is still needed. The scaled adjoint identity, assembled inverse and physical operator are separate obligations.