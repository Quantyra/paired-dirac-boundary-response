# GCP check of transported congruence action

On 2026-10-30 UTC, `TransportedCongruence.lean` with SHA-256
`38179d7b58666189cd99d2f9459e9e03681d0c14cbf0d5048568c0ebe73b463a`
was checked on `quantyra-lean-builder-01`, project
`quantyra-lean-cert-20260915`, zone `us-central1-a`, using Lean 4.30.0.
The SSH command ran `lake --no-cache env lean` against the retained
`paper1-domain-offline-gitmeta-f7b70c1-20261029` source-built environment.
It exited 0 and printed:

```text
'PairedDirac.transported_congruence_action' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The remote SHA-256 matched the local source. Lake warned that all nine
dependency worktrees had local changes. The existing [environment receipt](../gcp-f7b70c1-offline-gitmeta-attempt/README.md) records that this environment failed a dependency content audit, including a mismatch in the direct LinearPMap import. The first check is therefore not acceptance evidence. Accordingly this is a
successful check in that retained environment, not a clean independent
replay or a certification of the physical paper. The theorem is an algebraic
identity for total linear maps and commuting equivalences; it does not prove
the physical unitary, unbounded operator domains, trace identities or the
curved response. The earlier clean replay at commit 6376ccc did not include
this new file.

Remaining to-do list: replay this declaration in a clean pinned environment,
formalize the required domain and physical statements, and complete the
response, novelty audit and manuscript.

## Second retained source-only environment

A second GCP check used `paper1-sourceonly-6858aa7-20261029/source/lean`
with the same Lean 4.30.0 toolchain and identical source hash. It exited 0
and printed the same three standard axioms. Lake again reported nine local
change warnings. The [earlier source-only audit](../gcp-sourceonly-6858aa7/README.md)
recorded matching tracked source files against the retained Git trees, an
empty index, and one additional ProofWidgets hash file; that audit did not
validate compiled `.lake` artifacts and was not rerun for this check. This
second check is stronger development evidence but is still not a clean
source replay or complete paper certificate.
## Fresh source-only replay in progress

Run `paper1-transport-clean-20261030c` on the same GCP builder started at
2026-10-30 14:53 UTC. The checked-in driver is
[`cloud-transported-congruence-replay.sh`](../../lean/cloud-transported-congruence-replay.sh).
It uses the retained Git bundle at commit 6376ccc, verifies the toolchain and
dependency archive hashes, reconstructs and checks all nine dependency Git
trees and clean indexes, verifies manifest revisions, builds `PairedDirac`
without Lake caches, and then checks the separately hash-pinned new source.
The source build is running; no result is claimed until its exit code, log,
source hash and axiom output have been inspected. The `/dev/shm` build tree
is ephemeral; the persistent run directory retains logs and exit status.
This replay is only for the algebraic declaration, not the complete paper.