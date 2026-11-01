# GCP authentication blocker: 2026-11-01 UTC — RESOLVED

**Status: resolved the same day.** Re-authentication was restored; the pinned
runner was executed and the receipt
[`gcp-manuscript-correspondence-repair-20261101`](../evidence/gcp-manuscript-correspondence-repair-20261101/README.md)
now exists (exit 0, no `sorryAx`, standard axioms only). The text below is the
preserved record of the blocker.

No Lean invocation occurred while blocked. No receipt existed for the
correspondence-repair source at that time.

## Command and exact failure

```text
PS> gcloud compute instances list --project quantyra-lean-cert-20260915 \
      --format="value(name,status,networkInterfaces[0].accessConfigs[0].natIP)"
ERROR: (gcloud.compute.instances.list) There was a problem refreshing your
current auth tokens:
Reauthentication failed. cannot prompt during non-interactive execution.
Please run:
  $ gcloud auth login
to obtain new credentials.
```

The same failure occurs for `gcloud auth print-access-token`, so the stored
refresh credential for `dfredriksen@quantyra.org` is no longer valid. The
configured project (`quantyra-lean-cert-20260915`) and account are unchanged;
no service-account key exists in the workspace and no application-default
credential file is present. Per the Space protocol, no local Lean build may be
used as a substitute, so the exact-source check cannot be run from here.

## What is prepared and waiting

* Source: `lean/ManuscriptFormal.lean`, LF, 700 lines, SHA-256
  `adda05e3cc8eeee93300ff716f6f559eb153a098b2ed11aa8b280c51f22d9538`
  (recompute after any further edit).
* Runner: `lean/cloud-manuscript-correspondence-repair-20261101.sh`, pinned to
  that hash, the retained Mathlib `c5ea00351c28e24afc9f0f84379aa41082b1188f`
  and Lean 4.30.0 / commit `d024af099ca4bf2c86f649261ebf59565dc8c622`.
* Intended receipt directory: `evidence/gcp-manuscript-correspondence-repair-20261101/`.

## The one manual step required

An operator signed in as `dfredriksen@quantyra.org` must run, in an interactive
terminal on this workstation:

```powershell
gcloud auth login
```

(Optionally followed by `gcloud config set project quantyra-lean-cert-20260915`.)
After that, the run is mechanical: copy `lean/ManuscriptFormal.lean` to
`~/ManuscriptFormal.lean` on `quantyra-lean-builder-01`, execute the runner,
and retain `run.log`, `exit-code`, `lean-source-sha256.txt`, `olean-sha256.txt`,
`lean-version.txt` and `lean-path.txt` in the receipt directory.

Until that run completes, the repaired declarations are *source-level only*.
The two correspondence repairs are documented in
`manuscript/lean-certification-ledger.md` §3 and must not be cited as
certified.

Remaining to-do list: re-authenticate; run
`cloud-manuscript-correspondence-repair-20261101.sh` on the GCP builder; retain
the receipt; update the ledger's pending markers and
`manuscript/DRAFT.md`'s two "pending" notes.
