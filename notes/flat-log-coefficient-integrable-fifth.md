# Flat logarithmic coefficient with an integrable fifth derivative

This gives an ordinary sufficient condition for the cubic-logarithmic term
that is weaker than the O(|k|^-10 log^m|k|) Fourier-product remainder in
`flat-boundary-coefficients.md`. The flat multiplier and physical-half
normalization of that note remain hypotheses. This is not a physical curved
response or a Lean certificate.

Let chi be a real even smooth compact cutoff equal to one near zero. Take
real even compactly supported profiles

    u=chi(c_u |x|^3+d_u |x|^4 log|x|)+h_u,
    w=chi(c_w |x|^3+d_w |x|^4 log|x|)+h_w.

Assume each h is smooth away from zero, its derivatives through order three
have zero limits at zero, its fourth derivative has equal finite one-sided
limits, and its classical fifth derivative is L1 on the two open half-lines.
Assume sufficient exterior smoothness for no other distributional jumps.
For example, an even smooth x^4 remainder is allowed. These hypotheses
imply the distributional fifth derivative of h belongs to L1(R). No rate of
Fourier decay of that derivative is imposed.

The Riemann-Lebesgue lemma and (ik)^5 hhat=Fourier(h''''') give
hhat=o(|k|^-5). Combining this with the pure-profile distributional tails in
`localized-fourier-tails.md` yields, as |k|->infinity,

    conjugate(uhat) what = 144 c_u c_w |k|^-8
       -288 pi (c_u d_w+d_u c_w) |k|^-9 + o(|k|^-9).   (1)

For the remainder in (1), choose K so that its absolute value is at most
eta |k|^-9 for |k|>=K. The interval |k|<=K contributes O_K(t^3) to B_t
using R3(x)=O(x^4) near zero. On K<=|k|<=t^(-1/2), the same bound gives an
absolute remainder at most C eta t^3 |log t|. Above t^(-1/2), the global
bound R3(x)=O(x^3) for x>=1 gives at most C eta t^3. After division by
t^3 |log t|, the limsup is at most C eta; eta is arbitrary. Thus the
unspecified tail contributes o(t^3 |log t|).

The leading |k|^-8 term has the cubic contribution computed in
`flat-boundary-coefficients.md`, with an O_K(t^3) bounded-frequency correction.
The explicit |k|^-9 term has the logarithmic coefficient computed there;
its nonlogarithmic correction is O_K(t^3). Consequently, with
C=c_u d_w+d_u c_w,

    B_t(u,w) = -15 c_u c_w t^(5/2)/(1024 sqrt(pi))
               - C t^3 log(t)/(70 pi)
               + o(t^3 |log t|).                       (2)

Equation (2) does not assert an O(t^3) remainder. The hypothesis supplies
an actual logarithmic jet and an integrable residual fifth derivative; it is
not implied by the broader weighted upper bounds, which allow oscillating
logarithmic amplitudes and a nonintegrable fifth-derivative bound. The
common physical regulator, vertices, normalization and curved transfer are
separate obligations. No numerical calculation is used.

Remaining to-do list: connect the physical domains and response, resolve
prior art, prepare the manuscript, and certify supported claims on GCP.