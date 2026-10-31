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

There is conditional progress on one adjacent limit. The
[`joint rough-field and moving-cut comparison`](weighted-rough-joint-heat-limit.md)
uses the retained-cubic physical-side approximants, a common-domain pullback,
and a single path (`e=epsilon^9`, `delta=exp(-4L/epsilon)`) to show that the
complete unsubtracted mixed heat derivatives converge along the positive
proper-time cutoff, with integrated error
`O(epsilon^(7/12)(1+|log epsilon|)^(1/6))`. Its hypotheses include the fixed
global chart, common domain, coercivity and complex-form estimates. It does
not include a local tangent subtraction or its moving insertion terms, and
therefore does not prove convergence of the renormalized response. The
immediate analytic gap is now the matching and control of those subtraction
terms under the same path, followed by the orbit/correction, density/contact,
thermal-image and LLL transfer. This conditional model estimate does not by
itself instantiate the physical endpoint.

## Same-path tangent-subtraction integrability check

The frozen rough source's flat tangent estimate after its stated local
subtractions is componentwise `|r_flat(t)| <= C t^2 ||u'''||_2 ||w'''||_2`
for the unweighted orbit trace. This is integrable against `dt/t^2` before
angular summation. It is not enough after inserting the full angular tower:
since `Theta(t)=O(t^(-1))`, the product is only `O(t)`, and

    integral_epsilon^t0 t^(-2) [Theta(t) |r_flat(t)|] dt
      <= C ||u'''||_2 ||w'''||_2 log(t0/epsilon).

Thus this estimate alone gives no uniform removal of the common lower cutoff.
The exact flat conversion calculation
[`flat-conversion-leading-remainder.md`](flat-conversion-leading-remainder.md)
computes both coefficients under its specified physical-half normalization
and through-`x^2` subtractions: geometric `-b0^2/(840pi) t`, contact
`+b0^2/(420pi) t`, and total `+b0^2/(840pi) t`, each paired with
`integral_0^infinity u'''w''' dy`, plus `o(t)`. They do **not** cancel for
that subtraction. This is not yet identified with the complete physical P1
subtraction or its finite local restorations. The next step is to match this
diagnostic to the actual prescribed observable and determine whether an
additional local term is present; do not claim a flat cancellation under the
through-`x^2` convention. Even if the actual physical observable removes
this term, curved localization, moving-insertion control, density/boundary
terms and LLL transfer remain. These flat estimates are conditional
evidence, not a physical common-regulator proof. Since the frozen source
defines `r_curved` after extracting its localized tangent contribution, this
nonzero coefficient under a truncated subtraction does not contradict its
`t^(3/2)` target: the exact tangent may remove it. The missing step is to
identify that extraction with P1's full-Weyl tangent and prescribed local
restorations, not to infer failure of the source target from this truncated
flat diagnostic.

## Sign-paired reduction of the full-Weyl correction

On the compactified product realization where positive and negative mass
modes have identical orbit domains, seed operators and trace densities,
pairing `mu` with `-mu` cancels the odd-in-`mu` pieces in the orbit-angular
cross terms. The surviving orbit-angular insertions are the scalar
`-2 mu^2 u` and `-2 mu^2 w` vertices, weighted by `-Theta'(t)`. This is an
exact positive-time reduction under the stated product-domain hypotheses;
it does not apply automatically to arbitrary finite radial cuts. The
angular-only sector still contains the even-even pair weighted by
`Theta''(t)` and the odd-odd gradient pair weighted by `-Theta'(t)`; the
odd-odd term does not cancel by sign pairing. See
[`full-weyl-opposite-sign-cross-cancellation.md`](full-weyl-opposite-sign-cross-cancellation.md)
and the exact Hessian formula in
[`full-weyl-orbit-correction-vertices.md`](full-weyl-orbit-correction-vertices.md).

