# GCP flat integral proof: in progress

The attempted Lean proof in `lean/FlatFormFactorIntegral.lean` aims to derive the all-frequency Dirac/scalar form-factor relation from the real interval integrals and the fundamental theorem of calculus. It is a draft and is not yet a Lean-certified theorem.

Run `paper1-flat-integral-20261030a` on the designated GCP builder exited 1 before checking the proof: its reused environment lacked the compiled `FundThmCalculus` module. The failed source SHA-256 was `88f2175ec6e71de0e61be244a98b0efab42b9d4413577a462c4b1464f6cdfda2`; `attempt-a.log` SHA-256 is `95f21ff848627055803a7b134e3e69b31d501273a152d08b0d3965233781d6e5`.

The revised source SHA-256 is `11c3ee95680577c7cce24a3f78f7e1aab8f8830397f5f8c1b09e3145b365a535`. Run `paper1-flat-integral-20261030b` was confirmed live, building the required mathlib modules from source with `lake --no-cache` before running the draft. Check its actual `run.log` and `exit-code` before asserting any result. The inherited source-only environment reports dependency working-tree changes; see `evidence/gcp-sourceonly-6858aa7/README.md` for provenance limits.

Remaining to-do list: inspect the live GCP run, fix and rerun any proof errors, preserve its final receipt, and continue the physical, novelty, manuscript and full-certification work.
