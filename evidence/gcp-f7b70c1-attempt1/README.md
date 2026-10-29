# GCP development attempt 1

Run: `quantyra-space-runs/paper1-domain-dev-f7b70c1-20261029` on instance
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`. Driver source: repository commit `2cfe95c`; the requested
paper snapshot was `f7b70c1`.

The retained `run.log` and `exit-code` are the raw terminal output and exit
status copied from the instance. The clone failed because the instance could
not connect to `github.com:443`; exit status is 128. The driver did not reach
source checkout, toolchain installation, Lean, Lake, or an axiom audit. No
statement is certified by this run.

An independently verified local Git bundle contains the paper repository
history through `2cfe95c` and has SHA-256
`acd0bfc46afa5a9ee930e009da88613f519d3f9659717d7c0a95c816ae7fae52`.
The offline transfer and dependency acquisition are separate subsequent work,
not a successful retry of this failed execution.

Remaining to-do list: supply exact source and pinned Linux toolchain and
mathlib dependencies through an accessible route, execute on GCP, retain a
new immutable run receipt, and continue the complete theorem formalization.
