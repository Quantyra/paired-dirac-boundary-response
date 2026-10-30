# Exact-tree development build

The GCP run `paper1-domain-exact-tree-f7b70c1-20261029` exited 0 and completed 2,359 build jobs. Its two source declarations report only `propext`, `Classical.choice`, and `Quot.sound`. The driver verified reconstructed dependency archives against their Git trees before building. Raw log SHA-256: `c2fd19e07ab677ab6382656b3c4ff21c2294ad7d758f263bde9d245e26e76138`.

The driver did not disable Lake's binary-cache fetch. Thus this is a development build, not a clean source-only acceptance result. It checks only the original domain declarations at source commit `f7b70c1`; it does not certify the paper or the later draft lemmas. The separate source-only driver uses `lake --no-cache`.

Remaining to-do list: complete and inspect the source-only build, establish the physical domain hypotheses, and finish the paper's remaining proofs and certification.
