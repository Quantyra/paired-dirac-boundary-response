# Flat conversion seam with the geometric and contact terms combined

This computes the specific source-conversion diagnostic in
`flat-conversion-leading-remainder.md` after subtracting both Fourier
kernels through x³. The calculation is conditional on that note's flat
folding, source normalization and conversion identity; it is not the full
curved P1-D remainder, a physical common-regulator theorem or a Lean
certificate.

For x=t k², let A(x) and I(x) be the flat contact and smeared geometric
kernels in the cited note. Their through-x³ remainders are R_A and R_I.
For the massive tower Theta and the real even profiles u,w, the subtracted
conversion is

 J_t = integral_R (dk/2pi) conjugate(uhat(k)) what(k)
       [Theta(t) R_I(x)/(2pi t) + Theta'(t) R_A(x)/(2pi)]. (1)

Both terms belong to the same fixed-cutoff conversion observable; the
formula follows from its symmetrized smeared geometric variation and
2 Theta' times the product contact. It is different from the mixed heat
Hessian diagnostic in `angular-weighted-cubic-log-seam.md`. Assume the
selected pure cubic/log profiles and set C=2b0²,
Q=c_u d_w+d_u c_w. Then

 J_t = -3 C c_u c_w t^(3/2)/(1024 sqrt(pi))
       - C Q t² log(t)/(420 pi) + O(t²).                   (2)

The O(t²) constant depends on the fixed profiles, cutoffs, q and b0.

## Derivation

The angular estimates in `angular-weighted-cubic-log-seam.md` give
Theta=C/t+O(1) and Theta'=-C/t²+O(t^-1). Thus the leading weighted
kernel in (1) is C(R_I-R_A)/(2pi t²). Their cubic-seam moments are

    J_A=integral_0^infinity R_A(s²) ds/s^8=pi^(3/2)/12288,
    J_I=integral_0^infinity R_I(s²) ds/s^8=pi^(3/2)/24576.

To see the second identity, use I=G+xA', G=(1+x/4)A. The cubic note
gives J_G=-pi^(3/2)/4096. Taylor subtraction for xA' gives

    J_(xA') = (4 sqrt(pi)/15) integral_0^1 a^(7/2) d alpha
             = 7 pi^(3/2)/24576,

where a=alpha(1-alpha). Consequently J_I-J_A=-pi^(3/2)/24576.
The Fourier product has leading term 144 c_u c_w |k|^-8; scaling
s=sqrt(t)|k| with both frequency signs gives the first coefficient in (2).

For the next term, the x^4 Taylor coefficients are

    [x^4] I=1/30240,  [x^4] A=1/15120,
    [x^4] (I-A)=-1/30240.

The selected profile product has -288 pi Q |k|^-9 as its next tail.
Integrating the leading Taylor term over K<=|k|<=t^-1/2 gives the
logarithmic coefficient in (2). Taylor errors, the high-frequency and
bounded-frequency pieces and the O(|k|^-10) Fourier tail are O(t²).
The O(1) angular-weight errors multiply an O(t^(5/2)) cubic Fourier
remainder and therefore cannot alter this logarithmic term.

The contact by itself has the seam terms derived in
`angular-weighted-contact-seams.md`; (2) combines it with the correct
smeared variation, not with the distinct heat Hessian. The x³ local term
removed here is part of this specified diagnostic. Whether it is exactly
one of the physical local counterterms, and how the finite remainder joins
the full angular/thermal action and cutoff limit, require separate proof.
No numerical computation is used.

Remaining to-do list: match the actual physical subtraction, contact and
regulator, verify geometry, decide novelty, prepare the manuscript, and
certify the supported claims in Lean on GCP.
