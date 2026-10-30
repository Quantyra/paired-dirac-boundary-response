# Distributional seam in the t² contact coefficient

Status: conditional comparison of the source's local coefficient, not an
independent derivation of the full bridge expansion or a Lean certificate.
It extends [the lower-order comparison](bridge-contact-low-order.md) and
retains the seam distribution in Eq. (7) of the pinned
[variable-contact source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md).

## Setup and result

On a periodic double, assume f is positive and even near the seam, with
f(0)=f₀>0 and f(y)=f_smooth(y)+c_f |y|³+O(|y|⁴ log|y|), where the
remainder has the weighted derivatives used in the collar audit. Let v be
similarly even with cubic coefficient c_v, and let u be continuous at the
seam. Assume sufficient piecewise regularity and integrable fourth
remainder derivatives to interpret the following distributions. Then

    f'''' = 12c_f δ₀ + regular L¹ part,
    v'''' = 12c_v δ₀ + regular L¹ part.                      (1)

The source's displayed t² bridge coefficient, when integrated against u
with its 1/(2π) convention, has the explicit seam contribution

    t²/(4π) u(0) [ −2c_f v(0)/(5 f₀²)
                                  +2c_v/(5 f₀) ].             (2)

In particular, for the paper's mass/log direction class u(0)=0, this
specific delta contribution vanishes; if also v(0)=0 the first summand
vanishes independently. The remaining locally integrable terms and cutoff
transitions need not vanish. Formula (2) is on the full periodic double;
no half-boundary factor is silently applied.

## Bridge and geometric comparison

In the source's coefficient (7), the only explicit fourth derivatives are

    (1/60) [v''''/f − v f''''/f²],

before its outer 1/(2π) factor. Combining this with (1) gives (2). The
other displayed terms contain derivatives of f and v of order at most three;
they may jump but do not themselves contain a delta. Products of the delta
with u,v and f are well defined because those factors are continuous.

For a proper-distance metric dy²+f^(−2)dτ², the source uses
R=2f''/f−4(f'/f)² and, on radial scalars,

    Δw=w''−(f'/f)w'.

The distributional singular part of ΔR is 24c_f δ₀/f₀, while that of
Δ²v is 12c_v δ₀. The lower-order products in ΔR and Δ²v are locally
integrable: f,f',f'' and v,v',v'' are continuous, while their third
derivatives can jump. Therefore the source's geometric expression

    (1/f)[−v ΔR/60 + Δ²v/30]

has precisely the same two delta coefficients as twice its bridge
coefficient (7). The factor two is the conversion from 1/(2π) to the
source's 1/(4π) convention. This is a local distributional consistency
check of the highest-derivative terms; it does not independently verify all
lower-order coefficients.

Weak integration by parts must be performed on the full double with the
seam measure retained before translating to a physical half. Replacing the
full-line delta by a half-line boundary delta requires a declared convention;
(2) avoids that ambiguity. The fact that the selected u has zero boundary
value does not justify dropping seam terms for arbitrary smearings or for
other observables. The BV remainder route, actual paired heat kernel,
thermal images, angular normalization and the common-regulator interchange
still require separate proof.

Remaining to-do list: verify all t² local terms and physical half-boundary
normalization, review the BV expansion and regulator limits, audit prior art,
and certify supported claims on GCP.
