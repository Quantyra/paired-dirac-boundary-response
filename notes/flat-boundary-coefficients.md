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

Remaining to-do list: prove (2) for the selected localized mass/log class,
justify the paired folding and density/contact terms, compare exact results
with prior literature, and certify supported analytic statements in Lean on GCP.
