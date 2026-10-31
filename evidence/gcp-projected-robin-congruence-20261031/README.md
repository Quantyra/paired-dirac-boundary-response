# GCP Lean receipt: projected Robin coefficient transport

Date: 2026-10-31 HST  
Source: [`lean/ProjectedRobinCongruence.lean`](../../lean/ProjectedRobinCongruence.lean)  
Source SHA-256: `C1C0A73D9CEEC075F635C5FA495C924EC557D3C0D55179E48928B0B00DA683CB`

The exact source passed `lake env lean` on GCP with exit code 0. Lean 4.30.0
reported `[propext, Classical.choice, Quot.sound]` for both declarations; no
`sorryAx` was reported. The captured output, accepted source copy, exit code,
and completion timestamp are in
[`paper1-projected-robin-congruence-20261031/`](paper1-projected-robin-congruence-20261031/).
The exact GCP runner is [`run-gcp.sh`](run-gcp.sh).

Compiler: Lean 4.30.0, commit
`d024af099ca4bf2c86f649261ebf59565dc8c622`, Release. Lake:
`5.0.0-src+d024af0`. GCP instance: `quantyra-lean-builder-01`, project
`quantyra-lean-cert-20260915`, zone `us-central1-a`. The retained source-only
Lake workspace emitted local-change warnings for all nine reused dependency
repositories. This is an exact-source elaboration replay, not a clean
dependency rebuild.

## Certified statement and limits

**Concrete claim.** The normal scalar congruence transports the projected
Robin coefficient `K/2` to `(K-b_n)/2`, assuming the product rule for the
normal derivative and a real-linear boundary projection.

**Ordinary argument.** Expand the normal derivative of `e^{-b/2} psi` by the
product rule, use `partial_n e^{-b/2}=-(b_n/2)e^{-b/2}`, and include the seed
extrinsic-curvature term `K/2`. The common scalar factor then multiplies the
P1 Robin expression. This identifies the coefficient only; it does not
derive the geometric hypotheses.

**First unsupported implication.** Establish the normal product rule,
projector/Gauss identity, actual composition-domain realization and physical
bundle map for the source geometry. The theorem does not infer these from its
linear-map assumptions.

**Numerical role.** None. The result is exact coefficient algebra, not a
numerical estimate or physical admission margin.

Given a real-linear projection `P`, a real-linear normal derivative `n`, a
scalar multiplier `e` with normal derivative `de = -(normalJet/2)e`, and the
seed extrinsic-curvature scalar `k`, Lean proves that the projected
congruenced Robin input equals `e` times the P1 Robin operator with
coefficient `(k-normalJet)/2`. At zero normal jet this coefficient is `k/2`,
matching the source convention `S=-k/2` in `(nabla_n-S)Pi_+` after the
declared normal convention is aligned.

The theorem formalizes the scalar coefficient transport only. The normal
product rule, geometric projector and intrinsic flip, Gauss decomposition,
actual composition domain, bundle identification, heat response, physical
half-trace, common-regulator limit, and prior-art applicability are not proved
by Lean here. Those remain ordinary analytic/geometric obligations.

## Attempt history

The first SCP attempt targeted `~/ProjectedRobinCongruence.lean`; the remote
file was absent, and Lean was not invoked. A malformed quoted SSH diagnostic
was rejected by gcloud argument parsing, also before Lean was invoked. The
source was then copied to the explicit absolute home path, hash-checked, and
the run completed as recorded above. No failed Lean source was accepted or
discarded.

Remaining to-do list: establish the physical projector and normal-product-rule
hypotheses, prove the full tangent response and common regulator, finish the
novelty audit, and certify the supported paper claims on GCP.
