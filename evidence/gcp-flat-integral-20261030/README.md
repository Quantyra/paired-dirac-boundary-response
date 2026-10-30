# GCP flat form-factor integral check

Run `paper1-flat-integral-20261030c` exited 0 on `quantyra-lean-builder-01`, project `quantyra-lean-cert-20260915`, zone `us-central1-a`, with Lean 4.30.0. The theorem `flat_form_factor_relation` depends on `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx` appears. The log includes linter warnings about unused simp arguments and tactic sequencing, not proof failures.

The checked file defines A and B as real interval integrals of exp(-alpha(1-alpha)x) and alpha(1-alpha) times that exponential, respectively, and F=(1+A+xB)/2. For every real x, Lean proves F=1/4+(6+x)A/8 using the fundamental theorem of calculus and algebra. This checks the integral identity itself, not the derivation of the Dirac physical heat multiplier, physical folding or normalization, curved response, novelty or the full paper.

SHA-256:

- checked source: `0bda3ceb94db5f69ef4a8ec878974905a4552c0646a70a3aa4605881c5e0b22b`
- `success.log`: `cdabd82fd36c89bcd4b3d1501cecf321aea8694142a6aaabb50775aacae32ee3`
- `attempt-b.log`: `f91382dc9a257bb4df9356820922f9963e3673df2047c4306ea33252252ccbd6`
- `attempt-a.log`: `95f21ff848627055803a7b134e3e69b31d501273a152d08b0d3965233781d6e5`

Attempt a failed before checking the proof because the reused environment lacked the compiled integration module. Attempt b built the required dependencies with `lake --no-cache` (2621 jobs) but failed on derivative simplification and interval-integrability elaboration; its source SHA-256 was `11c3ee95680577c7cce24a3f78f7e1aab8f8830397f5f8c1b09e3145b365a535`. The successful attempt c reused that build and corrected the proof. Its source was transferred by SCP and checked by hash. Lake reported dependency working-tree changes, and the run is not an independent exact-tree acceptance; see `evidence/gcp-sourceonly-6858aa7/README.md` for inherited provenance limitations.

Remaining to-do list: verify the physical realization, response and regulator; resolve novelty; finish the manuscript; and certify the complete supported claims on GCP.
