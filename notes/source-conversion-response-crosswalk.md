# Source conversion identity and its orbit-only scope

Status: source-level response crosswalk. It narrows the open bridge in the
working audit; it is not an independent verification, frame-identification
proof, Lean certificate, or novelty decision.

## Audit contract

**Claim under audit.** At the actual seed, the source-defined geometric and
variable-mass determinant endpoints have the same-regulator first and mixed
second response difference for the source's orbit-only family, with each
massive angular mode fixed, the separate chiral LLL excluded, and the
physical-half trace and contact retained.

**Ordinary argument.** Differentiate the common positive-cutoff path of
closed paired operators, use partner grading and cyclic heat identities,
then prove the smeared geometric and insertion heat expansions with their
rough-collar remainders before removing the common cutoff and restoring the
angular/thermal sums. The source records each step; P1 has not yet
independently rederived or audited every hypothesis.

**First unsupported implication for P1.** Transfer the source's orbit-only
conversion to P1's full four-dimensional Weyl family. P1 varies the angular
term as well as the orbit operator and produces additional mode-dependent
square vertices. The complete flat full-Weyl mode multiplier, its positive-
time angular sum, and its angular-weighted all-frequency local subtraction
are now derived in [`flat-tangent-angular-mode.md`](flat-tangent-angular-mode.md),
[`flat-tangent-angular-sum.md`](flat-tangent-angular-sum.md), and
[`full-weyl-angular-local-subtraction.md`](full-weyl-angular-local-subtraction.md).
These are fixed-product tangent calculations, not the physical mixed
response: the rough curved remainders, density/contact transfer, common
subtraction, and physical domains have not been bounded. The chiral LLL also
needs its separate response/anomaly accounting.

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
`E exp(b) E=1`. Under the orbit chirality and paired-domain hypotheses,
`A_1^* A_1 = -D_b^2 + M_n^2` on the composition domain. This is the
positive square for the **orbit-only fixed-angular mode family** in
`product-sphere-mixed-response.md`, Eq. (3), once the common orbit domain and
angular multiplicity are identified.

By contrast,

```text
A_0(b) = D + M_n exp(b)
```

is the auxiliary variable-mass endpoint. The source's
`J_e=Gamma_g,e-Gamma_m,e` identity computes the conversion for its
orbit-only fixed-angular family. It does not convert P1's full four-dimensional
Weyl family without additional terms. The canonical Lorentzian `H_mu^2`
operator remains a third, separate comparison.

For P1's full Weyl congruence let `m=exp(-b/2)`. The angular mode is instead
`P_(mu,m)=m(D+i mu G)m=D_m+i mu m^2 G`. Its actual positive square has, under
the stated multiplier and paired-domain hypotheses,

```text
D_m* D_m + mu^2 m^4 + i mu G [D_m,m^2].
```

These angular-mass and commutator terms are absent from the fixed-angular
orbit endpoint. `full-weyl-angular-mode-correction.md` derives this operator
difference. The new [GCP scalar endpoint check](../evidence/gcp-source-endpoint-algebra-20261030/README.md)
and the prior [GCP mode real-mass bridge](../evidence/gcp-mode-real-mass-20261030/README.md)
certify conditional orbit-only algebra and its positive square; neither
certifies the full-Weyl correction or response.

The `M=0` chiral angular modes are not included in the positive-mass
inverse/gap argument for `A_r`; the source's `H_0=-q-1/3` coefficient is
consistent with its separate `q`-mode block. Keep that LLL block separate as
required by the source normalization audit and match its Weyl/anomaly
contribution independently. The source's massive-theta coefficient
bookkeeping must not be read as permission to double-count or silently omit
this block.

## What this does and does not close for P1

The source supplies a common-regulator first-two-seed-jet conversion for its
own orbit-only geometric and auxiliary variable-mass endpoints. Its response
conversion includes the bulk finite part and the explicit `2 Theta' I_e`
contact, not only the local Weyl/anomaly boundary term. This is relevant
supporting analysis for P1 but does not close the full P1-C response.

The P1 product-frame comparison records

```text
Lhat_4 = Lhat_2 tensor 1 + 1 tensor D_(S,q)^2/b^2
```

with a common orbit domain at the fixed background. But P1 varies the full
four-dimensional operator by congruence, whereas the source path varies the
orbit operator with fixed angular mass. The missing implication is a complete
mode-by-mode transfer including the displayed `mu^2 m^4` and commutator
vertices, density/second vertices, the `q` chiral LLL, and the same local
subtractions and external `-2G/B^2` normalization. The congruence difference
does not show that the final responses differ; it shows the orbit-only
identity cannot be substituted without proving the correction.

The canonical Lorentzian `H_mu^2` contact remains a separate operator
comparison. It cannot be substituted for the Euclidean orbit contact
`I_e` or multiplied by `Theta'` without a new derivation.

## Revised first missing implication and verification work

1. Match the fixed-product full-Weyl mode/form response to the actual paired
   composition domains, including its density and boundary/contact vertices.
2. Compare that complete response and its tangent subtraction to the source's
   fixed-angular conversion under one common regulator; retain the `q`
   chiral LLL and its Weyl/anomaly contribution separately.
3. Establish the required rough curved remainder and cubic/log approximation
   limits, or decide from the final theorem scope whether P1-D is necessary.
4. The bounded scalar endpoint algebra is GCP-checked, and the previous GCP
   mode real-mass bridge checks the orbit-only positive square under abstract
   hypotheses. Neither receipt formalizes the full-Weyl correction. Formalize
   the paired-domain and complete mixed-response identities on GCP after the
   ordinary hypotheses and vertices are fixed.

The source notes are imported evidence, not yet an independently checked P1
theorem. No physical action, wormhole existence or stability conclusion is
asserted here.

Remaining to-do list: prove the endpoint identification and hypothesis match;
finish the P1-C and novelty audits; formalize the supported claim on GCP; then
complete the manuscript at the proved scope.
