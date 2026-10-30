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

Remaining to-do list: independently audit the Duhamel prefactor and source
conventions, seek a primary-source cross-check, justify the Dirac folding,
and revise the comparison only after the normalization is settled.
