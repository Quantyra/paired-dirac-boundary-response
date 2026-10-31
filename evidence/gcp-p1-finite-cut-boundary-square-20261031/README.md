# Integrated finite-cut boundary-square Lean receipt

Date: 2026-10-31 HST  
GCP instance: `quantyra-lean-builder-01`  
Project / zone: `quantyra-lean-cert-20260915` / `us-central1-a`  
Technical source commit at start: `de40a98`

The exact [`P1FiniteCutBoundarySquare.lean`](P1FiniteCutBoundarySquare.lean)
source passed on GCP with exit code `0`. Lean reported
`[propext, Classical.choice, Quot.sound]` and no `sorryAx`. Captured compiler
output, exit code, and completion time are retained in [`success.log`](success.log),
[`exit-code`](exit-code), and [`finished-utc`](finished-utc). The runner is
[`run-gcp.sh`](run-gcp.sh), SHA-256
`0EFD12680FFC8C989A17517F2373D6D2C3AC36A2248E5E4C062389DDCE672A67`.

## Certified statement

Given predicates `V`, `Vstar`, maps `E`, `T`, and the assumptions

```text
(forall x, V (E x) <-> V x)
(forall x, Vstar (E (E x)) <-> Vstar x)
```

the theorem proves that the composition-domain predicate for `E T E` is
equivalent to `V x and Vstar (T (E x))`. In the same proposition, given a
real-linear projection `P`, normal derivative `n`, scalars `e`, `de`, `k`,
and `normalJet`, and the assumed product rule
`de = -(normalJet / 2) * e`, it proves that the projected congruenced Robin
input is `e` times the P1 Robin expression with coefficient
`(k-normalJet)/2`.

This combines the set-theoretic domain reduction from
[`FiniteCutCongruenceDomain.lean`](FiniteCutCongruenceDomain.lean) and the
Robin transport from
[`ProjectedRobinCongruence.lean`](ProjectedRobinCongruence.lean). The proof
uses those results under their stated assumptions; it does not derive the
assumptions from the RN geometry.

## Scope and remaining implication

The result certifies finite-cut composition-domain algebra and projected
Robin coefficient algebra only. It does not prove preservation of the actual
Sobolev projector domains, the scalar normal product rule, projector/Gauss
identities, the physical bundle map, heat-trace response, physical-half
normalization, LLL transfer, common-regulator convergence, or novelty. The
first unsupported implication remains the physical realization of these
finite-cut hypotheses and its transfer to the complete source observable.
Numerical role: none.

## Runtime and provenance

Lean: `4.30.0`, commit `d024af099ca4bf2c86f649261ebf59565dc8c622`, Release.  
Lake: `5.0.0-src+d024af0`.  
Base Lake workspace commit: `6858aa7dd45f717f8302f4ae6bfa3a7926fe68b5`.

The source-only run reused nine dependency repositories; Lake reported local
changes in those repositories. This is an exact-source replay, not a clean
dependency rebuild. The input source hashes are:

| Source | SHA-256 |
| --- | --- |
| `P1FiniteCutBoundarySquare.lean` | `C8DA78B6145838C4CD238636C5D2E921FE9D826537571F2C87B81AE4ED763C7A` |
| `FiniteCutCongruenceDomain.lean` | `F027BAE8861A86CDF2BE95AD7C938553CC59608EC52C049262847209AD48204F` |
| `ProjectedRobinCongruence.lean` | `C1C0A73D9CEEC075F635C5FA495C924EC557D3C0D55179E48928B0B00DA683CB` |

The first GCP setup attempt failed before theorem elaboration because Lean
rejected an input path outside the Lake root; its log and exit code are kept
as [`setup-attempt1.log`](setup-attempt1.log) and
[`setup-attempt1-exit-code`](setup-attempt1-exit-code). The corrected replay
placed temporary byte-identical copies inside the pinned workspace and
removed them through the runner trap. The retained failed attempt is not a
Lean theorem failure.

Remaining to-do list: verify the geometric and domain hypotheses, prove the
physical/source response bridge and common regulator, complete the prior-art
decision, and certify the final supported paper claims on GCP.
