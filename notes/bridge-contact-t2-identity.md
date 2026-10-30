# Complete local t² contact identity in proper-distance coordinates

Status: ordinary algebraic comparison of the source's displayed local
coefficient, not an independent derivation of the stochastic expansion, a
physical regulator theorem, or a Lean certificate. It completes the smooth
coefficient comparison begun in [the seam note](bridge-contact-seam.md),
conditional on Eq. (7) of the pinned
[variable-contact source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md).

## Identity

Let f>0 and v be smooth functions of proper distance y, and put

    q=f'/f,   R=2q'−2q²,   Δw=w''−q w'.

Let B₄(f,v) denote the source's displayed h⁴ bridge coefficient (7), before
its 1/(2π) prefactor. Then direct differentiation gives

    2 B₄(f,v) = (1/f){ [−R²/120−ΔR/60]v
                       −[R Δv+R'v']/60 + Δ²v/30 }.       (1)

To see all coefficients without relying on a symbolic checker, both sides
of (1), after multiplication by f, have the following coefficients of
v through v'''':

    v'''':  1/30,
    v''':  −q/15,
    v'':    q²/15−q'/10,
    v':    −q''/15+2qq'/15−q³/30,
    v:      [(q')²+3q q''−q'''−q⁴]/30.                    (2)

For the geometric side, use

    Δ²v=v''''−2qv'''+(q²−2q')v''+(qq'−q'')v',
    ΔR=2q'''−4(q')²−6q q''+4q²q'.

Substitution gives (2). For the bridge side, use
f''/f=q'+q², f'''/f=q''+3qq'+q³, and
f''''/f=q'''+4q q''+3(q')²+6q²q'+q⁴ in the source's polynomial;
the same coefficients result. These identities are ordinary product and
quotient rules, and no numerical calculation is needed.

## From operator to bilinear contact

On a periodic double, or when boundary terms are separately shown to
vanish, Δ is symmetric for the time-reduced measure dy/f. Hence

    ∫(dy/f) u Δ²v = ∫(dy/f) (Δu)(Δv),
    ∫(dy/f) u [R Δv+R'v'] = −∫(dy/f) R u'v'.

The second identity is the divergence rule for R∇v. With the source's
1/(2π) bridge prefactor and the factor two in (1), this recovers the
entire t² integrand stated in its Eq. (5):

    (−R²/120−ΔR/60)uv + R u'v'/60 +(Δu)(Δv)/30.

For the rough even cubic class, the quotient identities extend weakly when
q is C¹ with q'' a BV function and q''' a finite measure; multiplication
by the continuous coefficients is well defined. Smooth approximation must
preserve the BV bounds and the distributional limit. The seam atom is the
one recorded in [the seam calculation](bridge-contact-seam.md), not an
extra term discarded by integration by parts. These statements compare
local expressions; the validity and uniformity of the source's stochastic
expansion and the BV passage are separate hypotheses.

The physical half-boundary, thermal images, full angular normalization,
common-regulator limit and the paper's mixed curved response remain open.
The current argument also does not establish the novelty of the coefficient.

Remaining to-do list: review the BV expansion, verify the actual paired
boundary and regulator, complete the prior-art and novelty audit, and certify
supported statements on GCP.
