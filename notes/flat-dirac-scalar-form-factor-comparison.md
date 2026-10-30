# Flat Dirac and scalar-potential form factors

This is a precise comparison of two full-plane flat model multipliers. It
addresses one possible reduction in `prior-art-derivative-jumps.md`; it does
not establish a general field-redefinition obstruction, physical folding,
curved response, novelty, or a Lean certificate.

Use the rank-two Dirac mixed metric-response multiplier 2 F(x)/(pi t) in
`flat-tangent-multiplier.md`, with x=t k^2, and define

    A(x)=integral_0^1 exp[-alpha(1-alpha)x] d alpha.

For comparison, take the scalar Laplacian -Delta+lambda V(y) on the flat
plane and the potential direction V_u=alpha_0 u'' with constant alpha_0.
The mixed second heat-trace variation is twice the polarized quadratic
Duhamel coefficient in `scalar-jump-normalization-audit.md`. Its nonlocal
momentum dependence, including all frequencies, is a constant multiple of
x^2 A(x)/t; the constant absorbs alpha_0, polarization, scalar fiber rank
and any fixed half-trace convention. A local mixed second potential vertex
proportional to u,w and their derivatives contributes a polynomial in x to
this flat translation-invariant multiplier. In particular, the comparisons
below allow an arbitrary polynomial of degree at most three, matching the
subtractions used to define R3 in the candidate tangent calculation.

The two analytic expansions at x=0 are

    F(x)=1 - x^2/120 + x^3/840 - x^4/10080
           + x^5/166320 + O(x^6),
    x^2 A(x)=x^2 - x^3/6 + x^4/60 - x^5/840 + O(x^6).  (1)

The second follows from beta integrals. For n>=2 the coefficient of x^n
in F is (-1)^(n+1)(n-1)n!/[2(2n+1)!], obtained directly from
F(x)=1/2+(1/2) integral (1+a x)exp(-a x)d alpha.

If F(x)=P_3(x)+C x^2 A(x) for any constant C and polynomial P_3 of degree
at most three, comparison of the x^4 coefficients requires C=-1/168. The
x^5 coefficient on the scalar side is then 1/141120, whereas that of F is
1/166320. They differ. Therefore no constant scaling, fixed fiber or
polarization factor, or local subtraction through degree three can identify
these two full momentum-dependent multipliers. The conclusion holds equally
for the R3 subtraction of F and the corresponding subtraction of x^2 A.

This test is narrower than an equivalence theorem: it examines the specific
linear potential V_u=alpha_0 u'', with fixed unperturbed Laplacian and local
terms of the stated degree. More general potential directions, nonlocal or
parameter-dependent transformations, and transformations that also vary the
measure or principal symbol require independent analysis. A mismatch of form
factors alone does not show that any particular boundary coefficient is new;
individual coefficients can agree even when full functions differ. The
scalar jump benchmark's published-version normalization remains unresolved.
No numerical computation is used.

Remaining to-do list: finish the exact physical operator and boundary
comparison, assess prior art and novelty, prepare the manuscript, and certify
supported claims on GCP.