Because `-Theta'(t)=O(t^-2)` and `Theta''(t)=O(t^-3)`, termwise sufficient
targets for a subtracted total `O(t^(3/2))` correction are `O(t^(7/2))` for
the orbit-insertion and odd-odd kernels, and `O(t^(9/2))` for the even-even
kernel. These powers are sufficient bookkeeping, not necessary individual
bounds; combined cancellations may improve them. The fixed-product
positive-time estimates do not establish any of these small-time subtracted
bounds. The first concrete curved obligation is to estimate the surviving
scalar orbit-angular insertions with the actual localized tangent
subtraction and common regulator, and to control the even-even sector.
Density/contact, boundary transgression, thermal images and LLL still need
inclusion.

One flat boundary component has now been estimated. The
[`odd-odd complementary-boundary flat estimate`](odd-odd-complementary-boundary-flat-estimate.md)
uses the exact Dirichlet/Robin half-line kernels, all antiperiodic thermal
images, `u',w'=O(y^2)`, and a bounded constant scalar Robin parameter. It
proves that the complementary-boundary versus same-boundary odd-odd defect,
after the full massive tower weight `-Theta'`, is `O(t^(3/2))`. The admitted
cubic/log profiles satisfy the derivative vanishing used there. This closes
that flat defect component under its stated model hypotheses. It does not
control the same-boundary odd-odd tangent term, variable/curved boundary
operators, moving cuts, physical normalization, or the source-observable
bridge; the curved domain defect remains open.

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

1. The finite-cut physical L2 transport and composition domain are now
   explicit in [`physical-product-contact-operator-gap.md`](physical-product-contact-operator-gap.md).
   For the static zero-angle RN seed, the parent conformal-domain derivation
   and radial nature of E identify each massive physical mode with the
   full-Weyl congruence `E(D+i mu G)E` on the common projector domain. The
   finite-cut identity alone supplies no uniform moving-cut or trace estimate.
   A subsequent conditional result in
   [`physical-cut-interior-response-locality.md`](physical-cut-interior-response-locality.md)
   assembles the separated-interior cut comparison for both ordered vertices
   and all four mixed-second-vertex terms from the localized Schatten estimate.
   Together with [`physical-cut-tail-locality-reduction.md`](physical-cut-tail-locality-reduction.md)
   and its separate boundary path, it yields a joint cut-to-complete comparison
   along the recorded power path. The order-five radial cutoff bounds, C5
   approximant/coefficient bounds, and polynomial finite-chart count have
   since been checked conditionally for the fixed RN path in
   [`physical-cut-locality-regularity-instantiation.md`](physical-cut-locality-regularity-instantiation.md).
   The common physical bundle/domain, uniform graph and weighted Davies,
   Duhamel cutoff, and form-trace hypotheses still need source-realization
   verification. This is conditional progress on the physical-model cut
   limit, not an independently verified application to the source family or
   its regulator.
   Lean checks the abstract composition-domain set reduction under explicit
   preservation assumptions, but certifies neither these analytic hypotheses
   nor the mode trace.
   For the spherical seed and invariant directions, the compact-cut
   trace-norm result now justifies absolute angular summation of the complete
   mixed heat derivative and interchange with its mixed parameter derivative
   for each fixed positive time; see
   [`physical-fixed-time-mixed-response-assembly.md`](physical-fixed-time-mixed-response-assembly.md).
   This closes the fixed-cut positive-time mode-sum interchange only. It gives
   no cutoff-uniform bound, small-time subtraction or common-regulator limit.
2. The first remaining bridge is from that complete physical paired response
   to the source's product-frame/time-reduced observable. Compare its tangent
   subtraction to the source's
   fixed-angular conversion under one common regulator; retain the `q`
   chiral LLL and its Weyl/anomaly contribution separately.
   Retain the physical density, boundary/contact vertices, angular tower and
   moving insertion terms. The conformal congruence is not a unitary
   conjugation of the product-frame square, and the LLL remains gapless.
3. Complete the remaining domain, weighted-form, and source-identification
   hypotheses for the conditional cut-locality theorem, then establish the
   common-regulator finite part and required rough curved remainder, or decide
   from the final theorem scope whether P1-D is necessary.
