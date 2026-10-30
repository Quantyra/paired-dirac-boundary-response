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

The integrals are 3 pi/128 and 2 sqrt(pi)/3, respectively. This derivation
also requires a careful cutoff and remainder justification. If its
normalization holds, polarization, rank two, and the proposed physical half
give 9/(64 sqrt(pi)) c_u c_w, half the source-based value in the comparison
note. Neither value is asserted as established until the discrepancy and the
physical folding hypotheses are independently resolved.

Remaining to-do list: audit both derivations and source conventions, seek an
independent primary-source cross-check, justify cutoff remainders and folding,
and revise the comparison only after the normalization is settled.
