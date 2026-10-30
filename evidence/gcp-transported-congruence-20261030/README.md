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
dependency worktrees had local changes; their current contents were not
independently reconstructed or audited in this run. Accordingly this is a
successful check in that retained environment, not a clean independent
replay or a certification of the physical paper. The theorem is an algebraic
identity for total linear maps and commuting equivalences; it does not prove
the physical unitary, unbounded operator domains, trace identities or the
curved response. The earlier clean replay at commit 6376ccc did not include
this new file.

Remaining to-do list: replay this declaration in a clean pinned environment,
formalize the required domain and physical statements, and complete the
response, novelty audit and manuscript.
