# Scalar derivative-jump normalization audit

Status: open ordinary calculation, not Lean-certified. The source is
Bordag and Vassilevich, [arXiv:hep-th/0404069v2](https://arxiv.org/pdf/hep-th/0404069v2),
Section III.B, Eqs. (27), (28), (31), and (32). An apparent factor-of-two
discrepancy must be resolved before the scalar comparison is used as a
numerical benchmark. This is not a finding that the published result is wrong:
an overlooked convention or transcription issue remains possible.

For the source's one-sided example E(0)=0, its Eqs. (27)--(28), applied
literally with n=3, give the t^3 term

    (1/4) [Gamma(5/2)/(4! sqrt(pi))] integral E E''' dz
      = (1/128) integral E E''' dz
      = (1/256) E'(0)^2,

assuming the stated decay and sufficient one-sided smoothness. The last
identity follows by integration by parts. Equation (31) instead appears to
give 1/64 times the same integral when p=1, and Eq. (32) gives gamma_1=1/128.
The original PDF should be checked alongside the conventions in Eq. (20),
including interface counting and the definition of K2.

An independent candidate check starts from the full-line quadratic Duhamel
term, with Fourier convention f-hat(k)=integral exp(-iky)f(y)dy. If the
derivative jump is J, then the leading high-frequency tail is -J/k^2. In two
dimensions, per unit interface length, subtracting the smooth terms gives

    [t/(8 pi)] [J^2/pi] t^(3/2)
      integral_0^1 [a(1-a)]^(3/2) da
      integral_0^infinity (exp(-s^2)-1+s^2)/s^4 ds
    = J^2/(512 sqrt(pi)) t^(5/2).

The integrals are 3 pi/128 and 2 sqrt(pi)/3, respectively. If its
normalization holds, polarization, rank two, and the proposed physical half
give 9/(64 sqrt(pi)) c_u c_w, half the source-based value in the comparison
note. Neither value is asserted as established until the discrepancy and the
physical folding hypotheses are independently resolved.

## Cutoff and remainder argument for the scalar model

Let V be real and compactly supported on R, continuous and piecewise C^2,
with V' having the sole jump J at zero, and assume its piecewise second
derivative lies in L^1. Distributionally V''=J delta_0+g with g in L^1.
The Riemann--Lebesgue lemma therefore gives

    -k^2 V-hat(k) = J + g-hat(k) -> J as |k| -> infinity,

and k^4 |V-hat(k)|^2 is bounded on R. The smooth cutoff of |y| used in
the comparison satisfies these assumptions. For the scalar heat trace per
unit length in the other flat direction, the quadratic Duhamel term is

    Q(t) = t/(8 pi) integral_R dk/(2 pi) |V-hat(k)|^2
             integral_0^1 exp(-a(1-a)t k^2) da.

The corresponding subtraction Q_smooth keeps 1-a(1-a)t k^2 in the
integrand. Its two integrals are finite because V and V' are in L^2. Put
h(z)=exp(-z)-1+z. Scaling s=sqrt(t) k shows that

    t^(-5/2) (Q(t)-Q_smooth(t))
      = 1/(8 pi) integral_R ds/(2 pi)
          [s^4 |V-hat(s/sqrt(t))|^2/t^2]
          integral_0^1 h(a(1-a)s^2)/s^4 da.

The bracket converges to J^2 for each s != 0 and is uniformly bounded.
The remaining integrand is bounded near s=0 and O(s^-2) at infinity,
uniformly in a, because 0 <= h(z) <= min(z,z^2/2). Dominated convergence
therefore proves the displayed scalar coefficient under these hypotheses,
including the cutoff and all frequencies. The Duhamel normalization remains
to be checked independently against the source's operator and trace
conventions; this calculation alone does not establish the Dirac result.

## Trace normalization and general moment check

Write H_0=-Delta on R^2 and H_lambda=H_0+lambda V(y). The coefficient
of lambda^2 in the relative heat trace per unit tangential length is

    integral_(0<u<v<t) Tr_length[
      exp(-(t-v)H_0) V exp(-(v-u)H_0) V exp(-u H_0)] du dv.

By cyclicity, setting r=v-u gives integral_0^t (t-r) F(r) dr, where
F(r)=Tr_length[exp(-(t-r)H_0) V exp(-r H_0) V]. Exchange of the
two factors gives F(r)=F(t-r), so the triangle integral is
(t/2) integral_0^t F(r) dr. In momentum representation completing the
square in the two-dimensional Gaussian yields

    F(at) = (4 pi t)^(-1) integral_R dk/(2 pi)
                    |V-hat(k)|^2 exp(-a(1-a)t k^2).

Thus the quadratic coefficient has precisely t^2/2 times (4 pi t)^(-1),
or t/(8 pi), as used above. There is no additional mixed-derivative factor:
this is the coefficient of lambda^2; differentiation twice would multiply
it by two. The source's Eq. (22) likewise defines K2 as the coefficient
quadratic in E over the ordered triangle. The relative trace or a finite
periodic tangential box supplies the infrared interpretation; the displayed
Gaussian calculation is per unit length.

The source's Eq. (28) at n=2p+1, inserted into Eq. (27), gives the
coefficient of integral E E^(2p+1)

    Gamma(p+3/2)/[4 (2p+2)! sqrt(pi)]
       = 1/[4^(p+2) (p+1)!].

This differs from its displayed Eq. (31) by 1/(p+1)!; the p=0 case
agrees, while p=1 gives one half. With the source's one-sided test function,
E^(j)(0)=0 for j<p, and integration by parts gives
integral E E^(2p+1)=(-1)^(p+1) E^(p)(0)^2/2. These algebraic checks
strengthen the evidence of an internal normalization mismatch, but do not
resolve whether a convention or another issue accounts for it. An independent
review and a direct check of the publisher's version are still needed.

## Published-version check

The arXiv record lists v2, revised 11 May 2004, as its last deposited
version and gives the journal reference *Phys. Rev. D* 70, 045003 (2004).
Direct inspection of the earlier [v1 manuscript](https://arxiv.org/pdf/hep-th/0404069v1)
and v2 finds the same displayed Eqs. (27)--(32), so this discrepancy is not
resolved by the arXiv revision history. In particular, Eqs. (27)--(28) imply
one half the p=1 coefficient stated by Eqs. (31)--(32) for the one-sided
example.
The APS issue page lists the same title, authors, article number and
publication date ([APS issue record](https://journals.aps.org/prd/issues/70/4));
the [article page](https://journals.aps.org/prd/abstract/10.1103/PhysRevD.70.045003)
confirms publication on 9 August 2004 and DOI `10.1103/PhysRevD.70.045003`.
The versioned [arXiv record](https://arxiv.org/abs/hep-th/0404069) identifies
v2, revised 11 May 2004, as its last deposited version and gives that journal
reference. A text extraction of the APS issue contents PDF appears to
misassociate nearby article numbers and titles; the APS issue and article
pages agree, so that extraction is not evidence for a different journal
identity. The APS article page exposes the abstract and metadata but requires
credentials for the full text; the publisher PDF request was denied.

A focused search of APS and the arXiv record for a separate correction or
erratum did not locate one. This is a limited search, not evidence that no
correction exists. The published bibliographic identity is verified, but
equation-level comparison with the typeset article remains open. The
discrepancy above is an apparent inconsistency in the accessible arXiv v2
derivation and conclusion only; it is not evidence that the published article
contains an error. Keep the scalar benchmark unsettled unless the publisher
text or an author-verified copy can be inspected.

## Explicit one-interface comparison

Use the source's own one-sided geometry and take E(x)=x exp(−x) for x≥0
and E(x)=0 for x<0. This is continuous, exponentially decaying and smooth
on either side, with one derivative jump. Its Fourier transform is
E-hat(k)=(1+ik)^(−2), so |E-hat(k)|²=(1+k²)^(−2), and its jump J is 1.
The dominated-convergence argument above applies directly; compact support
is unnecessary for this example because the required derivatives are
integrable. It gives, for one scalar degree of freedom in two dimensions
per unit tangential length, the subtracted quadratic coefficient

    K₂(t) − K₂,smooth(t) = [1/(512 sqrt(pi))] t^(5/2) + o(t^(5/2)).

The same coefficient follows independently from the source's one-dimensional
Eqs. (27)–(28): E'''(x)=(3−x)exp(−x) for x>0 and
∫₀∞ E E''' dx=1/2. Their n=3 term is t³/256. Multiplying by the free
one-dimensional tangential trace density (4 pi t)^(−1/2) gives the displayed
coefficient. This calculation uses K₂ itself, not its second derivative.

For the source's inward normals, E^(1)+=1 and E^(1)−=0, so the squared
jump in its Eq. (20) is exactly one; there is one interface and one scalar
fiber. Applying its Eq. (32) with p=1 instead gives
1/(256 sqrt(pi)) times t^(5/2). Thus a tangential heat factor, a second
interface, polarization, and an extra fiber do not explain the difference
in this specific model. The source uses −E where the independent setup uses
+V, but the quadratic term is unchanged by E→−E. This comparison strengthens
the internal discrepancy finding in the linked preprint; it does not settle
the publisher's version, establish an erratum, or validate the Dirac result.
The APS issue index identifies the published article as Physical Review D 70,
045003 (2004), but its full text was inaccessible in the source check.
Remaining to-do list: independently review this prefactor and source
conventions, inspect the publisher's version, justify the Dirac folding,
and revise the comparison only after the normalization is settled.
