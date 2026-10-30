# Exact one-interface scalar benchmark

This independently evaluates the complete-frequency scalar benchmark in
`scalar-jump-normalization-audit.md` at every positive time. It is a check
on the quadratic scalar potential calculation, not a paired Dirac result or
Lean certificate.

Take V(x)=x exp(-x) for x>=0 and V(x)=0 for x<0. With
Vhat(k)=integral exp(-ikx)V(x)dx=(1+ik)^(-2), define the coefficient Q(t)
of lambda² in the relative heat trace of -Delta+lambda V per unit tangential
length. The ordered-Duhamel calculation in the audit gives

    Q(t) = t/(8 pi) integral_0^1 F(t a(1-a)) da,
    F(x) = integral_R [dk/(2 pi)] exp(-x k²)/(1+k²)².       (1)

For x>=0 put G_m(x)=integral_R exp(-x k²)/(k²+m²) dk/(2 pi).
The Gaussian-Laplace representation of the resolvent denominator yields

    G_m(x) = exp(m²x) erfc(m sqrt(x))/(2m),  m>0.

Differentiation with respect to m, justified by dominated convergence,
gives F(x)=-[partial_m G_m(x)]_(m=1)/2, hence the exact expression

    F(x)=1/4 [(1-2x) exp(x) erfc(sqrt(x)) + 2 sqrt(x/pi)].  (2)

In particular F(0)=1/4 and F'(0)=-1/4. Its small-x expansion is

    F(x)=1/4-x/4+(2/(3 sqrt(pi))) x^(3/2)+O(x²).          (3)

The remainder is uniform for x in [0,t/4] as t tends to zero. Since
integral_0^1 [a(1-a)] da=1/6 and
integral_0^1 [a(1-a)]^(3/2) da=3 pi/128, equations (1)--(3) give

    Q(t)=t/(32 pi)-t²/(192 pi)
          + t^(5/2)/(512 sqrt(pi)) + O(t³).                (4)

The first two terms are precisely the smooth Taylor subtractions through
order k². Equation (4) strengthens the earlier o(t^(5/2)) statement for
this explicit example and checks the coefficient without exchanging an
asymptotic series with the unbounded momentum integral. The same answer is
obtained from the one-sided expression in Eqs. (27)--(28) of the
[Bordag--Vassilevich preprint](https://arxiv.org/pdf/hep-th/0404069v2),
including the tangential heat factor, as detailed in the audit. Its
apparent disagreement with the preprint's later displayed coefficient
remains a comparison issue: the publisher's full text and any correction
have not been verified, and no claim about the published version follows.
The physical folding and all Dirac vertices remain separate obligations.
No numerical computation is required.

Remaining to-do list: independently review the benchmark and published
source, resolve physical response and novelty, prepare the manuscript, and
certify supported claims in Lean on GCP.
