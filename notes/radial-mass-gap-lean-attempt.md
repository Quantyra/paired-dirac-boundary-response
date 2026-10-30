# Radial comparison-gap Lean attempt: outcome pending

The draft `lean/RadialMassGapDraft.lean` aims to check the scalar
completion-of-square and high-mode inequalities used in
`variable-radial-removed-collar-square.md`. It is not a verified theorem or
a physical admission margin. Source SHA-256:
`978850c664a78d74091456e57bfe866d6dcc81e789c7b51d4f30e469591ae852`.

GCP run `paper1-radial-mass-gap-20261030a` failed before checking the source:
the umbrella `Mathlib.olean` was unavailable in the retained environment.
The source was changed to specific available modules. Retry
`paper1-radial-mass-gap-20261030b` began on `quantyra-lean-builder-01`, but
the SSH connection closed before Lean returned a result. A subsequent SSH
attempt could not read its exit record. The guest serial console showed a
shutdown-script stop job running; an instance status of RUNNING did not
establish that Lean was still executing. The remote log and exit status have
not been recovered, so the retry is neither recorded as success nor assumed
to have failed. The driver is retained at `lean/cloud-radial-mass-gap.sh`.

After the builder is accessible, inspect the same run's exit code and full
log before deciding whether a new attempt is needed. Preserve other builder
work. The usual source-only environment provenance caveats apply if it
succeeds; an axiom report and source hash must also be checked. This scalar
algebra would not establish the operator-domain, physical geometry or heat
response even if Lean accepts it.

Remaining to-do list: recover the GCP run outcome; establish physical
boundary and response, resolve prior art, prepare the manuscript, and
certify the supported claims on GCP.