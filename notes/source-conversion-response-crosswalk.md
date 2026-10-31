# Source conversion identity and the P1-C bridge

Status: source-level response crosswalk. It narrows the open bridge in the
working audit; it is not an independent verification, frame-identification
proof, Lean certificate, or novelty decision.

## Audit contract

**Claim under audit.** At the actual seed, the source-defined geometric and
variable-mass determinant endpoints have the same-regulator first and mixed
second response difference specified by the source's complete formulas,
with the full massive angular tower, separate chiral LLL, physical-half
trace and contact accounted for exactly once.

**Ordinary argument.** Differentiate the common positive-cutoff path of
closed paired operators, use partner grading and cyclic heat identities,
then prove the smeared geometric and insertion heat expansions with their
rough-collar remainders before removing the common cutoff and restoring the
angular/thermal sums. The source records each step; P1 has not yet
independently rederived or audited every hypothesis.

**First unsupported implication for P1.** Independently match the source's
geometric endpoint, regulator subtraction and rough heat-expansion
hypotheses to P1's product-frame observable and declared cubic/log fields,
including the separate angular zero-mode/anomaly block. The source's
variable-mass endpoint is an auxiliary representation, not the P1
product-frame operator.

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
partner grading, regular bolt, time-reduced physical-half trace, full massive
angular tower and fixed thermal period retained, the source gives the exact
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
restores all thermal images and the massive angular tower, and removes the
common regulator for these first two seed jets. The massless chiral LLL is a
separate block, not part of the positive-mass path. It records the resulting
local formulas (8)-(9), no logarithmic divergence in this difference, and equality
of the common Mellin/zeta finite part with the cutoff finite part. Thus the
source is stronger than a positive-time identity alone: conditional on its
stated rough heat-bridge hypotheses, it supplies a common-regulator
geometric-versus-variable-mass response conversion at the actual seed.

## Exact operator endpoint crosswalk

For a nonzero angular mode with mass `M_n`, let `E=exp(-b/2)` and use the
fixed-Hilbert product-frame orbit realization `D_b=E D E` from the pinned
rough-variation source. The variable-contact path has

```text
A_1(b) = E [D + M_n exp(b)] E
       = E D E + M_n
       = D_b + M_n.
```

The middle equality uses that `M_n` is a scalar on the orbit factor and
`E exp(b) E=1`. On the stipulated skew/partner realization,
`A_1^* A_1 = -D_b^2 + M_n^2` on the composition domain. This is exactly the
positive square of the product-frame separated Dirac block in
`stationary-exterior-conformal-domain.md`, Eq. (11), once the common orbit
domain and angular multiplicity are identified. Thus the **geometric** source
endpoint `Gamma_g` is the P1 product-frame observable mode by mode, under
those domain and bundle hypotheses.

By contrast,

```text
A_0(b) = D + M_n exp(b)
```

is the auxiliary variable-mass endpoint. It is not the product-frame
operator at nonzero `b`. The source's `J_e=Gamma_g,e-Gamma_m,e` identity
computes the conversion from the geometric P1 endpoint to this auxiliary
representation. The canonical Lorentzian `H_mu^2` operator remains a third,
separate comparison.

The `M=0` chiral angular modes are not included in the positive-mass
inverse/gap argument for `A_r`; the source's `H_0=-q-1/3` coefficient is
consistent with its separate `q`-mode block. Keep that LLL block separate as
required by the source normalization audit and match its Weyl/anomaly
contribution independently. The source's massive-theta coefficient
bookkeeping must not be read as permission to double-count or silently omit
this block.

## What this does and does not close for P1

This evidence corrects the broad wording in earlier P1 notes that the
source's nonlocal observable/common-regulator response identity is wholly
missing. The operator algebra above identifies its massive geometric
endpoint with P1's separated product-frame square under the stated domain
identification. The source supplies the first-two-seed-jet difference
between that endpoint and its auxiliary variable-mass representation. The
response conversion is not just the endpoint local Weyl/anomaly boundary
term; it also includes the bulk finite part and the explicit `2 Theta' I_e`
contact.

The remaining audit is to check the source theorem's hypotheses and
renormalization convention against P1's actual declared field class and
observable, independently account for the `q` chiral zero modes, and verify
the external action normalization. The P1 product-frame comparison records

```text
Lhat_4 = Lhat_2 tensor 1 + 1 tensor D_(S,q)^2/b^2
```

with a common orbit domain; the source's `P_1` identity is modewise over the
massive tower, with the angular factor restored after the orbit calculation.
The fixed-background
product separation alone is not enough: the modewise operator algebra,
composition domains, determinant-modulus convention, zero-mode treatment,
and measure/normalization must all be checked for the varied family. The
source's established finite-cut path provides the candidate common-regulator
conversion once those hypotheses match. Conversely, the congruence between
physical and product-frame Dirac expressions does not disprove this
action-level conversion.

The canonical Lorentzian `H_mu^2` contact remains a separate operator
comparison. It cannot be substituted for the Euclidean orbit contact
`I_e` or multiplied by `Theta'` without a new derivation.

## Revised first missing implication and verification work

1. Write the nonzero-mode endpoint identification as an actual operator and
   composition-domain proof, and match the fixed-seed field parameter.
2. Audit the source's rough heat-bridge estimates and common-regulator
   subtraction against P1's exact cubic/log class; account separately for
   the `q` chiral zero modes and Weyl/anomaly block.
3. Carry the geometric endpoint conversion through the complete P1-C mixed
   response, retaining `2 Theta' I_e`, local subtractions and the declared
   physical-half and external action normalizations.
4. The bounded scalar operator-action identity is now checked on GCP; see
   [`SourceEndpointAlgebra.lean`](../lean/SourceEndpointAlgebra.lean) and its
   [receipt](../evidence/gcp-source-endpoint-algebra-20261030/README.md).
   Formalize the paired composition-domain step and finite-cut jet identities
   after their analytic hypotheses are frozen. The existing raw-integral
   replay certifies only a separate form-factor integral identity.

The source notes are imported evidence, not yet an independently checked P1
theorem. No physical action, wormhole existence or stability conclusion is
asserted here.

Remaining to-do list: prove the endpoint identification and hypothesis match;
finish the P1-C and novelty audits; formalize the supported claim on GCP; then
complete the manuscript at the proved scope.
