# Prior-art comparison: resummed semitransparent surface form factors

Status: focused primary-source comparison for the S001 novelty audit, not a
novelty verdict or a Lean certificate. Source: S. A. Franchino-Viñas,
[arXiv:2208.11979v2](https://arxiv.org/html/2208.11979v2), 3 March 2023,
with the version history and published-article relationship recorded on its
[arXiv abstract page](https://arxiv.org/abs/2208.11979). The related journal
DOI is 10.1088/1751-8121/acbd26.

## Exact scope and overlap

Equation (1.3) studies the scalar flat-space operator

    D=-∂²+λ δ(x_d-L)-ζV(x),

with a flat codimension-one interface and a sufficiently smooth, suitably
decaying potential V. Proposition 1 gives the unperturbed delta-interface
kernel; Proposition 2 and Corollary 3 provide an integral equation and
potential expansion. Theorem 2, Eq. (3.2), gives the one-dimensional
first-order smeared trace in terms of bulk and surface form factors. Theorem
3, Eq. (4.1), gives the one-dimensional second-order trace after neglecting
total derivatives. Both are resummed in the interface coupling λ; the
paper discusses higher-dimensional applications and surface form factors in
section 6. These are scalar-potential results; the theorem statements should
not be silently generalized to a rough metric or a paired Dirac domain.

Section 5.1 relates a large-λ limit to Dirichlet half-space conditions.
Section 5.2, Eqs. (5.9)–(5.10), states the relation between an interface
coefficient and the sum of Dirichlet and Robin coefficients, with Robin
parameter S=-λ/2, under the described doubled-space and reflection
assumptions. The paper explicitly restricts its concrete application of that
relation to even V and smearing f. This is a close methodological comparator
to the paper candidate's reflection and half-space calculation: neither
surface form factors, all-order derivative resummation at fixed perturbative
order, nor a Dirichlet/Robin relation can be presented as new by itself.

## Exact differences to test

The candidate's tangent mixed response arises from scalar conformal
congruences of a first-order Dirac operator, so the square has a varying
principal symbol, first-order Clifford terms and a second/density vertex.
It uses a paired projector and its complementary adjoint rather than an
assumed scalar delta interface. The source's scalar V perturbation and its
second-order formula do not directly identify these vertices or prove their
paired domain behavior. Conversely, those differences alone do not prove
novelty: a reduction to scalar form factors plus known boundary relations
could account for some or all of the tangent result.

The source's smooth-potential hypothesis and omission of total derivatives
in Theorem 3 make a direct application to an even cubic seam or weighted
logarithmic jet and its distributional interface terms an additional
argument. They do not establish that no other paper treats those profiles.
Before a novelty decision, compare the complete transformed Dirac vertex,
including contact and density terms, with Eqs. (3.2), (4.1), and the
relevant form-factor symbols; retain the actual mixed boundary data and
normalization. The unresolved scalar-jump prefactor in
[the normalization audit](scalar-jump-normalization-audit.md) is a separate
issue, not resolved by this source.

This comparison strengthens the need for a precise, proved distinction; it
does not settle whether the proposed contribution is independent or
publishable. No numerical computation is needed for this source audit.

Remaining to-do list: execute the operator/vertex reduction and logarithmic
prior-art search, settle the theorem scope and normalization, and certify
supported claims in Lean on GCP.
