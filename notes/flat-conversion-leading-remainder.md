# Flat geometric and contact remainders do not cancel at order t

This calculation combines the conditional flat per-exterior formulas in [the geometric multiplier](flat-tangent-multiplier.md), [the contact multiplier](flat-product-contact.md), and [the source conversion](tangent-regulator-normalization.md). It subtracts each flat multiplier through x² while retaining the exact common angular factors. It is a diagnostic of that specified subtraction, not a statement about every possible definition of the complete curved P1-D remainder.

Let a=alpha(1−alpha), v=1−2alpha and

    A(x)=integral_0^1 exp(−a x) d alpha,
    I(x)=integral_0^1 [1+x v²/4] exp(−a x) d alpha.

For real even localized H3 directions u,w and Fourier measure dk/(2pi), the flat geometric variation has multiplier I(tk²)/(2pi t), and the product contact has multiplier A(tk²)/(4pi). These are the physical-half factors assumed in the cited notes. The geometric bilinear is symmetric in the two directions, so the source conversion has Fourier multiplier

    Theta(t) I(tk²)/(2pi t) + Theta'(t) A(tk²)/(2pi).          (1)

Define I_2 and A_2 as the Taylor polynomials through x². Direct beta moments give

    I(x)=1−x/12+x²/120−x³/1680+O(x⁴),
    A(x)=1−x/6+x²/60−x³/840+O(x⁴).                            (2)

For example, the cubic I coefficient is integral [a²/8−(2/3)a³] d alpha=1/240−1/210=−1/1680. For all x>=0, both remainders I−I_2 and A−A_2 are bounded by Cx³: use Taylor's integral remainder for the two terms in I, and for A. Thus the product of k³ uhat and k³ what dominates the scaled Fourier integrals by Cauchy–Schwarz. Dominated convergence gives their cubic limits for every H3 pair; no uniform small-x approximation or Fourier truncation is assumed.

The complete massive angular tower satisfies t Theta(t)->2b0² and t² Theta'(t)->−2b0², by the same Riemann-sum argument in [the angular contact note](angular-flat-contact-leading-remainder.md). After subtracting from (1) the two corresponding polynomials I_2 and A_2 with their exact Theta and Theta' factors, the geometric and contact contributions are respectively

    −[b0²/(840pi)] t integral_0^infinity u''' w''' dy + o(t),
    +[b0²/(420pi)] t integral_0^infinity u''' w''' dy + o(t).

Their sum is

    +[b0²/(840pi)] t integral_0^infinity u''' w''' dy + o(t).  (3)

The factor two converting the full-line Parseval pairing to the half-line pairing is included. For u=w with nonzero third derivative, (3) is nonzero. Thus the two flat pieces do not cancel to O(t^(3/2)) under this specified through-x² subtraction. They still tend to zero, consistent with endpoint finite-part removal.

The subtraction used here retains the exact angular factors and is a definite diagnostic, not a claim that it equals the full P1-D subtraction or the source's final finite-part counterterm in every setting. An additional x³ term, a different complete observable, or curved contributions require their own accounting. The flat-to-physical identification, rough curved estimates and common-regulator limit remain open. No Lean or numerical certification is claimed.

Remaining to-do list: match the specified diagnostic to the actual complete P1-D subtraction; establish physical and regulator hypotheses, resolve novelty, prepare the manuscript, and certify supported results in Lean on GCP.
