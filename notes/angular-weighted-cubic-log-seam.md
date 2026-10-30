# Cubic-log seam for the full angular flat diagnostic

This extends `angular-weighted-cubic-seam.md` for its explicitly subtracted
flat geometric diagnostic B_t. It assumes the pure localized cubic/log
profiles in `localized-fourier-tails.md`, the stated rank-two half-trace
normalization, and the recorded massive tower. It is not a physical action
coefficient or a Lean certificate.

Write C=2 b0², Q=c_u d_w+d_u c_w, and define A,F,G and the Taylor
remainders R_A,R_F,R_G as in the cubic note. Then as t decreases to zero,

 B_t = -27 C c_u c_w t^(3/2)/(1024 sqrt(pi))
       - C Q t² log(t)/(35 pi) + O(t²).                    (1)

The O(t²) constant may depend on the fixed cutoffs, profile coefficients,
q and b0. It is not a uniform family estimate.

## Angular remainder

For p=0,1,2 let

 f_p,t(x)=2(q+2x) [x(x+q)/b0²]^p exp[-t x(x+q)/b0²], x>=0.

Its integral is exactly 2b0² p! t^(-p-1), by the change of variable
v=t x(x+q)/b0². One-step Euler--Maclaurin with the second periodic
Bernoulli remainder gives

 |sum_(n>=1) f_p,t(n)-integral_0^infinity f_p,t(x) dx|
    <= |f_p,t(0)|/2 + |f_p,t'(0)|/12
       + (1/12) integral_0^infinity |f_p,t''(x)| dx.      (2)

The bound applies for fixed q>=0, b0>0 and 0<t<=1. Scaling x=b0 y/sqrt(t)
and differentiating the explicit polynomial-Gaussian expression gives
integral |f_p,t''|=O(t^-p), and the two endpoint terms are O(t^-p).
Thus

 Theta=C/t+O(1),   -t Theta'=C/t+O(1),
 t² Theta''=2C/t+O(1).                                      (3)

This is stronger than the leading Riemann-sum limits and shows that the
angular error multiplying each subtracted Fourier integral is O(t^(5/2))
for the cubic tail. In particular it cannot hide the t² log(t) term.
A finite zero sector changes only an O(1) weight and is likewise lower order.

## Fourier coefficient

The leading angular combination has kernel R=R_F+R_G+2R_A. Its x^4
coefficient is

 -1/10080 -1/4320 +2/15120 = -1/5040.                    (4)

Here A has coefficient 1/15120, G=(1+x/4)A has coefficient -1/4320,
and F has coefficient -1/10080. The Fourier product for the selected
profiles is

 conjugate(uhat(k)) what(k)=144 c_u c_w |k|^-8
                             -288 pi Q |k|^-9+O(|k|^-10).

For the first term, the scaled integral gives exactly the leading coefficient
in the cubic note, with O(t²) from bounded frequencies and the cutoff of the
limiting integral. For the second, split K<=|k|<=t^-1/2 and the remaining
frequencies. On the intermediate range use (4): both Fourier signs and
measure dk/(2pi) turn the leading part into

    (C/(pi² t²)) (-288 pi Q)(-t^4/5040)
        integral_K^(t^-1/2) dk/k
     = - C Q t² log(t)/(35 pi) + O(t²).

The next Taylor term and the high-frequency range are O(t²), using
R(x)=O(x^4) near zero and O(1+x³) at infinity. The O(|k|^-10) product
remainder and bounded frequencies are also O(t²) or smaller. Combining
these estimates with (3) proves (1) for this diagnostic.

The weighted mass/log class alone does not select Q: the logarithmic jet
must be specified as in the pure profiles or supplied with a separately
proved Fourier remainder. Nor does (1) identify the physical counterterms,
contact, common-regulator limit or curved response. The logarithmic term
cannot be transferred to those observables without that matching. No
numerical run was used.

Remaining to-do list: match the physical subtraction and contact, establish
the curved regulator and geometry, resolve novelty, prepare the manuscript,
and certify the supported claims in Lean on GCP.
