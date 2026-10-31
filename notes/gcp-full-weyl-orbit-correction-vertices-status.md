# GCP status: full-Weyl correction vertex formalization draft

Date: 2026-10-31 HST. This records a formalization attempt, not a Lean certificate.

## Current source

`lean/FullWeylOrbitCorrectionVerticesDraft.lean` currently has SHA-256 `E7AF6A2B3FD32B7903C10D4E4A07345261185167369D2953F6E70B42593E37D0`. The GCP host currently has the immediately preceding source hash `8B6180B22B638EB97424B74257C3982D8F88F0DC0C89417B6B19EAAAC1DA170B`; it must be recopied after GCP authentication is restored. It proposes an abstract-ring proof of the mixed commutator coefficient under explicit product-rule and scalar-commutation hypotheses, plus polynomial checks of the angular-mass coefficients. It does not encode parameter differentiability, represented operators/domains, heat traces, curved estimates or the physical response.

The current source was copied to the GCP host, but its Lean invocation did not begin: `gcloud compute ssh` failed during credential refresh with â€œReauthentication failed. cannot prompt during non-interactive execution.â€ Do not cite it as compiled or certified. The pending user action is to reauthenticate the configured account with `gcloud auth login`, after which the exact source should be replayed on the approved GCP builder.

## Preserved earlier attempts

- GCP run directory `~/quantyra-space-runs/p1-full-weyl-orbit-correction-vertices-20261031a` contains the first attempt (source hash `5BD2EFED8D0368BD386353637F3A4E85C6CF9F46BEA0B852BF500FA7E188E502`), which failed because PowerShell's UTF-8 output included a BOM.
- Run directory `~/quantyra-space-runs/p1-full-weyl-orbit-correction-vertices-20261031b` contains the no-BOM revision (source hash `6FC163BAAD8BA193568C8FD835F330DCF85546540BC825123058571DD214DAC9`), which failed Lean elaboration/proof. It predates the current commutator hypotheses and proof attempt.
- Run `...20261031c` contains another earlier source revision and failed proof; the current source hash was transferred afterward, but the run command was rejected by expired GCP credentials before a new run directory could be created.

The raw logs for runs a, b and c remain on the GCP host and should be copied into the final evidence receipt after access is restored. Earlier failed sources are not the current source and their failures do not settle whether the revised declaration compiles.

## Builder/workspace state

The builder was observed `RUNNING`. The subsequent stop command failed for the same expired-credential reason, so its current state must be rechecked after authentication is restored and the VM stopped after the replay.

A preceding `lake env` attempt in `paper1-sourceonly-6858aa7-20261029/source/lean` triggered a dependency URL refresh and deleted that workspace's Mathlib checkout. No Lean result came from that invocation. I restored the checkout from the retained exact-tree archive SHA-256 `e02f9079352fa741592aa8d9fe5c6116064d95c0c7bed87b4f1e94bbf4e603e3` and the retained Git metadata. The restored checkout reports commit `c5ea00351c28e24afc9f0f84379aa41082b1188f` and tree `1fe688f4d9e84fb268a300f8ac33cbca883fbd28`; its source was restored after that failed Lake attempt. The generated untracked manifest was removed. Use the separate pinned `paper1-domain-exact-tree-f7b70c1-20261029` workspace for a direct Lean invocation with its matching Lean 4.30.0 toolchain and prebuilt imports; avoid `lake env` in the source-only workspace.

Remaining to-do list: reauthenticate GCP; replay the current exact hash and preserve the raw log/exit code/axiom output; then continue the P1 analytic bridge and novelty audit.