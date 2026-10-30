# Finite-cutoff bridge for the physical/product congruence

This derives an exact conditional endpoint identity for the congruence in
`physical-product-contact-operator-gap.md`. It does not remove the cutoff,
identify the source's orbit contact, or establish the physical determinant.

On a fixed compact finite cut let D be a closed densely defined first-order
operator on H, with the paired domain and adjoint-domain hypotheses of
`paired-multiplier-domains.md`. Let b be a real bounded scalar whose
exponentials and inverses preserve both domains, and set

  E_r=exp(r b/2),   A_r=E_r D E_r,
  L_r=A_r* A_r,    Lbar_r=A_r A_r*,       0<=r<=1.             (1)

The first-order domains are the declared preserved domains; the square
domains are the actual composition domains. Suppose the fixed-cut heat
families have the form differentiability, trace-class smoothing and cyclic
trace properties needed below. These are explicit hypotheses, not inferred
from a formal principal symbol. For 0<epsilon<T<infinity put

  Gamma_(epsilon,T)(r)=1/2 integral_epsilon^T Tr exp(-t L_r) dt/t. (2)

Differentiating on the common first-order domain gives dot A_r={b,A_r}/2.
Differentiating the quadratic form and using heat intertwining
A_r exp(-t L_r)=exp(-t Lbar_r) A_r yields

  d_r Tr exp(-t L_r)
    =-t[Tr(b L_r exp(-t L_r))
         +Tr(b Lbar_r exp(-t Lbar_r))].                        (3)

The two terms arise from the two factors of A_r; no equality of the partner
traces is assumed. Integrating (3) from epsilon to T gives

 d_r Gamma_(epsilon,T)(r)
  = 1/2 Tr[b(exp(-T L_r)+exp(-T Lbar_r)
                    -exp(-epsilon L_r)-exp(-epsilon Lbar_r))]. (4)

For example, integral_epsilon^T L exp(-tL)dt equals
exp(-epsilon L)-exp(-T L) by spectral calculus. Integrating (4) in r is
the exact difference between the two regulated endpoints. It keeps the
upper endpoint explicitly; zero modes or lack of a uniform gap cannot be
silently discarded. If a domain-preserving unitary grading intertwines
L_r and Lbar_r and commutes with b, the two traces agree, but that is an
additional hypothesis.

For the geometric relation in `physical-product-contact-operator-gap.md`,
set b=log u on a fixed cut, D=D_hat and E_1=u^(1/2). Under the actual
bundle, boundary and unitary identifications, L_1 is the transported
physical positive square and L_0 is the product-frame square. Formula (4)
then states what must be matched before replacing one regulated trace by
the other. It does not imply the two heat traces or finite parts coincide:
the r-integral contains the complete partner heat traces and their endpoint
terms. The fixed-cut boundedness of u and u^-1 is essential; the identity
alone supplies no uniform moving-cut or rough-field estimate. Derivatives
with respect to independent mass/log directions also require differentiating
b, the operators, domains and all local counterterms under justified trace
bounds. The source's physical-half factor, angular/thermal normalization,
LLL allocation and proper-time regulator remain to be matched.

No numerical calculation or Lean certification is claimed. This is not a
wormhole existence or stability statement.

Remaining to-do list: prove the physical identifications and uniform endpoint
and mixed-variation estimates, resolve the curved remainder and novelty,
complete the manuscript, and certify supported claims in Lean on GCP.
