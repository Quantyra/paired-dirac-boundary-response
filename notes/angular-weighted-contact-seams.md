# Cubic and logarithmic seams in the angular-weighted flat contact

This evaluates the flat product contact from `flat-product-contact.md` using
the same rank-two per-exterior convention, selected pure seam profiles and
massive angular tower as `angular-weighted-cubic-log-seam.md`. It is a
specified mathematical subtraction, not an identification of the complete
physical conversion or a Lean certificate.

Let A(x)=integral_0^1 exp[-alpha(1-alpha)x] d alpha and let R_A be its
remainder after subtraction through x³. Define the contact diagnostic

    C_t = Theta'(t)/(2pi) integral_R (dk/2pi)
                      conjugate(uhat(k)) what(k) R_A(tk²).  (1)

This is 2 Theta' times the contact in the cited flat note after its own
through-x³ Taylor subtraction, retaining the exact angular factor. Let
C=2b0² and Q=c_u d_w+d_u c_w. Then, for the pure compactly localized
cubic/log profiles and fixed q,b0,

    C_t = -3 C c_u c_w t^(3/2)/(512 sqrt(pi))
          - C Q t² log(t)/(210 pi) + O(t²).                 (2)

The angular estimate Theta'=-C/t²+O(t^-1) is proved in the geometric
cubic-log note. The Fourier product there is
144 c_u c_w |k|^-8 -288 pi Q |k|^-9+O(|k|^-10). Scaling
s=sqrt(t)|k| in the cubic term and using

    integral_0^infinity R_A(s²) ds/s^8 = pi^(3/2)/12288

therefore gives the first term in (2). The O(t^-1) angular error is
O(t^(5/2)) for this contribution.

For the logarithmic term, R_A(x)=x^4/15120+O(x^5). On
K<=|k|<=t^-1/2, both frequency signs give

    [Theta'(t)/(2pi²)] (-288 pi Q) (t^4/15120)
       integral_K^(t^-1/2) dk/k.

With Theta'=-C/t²+O(t^-1), this is the logarithmic term in (2) plus
O(t²). The Taylor error, high-frequency region, bounded frequencies and
O(|k|^-10) Fourier remainder are O(t²) or smaller, using R_A(x)=O(x^4)
near zero and O(1+x³) at infinity. The finite zero angular sector has zero
Theta' and contributes no contact here.

This result makes the contact's leading seam power explicit under a
through-x³ subtraction. It cannot simply be added to the geometric heat
Hessian in the cubic-log note as a claim about the source conversion:
the source conversion uses a particular smeared first variation, while the
geometric note computes a mixed heat Hessian. Their observable-level
relation, local counterterms and all normalization factors must first be
matched. A different subtraction changes the diagnostic. No numerical
calculation was used.

Remaining to-do list: derive the physical observable-level combination,
match its counterterms and regulator, verify the geometry, decide novelty,
prepare the manuscript, and certify supported claims in Lean on GCP.
