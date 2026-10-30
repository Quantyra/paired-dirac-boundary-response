# Radial comparison-gap Lean check

The initial run a failed before checking the source because the Mathlib
umbrella module was unavailable. Run b was interrupted by VM shutdown and
left no exit record. The original source was checked in run c and failed on
two proof errors. After correction, run d returned exit code 0 on GCP; all
three scalar theorems report only the standard axioms listed in
`evidence/gcp-radial-mass-gap-20261030/README.md`. That directory retains
both the failed and successful logs, the exit code and the successful driver.
The Mathlib dependencies reported local changes, limiting environment
provenance. The scalar check does not establish the operator-domain, physical
geometry or heat response and is not a physical admission margin.

Remaining to-do list: establish physical boundary and response, resolve prior
art, prepare the manuscript, and certify the supported claims on GCP.