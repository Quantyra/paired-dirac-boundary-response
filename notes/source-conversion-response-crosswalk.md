# Source conversion identity and the P1-C bridge

Status: source-level response crosswalk. It narrows the open bridge in the
working audit; it is not an independent verification, frame-identification
proof, Lean certificate, or novelty decision.

## Audit contract

**Claim under audit.** At the actual seed, the source-defined geometric and
variable-mass determinant endpoints have the same-regulator first and mixed
second response difference specified by the source's complete formulas,
with the full angular tower, physical-half trace and separate contact.

**Ordinary argument.** Differentiate the common positive-cutoff path of
closed paired operators, use partner grading and cyclic heat identities,
then prove the smeared geometric and insertion heat expansions with their
rough-collar remainders before removing the common cutoff and restoring the
angular/thermal sums. The source records each step; P1 has not yet
independently rederived or audited every hypothesis.

**First unsupported implication for P1.** Identify the source's variable-mass
endpoint, path parameter, actual domains and determinant convention with the
P1 product-frame observable for the declared varied fields. The displayed
source identity alone does not establish that identification.

**Numerical role.** Numerical checks can audit explicit constants or
truncation bounds after the analytic endpoint map is proved. They cannot
establish operator-domain equality, determinant identification, or the
common-regulator limit; no numerical evidence closes this bridge.

## What the frozen source already establishes

At the pinned baseline `f0eab59063422c80ccc7c8e281170c75cc3afc71`,
[`current-variable-contact-conversion.md`](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md)
defines the path

```text
A_r(b) = exp(-r b/2) [D + M exp(b)] exp(-r b/2),
P_r = A_r* A_r,  Pbar_r = A_r A_r*,  0 <= r <= 1.
```

Its endpoints are explicitly called the variable-mass square (`P_0`) and
the geometric square (`P_1=-D_b^2+M^2`). With the original paired domains,
partner grading, regular bolt, time-reduced physical-half trace, full angular
tower and fixed thermal period retained, the source gives the exact
positive-cutoff identity

```text
J_e = Gamma_g,e - Gamma_m,e
    = sum_n d_n integral_0^1 Tr_bar[b exp(-e P_r(b))] dr.
```

It differentiates this identity before removing the cutoff. At the seed,

```text
J'_e[u]  = Theta(e) T_e(u),
J''_e[u,v]= Theta(e)/2 [D_v T_e(u) + D_u T_e(v)]
           + 2 Theta'(e) I_e(u,v).
```

The last term is a separate contact and must be retained. The source then
derives the smeared heat expansions and their rough-collar remainders,
restores all thermal images and angular modes, and removes the common
regulator for these first two seed jets. It records the resulting local
formulas (8)-(9), no logarithmic divergence in this difference, and equality
of the common Mellin/zeta finite part with the cutoff finite part. Thus the
source is stronger than a positive-time identity alone: conditional on its
stated rough heat-bridge hypotheses, it supplies a common-regulator
geometric-versus-variable-mass response conversion at the actual seed.

## What this does and does not close for P1

This evidence corrects the broad wording in earlier P1 notes that the
source's nonlocal observable/common-regulator response identity is wholly
missing. The source supplies that identity for its own `Gamma_g` and
`Gamma_m` endpoints and their first two seed jets. The response conversion
is not just the endpoint local Weyl/anomaly boundary term; it also includes
the bulk finite part and the explicit `2 Theta' I_e` contact.

The remaining task is endpoint identification. The P1 product-frame
comparison records

```text
Lhat_4 = Lhat_2 tensor 1 + 1 tensor D_(S,q)^2/b^2
```

with a common orbit domain, while the source conversion uses angular masses
and an orbit trace before multiplication by `Theta`. The paper must derive,
from the actual transformed Dirac expression and its paired domains, that
the source's `P_0` variable-mass endpoint is precisely the P1 product-frame
orbit realization for the declared varied fields, including Hilbert-space
identification, transformed boundary/bolt domains, insertions, determinant
phase convention, density, and normalization. The exact product separation
at the fixed background does not by itself prove this identity for the
variation path. Conversely, the congruence between physical and product-frame
Dirac expressions does not disprove such an action-level conversion.

The canonical Lorentzian `H_mu^2` contact remains a separate operator
comparison. It cannot be substituted for the Euclidean orbit contact
`I_e` or multiplied by `Theta'` without a new derivation.

## Revised first missing implication and verification work

1. Match the source path endpoints and its field parameter to the precise P1
   physical and product-frame determinants on the same finite-cut domains.
2. Check the source's all-mode common-regulator hypotheses against the P1
   admissible rough class and verify the finite-cut-to-physical-endpoint
   identification; do not re-prove the source's local conversion as though
   no result existed.
3. Carry the exact endpoint map through the complete P1-C mixed response,
   retaining `2 Theta' I_e`, all local subtractions and the declared
   physical-half normalization.
4. Formalize the algebraic cutoff identity and jet assembly only after the
   endpoint hypotheses are frozen. The existing GCP raw integral replay
   proves only its form-factor integral identity, not this source conversion.

The source notes are imported evidence, not yet an independently checked P1
theorem. No physical action, wormhole existence or stability conclusion is
asserted here.

Remaining to-do list: prove the endpoint identification and hypothesis match;
finish the P1-C and novelty audits; formalize the supported claim on GCP; then
complete the manuscript at the proved scope.
