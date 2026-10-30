# Boundary-kernel Lean draft: GCP transfer attempt

The source at paper repository commit 9e10556 formalizes an algebraic
boundary-kernel equivalence conditional on trace extension. It is a draft:
no Lean invocation or certification occurred in this attempt. The geometric
trace, normal coefficient and extension hypotheses are not formalized.

On 2026-10-29 the GCP instance quantyra-lean-builder-01 in us-central1-a,
project quantyra-lean-cert-20260915, reported RUNNING. Two gcloud compute scp
attempts to transfer a Git bundle, including one explicitly using IAP,
failed with exit code 1 and "Remote side unexpectedly closed network
connection". The bundle SHA-256 was
66b702b3a47cd13840187117794b9267e091b7cc33ca788f2e31fdda9f8d9d69.
No remote Lean result is inferred from VM status or an incomplete transfer.

Remaining to-do list: restore GCP transfer, check the exact draft source and
its axioms there, correct any failures, and connect the abstract hypotheses
to the geometric boundary-domain theorem.
