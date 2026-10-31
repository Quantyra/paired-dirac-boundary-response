# Tangent heat trace and common-regulator normalization

Status: source-to-model audit, not an independent proof of the rough curved
trace limit or a Lean certificate. This identifies which part of the
regulated action is addressed by the flat tangent multiplier.

## Source-defined quantities

The pinned [variable-contact conversion](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md)
defines the common-cutoff conversion using the physical-half,
time-reduced trace Tr_bar, with the original paired domains, thermal
period, full massive angular tower and bolt retained. It sets

    K_t = exp(−t L),       T_t(u)=Tr_bar[u K_t],
    I_t(u,v)=∫_0^t Tr_bar[u K_{t-s} v K_s] ds,
    Theta(t)=Σ_{n>=1} d_n exp(−t M_n²).

Here K_t is an operator; T_t and I_t are scalars. The source states, at
positive cutoff t, the mixed conversion identity

    J_t''[u,v]
      = (Theta(t)/2) [D_v T_t(u)+D_u T_t(v)]
        + 2 Theta'(t) I_t(u,v).                              (1)

D_v is the geometric variation on the fixed spinor Hilbert space. The
source retains the two partner squares and uses their grading equality;
the final normalized action has its separately stated factor −2G/B².
The second term in (1) is a product-gradient/contact contribution and is
not supplied by the geometric heat Hessian alone.

Here “complete angular tower” in the conversion means the massive `n>=1`
sector weighted by `Theta`; the `q` chiral LLL modes remain a separate
block. Also, this source conversion varies the orbit operator with each
angular mass held fixed. It is not yet the full four-dimensional Weyl
congruence: `full-weyl-angular-mode-correction.md` derives the additional
angular-mass and commutator vertices. Do not use (1) as the complete P1-C
response until those terms and the LLL are included under the same regulator.

The pinned [smearing note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-smeared-heat-projection-domain.md)
explicitly defines K_s(t)=Tr exp(−t L_s) as a scalar heat trace on the
physical half with rank two, and writes

    delta_v delta_u K_0(t)
       = −2t partial_t D_v Tr_bar[u exp(−t L)].              (2)

Thus K_s(t) in that note is a scalar trace, whereas K_t in the later
conversion note is an operator. The two notations must not be conflated. The
[rough-variation note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md)
uses the same traced shorthand for its tangent calculation. The
normalization of the physically intended trace is fixed by the source's
physical-half convention, but the rough note itself does not restate every
normalization in that displayed equation.

## Matching to the flat calculation

For the flat rank-two orbit model, let T_t^full be the ordinary full-plane
spin trace per unit tangential length. Under the even scalar, exact
projector, domain and trace-class assumptions in
[the folding audit](flat-paired-folding.md), the per-exterior
physical-half trace is (1/2) T_t^full. The
[fiber audit](flat-orbit-fiber-normalization.md) shows how the two-copy
folded trace and the per-exterior division lead to this convention without
dividing d_n a second time.

Applying (2) to this flat physical-half trace gives the one-half of the
rank-two full-plane mixed heat multiplier used in
[the coefficient calculation](flat-boundary-coefficients.md). This
identifies the intended scalar geometric heat observable under the stated
flat hypotheses. It is not an identity for the entire J_t'' in (1):
Theta, the separate I_t contact, local subtractions, period normalization,
and the angular and proper-time integrals must still be kept.

For a noncompact tangent plane, this matching uses the density convention
and its fixed-positive-time box limit; the compact model establishes a
separate positive-time route but does not by itself prove that limit.
The smooth selected-pair argument in the source is not a uniform curved
estimate for arbitrary rough base metrics. The zero-mode allocation and
the LLL remain separate from the n>=1 massive tower in (1).

## Consequence and limits

The source convention supports the extra per-exterior factor in the flat
coefficient, while making clear why it cannot be applied to an unweighted
rank-four paired trace or used twice. It also identifies the missing
observable-level step: prove that the physical regulated geometric
variation and its trace-class limits have the declared tangent limit, and
combine that result with the contact term in (1) before claiming an action
response. No numerical check is needed for this normalization tracing.

Remaining to-do list: justify the physical tangent and common-regulator
limits with the contact term, establish the physical domain hypotheses,
complete the prior-art comparison, certify supported claims in Lean, and
prepare the manuscript.