4. The bounded scalar endpoint algebra and abstract orbit-only mode bridge
   have GCP receipts. The [`fourth-order full-Weyl jet receipt`](../evidence/gcp-full-weyl-angular-jet4-20261030/README.md)
   extends the polynomial check through the x^4 coefficient; its reused
   dependencies have local-change warnings, and it proves neither the
   analytic tail estimates nor the conditional seam integral. The new
   [`abstract full-Weyl mode-square identity`](../evidence/gcp-full-weyl-square-algebra-20261030/README.md)
   proves the noncommutative expansion under explicit ring hypotheses, but
   likewise does not formalize the represented operator, physical paired
   domains, or complete mixed response. The new [constant-mode Hessian
   benchmark](../evidence/gcp-full-weyl-constant-mode-20261031/README.md)
   formally confirms that full congruence and fixed-angular variation differ
   in general. Neither certificate identifies the physical observable.
   Formalize the remaining claims on GCP only after their ordinary
   hypotheses and vertices are fixed.

The source notes are imported evidence, not yet an independently checked P1
theorem. No physical action, wormhole existence or stability conclusion is
asserted here.

The GCP [coefficient-algebra receipt](../evidence/gcp-full-weyl-seam-comparison-20261031/README.md)
checks the cubic difference and an algebraic equality of the prior stipulated
log constants. The latter is superseded by the corrected Taylor audit: the
full-Weyl diagnostic differs from orbit-only by `-b^2/(35 pi) C t^2 log(t)`.
The revised Lean source is not yet certified. Neither the old nor revised
algebra proves the tangent asymptotics or physical source conversion.

Remaining to-do list: prove the endpoint identification and hypothesis match;
finish the P1-C and novelty audits; formalize the supported claim on GCP; then
complete the manuscript at the proved scope.

The moving-cut obstruction is now quantified in [inite-cut-congruence-uniformity-obstruction.md](finite-cut-congruence-uniformity-obstruction.md): the finite-cut conformal multiplier inverse has L2 norm `sqrt(R/ell)`. Any physical trace transfer therefore needs a weighted/localized estimate or cancellation beyond the fixed-cut graph comparison. This is not a response lower bound and does not decide convergence.

A further endpoint distinction is now recorded in [conformal-infinity-l2-domain-obstruction.md](conformal-infinity-l2-domain-obstruction.md): under the conformal spinor map, the physical graph norm has compactified weights `u^-1` on `psi_hat` and `u` on `D_hat psi_hat`. Within compactified `H1`, physical L2 forces the full boundary trace to vanish, whereas the source's local projector allows nonzero complementary trace. Thus compactified local-projector moving-cut heat estimates do not yet instantiate the physical endpoint; the intended Hilbert space and boundary realization must be specified. This does not invalidate a nonnormalizable source prescription.

## LLL coefficient status clarification (2026-10-31)

The canonical LLL tangent coefficient is already fixed in the pinned source:
for the declared disk conformal tangent `T`,
`Gamma_hat,LLL''[T,T] = -q/(12 pi) integral_disk |grad T|^2`.
Polarization gives the mixed bilinear form
`-q/(12 pi) integral_disk grad u . grad v`. The separate
[`zero-sector flat comparison`](zero-sector-flat-lll-normalization-comparison.md)
derives the same finite coefficient from the conditional flat zero-mass
conversion after subtracting its `U0/epsilon` term and applying the even
half-line folding factor. Thus the LLL coefficient and its conditional flat
model match are not an unknown algebraic normalization.

The first unsupported implication is the identification of the actual P1
physical LLL contribution with that disk tangent/cocycle under the same
physical state, bundle and boundary domains, conformal field map, per-exterior
and time-reduced trace conventions, and common regulator. The massive-gap
endpoint argument still cannot be applied at zero mass; do not infer a
massless upper-endpoint cancellation or add the model zero-mode term to an
already allocated source cocycle. Numerical role: none; this coefficient is
an analytic local tangent contribution, not a physical admission margin or
numerical estimate.
