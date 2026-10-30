# Flat tangent boundary coefficients from Fourier tails

Status: conditional ordinary derivation, not a certified paired-domain or
curved heat-trace theorem. Assume the full-plane multiplier and physical-half
normalization in [the flat multiplier calculation](flat-tangent-multiplier.md)
and [the all-frequency bound](tangent-remainder-bound.md). In particular the
folding and one-half identification remain separate obligations. The Fourier
tail hypotheses below are also inputs; deriving them for every admitted
mass/log field and cutoff is not attempted here.

Let R3(x)=F(x)-1+x^2/120-x^3/840. As x approaches zero,

    R3(x) = -x^4/10080 + O(x^5),

and the integral J=integral_0^infinity R3(s^2) ds/s^8 is absolutely
convergent and equals -5 pi^(3/2)/49152 by
[the independent calculation](tangent-integral-argument.md). For large x,
F is bounded and R3(x)=O(1+x^3). These statements give an integrable
scaled kernel at both s endpoints.

Write the physical-half renormalized tangent bilinear form as

    B_t(u,w) = (1/(pi t)) integral_R conjugate(uhat(k)) what(k)
                              R3(t k^2) dk/(2pi).            (1)

The normalization is conditional on the paired-to-full-plane identification;
no equality between their heat kernels is assumed proved. Assume real even
localized profiles with the following large-frequency product expansion,
where C=c_u d_w+d_u c_w:

    conjugate(uhat(k)) what(k)
      = 144 c_u c_w |k|^-8 - 288 pi C |k|^-9 + O(|k|^-10 log^m|k|),
                                                              (2)

for some fixed finite m. This follows from the source's recorded individual
leading tails only after showing the required remainder bounds and cutoff
behavior; here (2) is an explicit hypothesis, not a claim for arbitrary H^3
profiles.

For pure cubic and logarithmic profiles with a smooth even cutoff equal to
one near the seam, the separate [Fourier-tail argument](localized-fourier-tails.md)
establishes (2) with an O(|k|^-10) remainder. That argument does not cover
all weighted remainders in the broader mass/log class.

## Cubic-cubic term

Choose any fixed K>0 above which (2) holds. On |k|>=K, substitute s=sqrt(t)|k|
in the first term. The two signs of k and the Fourier measure yield

    (144 c_u c_w)/(pi^2 t) t^(7/2)
      integral_(K sqrt(t))^infinity R3(s^2) ds/s^8.

The dominated limit is J. The bounded-frequency contribution to (1) is
O(t^3), assuming the localized Fourier product is integrable on the bounded
interval. The remaining terms in (2) contribute O(t^3(1+|log t|)) under the
stated remainder bounds. Thus the leading cubic-cubic boundary contribution is

    (144/pi^2) J c_u c_w t^(5/2)
      = -15/(1024 sqrt(pi)) c_u c_w t^(5/2).                 (3)

The 1/(pi^2) here combines the physical-half factor in (1) with the two
frequency signs and dk/(2pi); removing either changes the coefficient.

## Cubic-logarithmic term

For the |k|^-9 term in (2), divide the positive-frequency integral into
[K,t^(-1/2)] and [t^(-1/2),infinity], for small t. On the first interval,
R3(tk^2)=-t^4 k^8/10080+O(t^5 k^10). The leading term is proportional to
integral_K^(t^(-1/2)) dk/k = -(1/2)log t-log K. The Taylor-error integral is
O(t^4) before the prefactor 1/t. On the second interval, the global bound
R3(x)=O(1+x^3) gives an O(t^4) integral before that prefactor. The bounded
frequency and higher-tail terms also contribute O(t^3) under (2).
Consequently the logarithmic term is

    -(C/(70 pi)) t^3 log t.                                  (4)

Its coefficient arises from the product of -288 pi C, the two frequency
signs, the -1/10080 Taylor coefficient, and the -1/2 log t scale factor.
The finite t^3 term depends on the full profiles and is not set to zero.
For fixed finite m the higher-tail contribution has no t^3 log t term under
(2); any broader tail class requires its own estimate.

Equations (3)-(4) reproduce the recorded flat tangent coefficients under
explicit Fourier-tail and normalization assumptions. They neither prove the
paired folding factor nor transfer these coefficients to a rough curved base
metric or the commonly regulated full physical action.


## Leading cubic coefficient for the weighted remainder class

The leading cubic–cubic term does not require the detailed product expansion
(2). Let u and w be real even localized profiles, smooth away from zero,
whose physical-side collars have

    u(y)=c_u y^3+r_u(y),   w(y)=c_w y^3+r_w(y),

and whose remainders satisfy the j=0,...,4 weighted bounds (4) in the
[rough-variation source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md).
Assume the localized profiles have integrable fourth derivatives away from
the seam; a smooth compact cutoff and the source's C5 interior charts
suffice. Then, distributionally,

    u'''' = 12 c_u delta_0 + h_u,    w'''' = 12 c_w delta_0 + h_w,
    h_u,h_w ∈ L¹(R).

Indeed r^(j)(y) tends to zero for j=0,1,2,3, so the even extension has
matching traces through order three and creates no delta term on the fourth
derivative. Its ordinary fourth derivative is locally integrable because
it is bounded by a multiple of 1+log(1/|y|). The reflected cubic contributes
12 c delta_0; cutoff-transition derivatives are integrable. Hence the
Riemann–Lebesgue lemma gives, as |k|→infinity,

    k^4 uhat(k) → 12 c_u,     k^4 what(k) → 12 c_w,

