# GCP check: scalar geometric-endpoint algebra

Run date: 2026-10-31 UTC / 2026-10-30 HST. The checked source is
`lean/SourceEndpointAlgebra.lean` at Paper 1 repository commit `2fb4557`;
SHA-256 `2cb89f06ecb3d6cf8963a4a1d35e1054e5d61ab30fd12a020762ebd45b29c772`.

Run `paper1-source-endpoint-algebra-20261030c` exited 0 on
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`, using Lean 4.30.0 (`d024af099ca4bf2c86f649261ebf59565dc8c622`).
The checked theorem is `source_geometric_endpoint_action`. Its axiom report is
`[propext, Classical.choice, Quot.sound]`; no `sorryAx` was reported. The run
has no proof/linter diagnostic after the dependency warnings.

The theorem proves the scalar action identity

```text
E • (D (E • x) + (m exp b) • (E • x))
  = E • D (E • x) + m • x,
E = exp(-b/2),
```

for an arbitrary real-linear map on a real module. This certifies the bounded
scalar algebra behind `E(D + M exp(b))E = EDE + M`. It does **not** define or
certify an unbounded Dirac operator, its paired/composition domains, the
angular Clifford block, square equality, trace identity, heat expansion,
common-regulator limit, or physical zero-mode contribution.

The run reused the retained source-only environment from
`paper1-sourceonly-6858aa7-20261029`, with the Lean 4.30.0 toolchain extracted
by the earlier exact-tree workflow. Lake reported local-change warnings for
the nine dependency repositories. This was a targeted `lake --no-cache env`
check, not a dependency rebuild or exact-tree acceptance replay. The builder
had about 2.1 GB free on its 193 GB root disk and the check wrote its small
run receipt under the existing task-owned GCP run directory. No cleanup or
dependency rebuild was requested.

## Attempts and retained logs

- `paper1-source-endpoint-algebra-20261030a` exited 1: the proof left the
  scalar goal `Real.exp 0 = 1` after the algebra tactic. Its source hash was
  `c582ab293de55232e5d119c78429ca2196a458226a620b4c83e8b9f3679f7994`.
- `paper1-source-endpoint-algebra-20261030b` exited 0 after adding `simp`,
  but emitted a redundant-tactic warning; it did not print axioms. Its source
  hash was `4b37588bf5d3572341a681f97fe90cfe37a0ecc773c09f98a75dabad450b20f2`.
- `paper1-source-endpoint-algebra-20261030c` is the final clean proof replay
  with the axiom report and source hash above.
- An earlier exploratory invocation imported umbrella `Mathlib` and stopped
  before elaboration because `Mathlib.olean` was absent. That invocation
  preceded these logged attempts and is not represented as a retained raw log.

The raw logs, exit codes and completion time for attempts a-c are in the
adjacent run directories. Their transfer archive SHA-256 is
`b421a00f33d3debafee13ce2767d9478f965e0bdc1c1b498768a8f85ccd0876a`.
The source hash in the final run was checked against the local committed file.

Remaining to-do list: prove the actual paired composition-domain endpoint;
match the source heat hypotheses and subtraction to the P1 cubic/log fields;
account separately for the chiral zero modes/anomaly; finish the prior-art
decision and manuscript; certify every supported theorem on GCP.
