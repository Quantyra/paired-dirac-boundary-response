# Square-domain characterization: successful development check

GCP run `paper1-square-olddeps-a1c2d51-20261029` exited 0 for source `a1c2d51e48ef51be6f528e983fec70acbbe9f991`. Both `mem_squareDomain_draft` and `congruence_squareDomain_draft` report only `propext`, `Classical.choice`, and `Quot.sound`. Raw log SHA-256: `164a1dfd448a7653b5e9c132b9d108965425db05e56daa04544f27356b243986`.

The definition encodes the natural product domain through the adjoint; the congruence statement uses the previously checked abstract adjoint equality. This development check used the earlier CRLF-equivalent dependencies. It does not establish a fixed square domain, physical trace assumptions, clean acceptance, or certification of the full paper. The running source-only snapshot predates this draft.

Remaining to-do list: include this draft in a clean exact-source check, establish the physical hypotheses, and finish the remaining paper proofs and certification.