and both functions k^4 uhat(k), k^4 what(k) are uniformly bounded on R.

Under the full-plane multiplier and half-trace normalization in (1), put
s=sqrt(t) k and define the bracket to be zero at s=0:

    t^(−5/2) B_t(u,w)
      = 1/pi ∫_R [R3(s²)/s^8]
             [k^8 conjugate(uhat(k)) what(k)]_(k=s/sqrt(t)) ds/(2pi).

The bracket is uniformly bounded and converges pointwise for s ≠ 0 to
144 c_u c_w. The scaled kernel is integrable: R3(s²)=O(s^8) near zero
and R3(s²)=O(s^6) at infinity. Dominated convergence therefore gives

    lim_(t↓0) t^(−5/2) B_t(u,w)
      = (144/pi²) J c_u c_w
      = −15 c_u c_w/(1024 sqrt(pi)).

This proves the leading coefficient for the weighted reflected remainder
class in the flat multiplier model, not just for the pure cubic/log example.
It gives an o(t^(5/2)) remainder, not a uniform O(t³ log t) estimate or an
identified logarithmic coefficient. The weighted bounds alone do not specify
a unique y^4 log y coefficient: they allow a remainder of that same order.
The physical paired trace, curved geometry and common regulator remain
separate hypotheses.

## A sufficient remainder condition for the logarithmic coefficient

The detailed O(|k|^{-10}) product remainder in (2) can be weakened. Let
each real even localized profile have the decomposition

    u = c_u chi |y|^3 + d_u chi |y|^4 log|y| + v_u,
    w = c_w chi |y|^3 + d_w chi |y|^4 log|y| + v_w,

where chi is smooth, even, compactly supported and one near zero. Suppose
v_u,v_w are compactly supported and their fifth distributional derivatives
belong to L¹(R). A sufficient physical-side condition is that, after the
two displayed jets are removed, the derivatives through order five satisfy
|v^(j)(y)| <= C y^(4+alpha−j) near zero for some alpha>0, with compatible
even traces and integrable fifth derivative in the localization region.
The distributional condition also allows other remainders, including a
smooth y^4 term.

Fourier transformation and the Riemann–Lebesgue lemma then imply
vhat(k)=o(|k|^{-5}). Combining this with the explicit pure-jet transforms
gives, for |k|→infinity,

    conjugate(uhat(k)) what(k)
      = 144 c_u c_w |k|^{-8}
        − 288 pi C |k|^{-9} + o(|k|^{-9}),
    C = c_u d_w+d_u c_w.

The little-o is sufficient to determine the coefficient of t^3 log t,
although it need not give an O(t^3) residual. To see this, subtract the
complete pure-cubic contribution and denote the remaining Fourier product
by |k|^{-9} q(k) for |k|>=K. Then q(k) is bounded and tends to
−288 pi C. On K<=|k|<=t^{-1/2}, the expansion
R3(t k²)=−t^4 k^8/10080+O(t^5 k^10) reduces the leading integral to
a constant times

    ∫_K^(t^{-1/2}) q(k) dk/k.

Dividing by log(t^{-1/2}) makes this integral tend to −288 pi C:
split it at a fixed large K0, bound the initial part, and use uniform
closeness of q to its limit beyond K0. The Taylor error is O(t^4) before
the 1/t prefactor. On |k|>=t^{-1/2}, bounded q and the all-frequency
growth R3(x)=O(1+x^3) give O(t^4) before that prefactor. Bounded
frequencies and the cutoff-dependent correction to the pure-cubic term
contribute O(t^3). Therefore, with the normalization in (1),

    B_t(u,w)
      = −15 c_u c_w t^(5/2)/(1024 sqrt(pi))
        − C t^3 log(t)/(70 pi) + o(t^3 |log t|).

This statement keeps the logarithmic coefficient but does not determine
the finite t^3 term. The weighted bounds by themselves do not imply the
additional L¹ fifth-derivative condition after the logarithmic jet is
removed; it must be established for the chosen directions. The calculation
remains conditional on the flat multiplier and physical-half normalization.

## Check against the source's selected tangent directions

Section 4 of the pinned rough-variation note specifies
u=c_u |y|^3+d_u y^4 log|y|, and likewise w, near the seam, with a
smooth localization equal to one there. For those selected directions,
subtracting the displayed jets using the same cutoff leaves a remainder
that is zero on a seam neighborhood. If the remainder and localization are
C5 and compactly supported away from the seam, their fifth weak derivatives
are integrable. Thus the additional condition above holds for the source's
explicit tangent test, and the flat multiplier model recovers its two
displayed coefficients under the previously stated trace normalization.

This does not show that every direction in the larger weighted family has
a well-defined logarithmic jet or an L¹ fifth-derivative remainder. The
source states the weighted admission separately from its special tangent
directions; the stronger conclusion is confined to the latter unless
additional regularity is proved. In particular, this check neither resolves
the curved-regulator bridge nor certifies the published paper.
Remaining to-do list: determine whether broader selected fields meet the logarithmic remainder condition,
justify the paired folding and density/contact terms, compare exact results
with prior literature, and certify supported analytic statements in Lean on GCP.
