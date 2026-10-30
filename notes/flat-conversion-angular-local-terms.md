# Local terms in the flat conversion with the magnetic tower

This combines `magnetic-angular-subleading-asymptotics.md` with the declared
flat geometric/contact conversion in `flat-conversion-leading-remainder.md`.
It gives the divergent and finite local terms for that specific flat endpoint
observable, retaining the full nonzero-mode angular tower. It is not an
identification of the source's full curved subtraction, a physical finite
part, or a Lean certificate. No numerical execution is needed for the
argument; the finite-sum diagnostic of the angular coefficients is separate.

Let q>=0 and b>0 be fixed. Let Theta be the n>=1 tower with
M_n^2=n(n+q)/b^2 and d_n=2(q+2n), including both nonzero angular signs once.
For real even H3(R) profiles u,v define

  U_j=integral_R u^(j)(y) v^(j)(y) dy,  j=0,1,2.              (1)

Use the rank-two physical-half flat convention and Fourier normalization of
the conversion note. Its specified plane endpoint-conversion bilinear is

  J_t'' = (1/(2 pi)) integral_R conjugate(uhat(k)) vhat(k)
                   [Theta(t) I(tk^2)/t + Theta'(t) A(tk^2)]
                         dk/(2 pi).                            (2)

Here A is the scalar contact factor, I=(1+A)/2 is the flat geometric factor,
and this is the endpoint conversion, not the distinct P1-D remainder. Put

  C0=-q-1/3,       C1=q^2/6-1/30.                             (3)

The result for this declared observable is

  J_t'' = (1/(2 pi t)) [C0 U0 + (b^2/6) U1]
       + (1/(2 pi)) [-C0 U1/12 - b^2 U2/60 + (2 C1/b^2) U0]
       + O(t) ||u||_(H3) ||v||_(H3),          t down to 0.       (4)

The implicit constant depends on fixed q,b and a chosen upper time bound.
Equation (4) supplies the complete through-finite local expansion for (2)
under these assumptions; it does not prove that the physical action uses the
same subtraction, period, fields or trace normalization.

## Derivation and uniform frequency control

The angular note proves separately, as t decreases,

  Theta=2b^2/t+C0+(C1/b^2)t+O(t^2),
  Theta'=-2b^2/t^2+C1/b^2+O(t).                               (5)

The remainders here are for fixed q,b; the second is not obtained by
formally differentiating the first. For x>=0,

  A(x)=1-x/6+x^2/60+R_A(x),
  I(x)=1-x/12+x^2/120+R_I(x),
  |R_A(x)|+|R_I(x)| <= C x^3.                                (6)

The uniform bound follows from the exponential integral remainder and
I=(1+A)/2; it applies at all Fourier frequencies. Inserting (5)-(6) into
(2), the t^(-2) constants cancel exactly between the two terms. The
remaining 1/t terms are C0 and b^2 k^2/6, and the finite terms are
-C0 k^2/12, -b^2 k^4/60 and 2C1/b^2. Plancherel converts these to (4).

For the error, the leading angular factors multiply the O(x^3) remainders
by O(t^(-2)), yielding O(t k^6). The C0 term beyond x order is bounded by
O(t k^4), and the C1 terms beyond their constants by O(t k^2). The angular
remainders contribute O(t) times uniformly bounded form factors; 0<=A<=1
and 1/2<=I<=1. Cauchy--Schwarz with the H3 norms controls all these terms.
Thus (4) is an all-frequency bound, not a truncated-frequency calculation.

## Zero-mode bookkeeping

If a separately specified zero sector contributes a fixed multiplicity z to
Theta, it leaves Theta' unchanged and adds z I(tk^2)/(2 pi t) to the
multiplier in (2). Under the same H3 assumptions this adds

  z U0/(2 pi t) - z U1/(24 pi) + O(t)||u||_H2||v||_H2.        (7)

This algebra does not decide whether that sector belongs in the physical
conversion. No extra division of the n>=1 multiplicities is introduced.
The finite coefficients in (4) are local spectral terms, not admission
margins or evidence of a wormhole solution.

Remaining to-do list: identify the physical source and zero-sector
normalization, match all curved local counterterms and the regulator, settle
novelty and scope, complete the manuscript, and certify supported claims in
Lean on GCP.
