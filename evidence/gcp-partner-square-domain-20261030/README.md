# GCP partner square-domain check

Run `paper1-partner-square-domain-20261030a` exited 0 on
`quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone
`us-central1-a`, using Lean 4.30.0. It checks
`PairedDirac.mem_positive_square_domain_partner`: if the adjoint domain is
characterized by membership of J y in the original domain, then membership
in the actual positive-square composition domain is equivalent to x being
in the first-order domain and J(D x) also being in that domain. This is the
domain step used in `notes/paired-square-resolvent.md`.

The checked source SHA-256 is
`b115b787c1fb4a220535855cb3c343a539d57c3ef0b629398eb75a932a3f3487`;
the retrieved log SHA-256 is
`ba8aef30f1927bfb53ffda40d6e21e54b472e75196a726fef777b62ceb9796e3`.
The log reports `propext`, `Classical.choice`, and `Quot.sound`, and no
`sorryAx`. The run used the existing GCP source-only environment and imported
previously built `.olean` prerequisites, whose hashes are in the log. Lake
reports local dependency changes; the run inherits the provenance limitations
in `evidence/gcp-sourceonly-6858aa7/README.md` and is not an exact-tree
independent acceptance build.

The theorem assumes the adjoint-domain characterization. It does not prove
the physical partner identity, the action equality L=-Q^2, skew-adjointness,
the resolvent formula, physical geometry, heat response, or the full paper.

Remaining to-do list: formalize and verify the remaining supported theorem
package on GCP, establish physical hypotheses and response, resolve novelty,
and prepare the manuscript.