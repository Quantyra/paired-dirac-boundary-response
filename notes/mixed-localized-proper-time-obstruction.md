# Mixed localized bound and the proper-time weight

This checks the role of the fixed-comparator Cauchy estimate in the
proper-time integral. It identifies a limitation of that sufficient bound,
not a divergence of the physical response or a Lean certificate.

Under the hypotheses of `two-direction-complex-heat-smoothing.md` and
`mixed-localized-heat-cauchy-bound.md`, let n be the Schatten factorization
integer and let both directions be localized to scale ell. For a bounded
insertion, the mixed derivative is bounded in absolute value by

    C ell^4 t^(-n/2),       0<t<=1.                         (1)

Suppose, independently, that comparison with the physical collar requires
the usual Gaussian separation regime ell=t^p with 0<p<1/2, and that its
uniform constants are controlled as in the conditional locality estimate in
`lapse-cubic-localization-scales.md`. Under the proper-time weight dt/t²
used in the source's tangent remainder test, the right side of (1) gives

    C t^(4p-n/2-2) dt.                                      (2)

Its integral at zero is finite only if p>(n+2)/8. On the two-dimensional
orbit, the elementary H1 Schatten embedding requires an integer n>2, hence
n>=3 and (n+2)/8>=5/8. This is incompatible with p<1/2. On any compact
model with dimension d>=2 and n>d the conflict persists. The endpoints do
not help: equality in the integrability inequality gives a logarithmic
divergence of the bound, while p=1/2 does not produce increasing Gaussian
separation.

Even an independently proved sharper replacement of t^(-n/2) by the
self-adjoint trace scaling t^(-d/2) would yield the sufficient condition
p>(d+2)/8, which is incompatible with p<1/2 for d>=2. That sharper scaling
is not established for the complex derivative by this calculation. The
actual subtracted mixed response may have cancellations or local spatial
volume gains not represented in (1), and a different limit or localization
strategy may work. In particular, failure of this upper bound to be
integrable proves neither divergence nor failure of the requested theorem.

The cubic localization power ell^4 includes derivative costs of both
first-order form vertices; it cannot be replaced by ell^6 based solely on
the amplitudes of the scalar directions. Equation (2) also concerns two
shrinking directions, not a fixed physical direction or its complement.
Thus this estimate alone cannot establish the uniform t^(3/2) subtracted
remainder, the common regulator limit, or the complete angular response.
No numerical calculation is used.

Remaining to-do list: prove the necessary cancellations or sharper local
subtracted estimate, control fixed-direction complements and the physical
regulator, resolve prior art, prepare the manuscript, and certify supported
claims in Lean on GCP.
