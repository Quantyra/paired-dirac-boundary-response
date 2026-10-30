# Fixed-period flat tangent boundary coefficients

This combines `fixed-period-flat-hessian-images.md` with the plane tangent
coefficient arguments. It transfers their coefficients to the declared flat
thermal-cylinder model at fixed T>0. It does not establish the physical bolt,
paired source normalization, curved remainder, common regulator or a Lean
certificate.

Use the same rank-two half-trace per-period convention and Fourier measure
as the Hessian-image note. Assume its fixed-insertion positive-time mixed
variation identity, folded-domain identification, and formula for H_T and
H_infinity. Define the common plane local subtraction

  S_t(u,v)=(1/(pi t)) integral_R conjugate(uhat(k)) vhat(k)
              [1-(t k^2)^2/120+(t k^2)^3/840] dk/(2 pi).      (1)

For smooth compact profiles the integral is finite. For H3 profiles it is
also well defined: the highest term is controlled by the L2 products of
k^3 uhat and k^3 vhat, and lower terms by H3 interpolation. The polynomial
is exactly the one used to define R3 in `flat-boundary-coefficients.md`;
it is a declared common subtraction, not an assertion about every physical
counterterm prescription.

For smooth profiles define B_(T,t)=H_T(t)-S_t and B_(infinity,t)=H_infinity(t)-S_t.
The image estimate gives, for fixed T,t0 and 0<t<=t0,

  |B_(T,t)-B_(infinity,t)|
     <= C ||u||_2 ||v||_2 exp[-T^2/(4t)]
                             [t^(-1)+t^(-2)+t^(-3)].           (2)

The subtraction cancels exactly in the difference. For each fixed T>0 the
right side is o(t^N) for every real N. In particular it is o(t^(5/2)) and
also o(t^3 |log t|). The positive-time Fourier multipliers defining H_T,
H_infinity and S_t extend continuously to H3 profiles, by the bounded
form-factor estimates and Cauchy--Schwarz. Equation (2) extends to those
Fourier-defined bilinear forms. Identifying the extended H_T with the actual
rough-family trace Hessian still requires its own trace differentiability
proof; this step is not supplied by L2 continuity alone.

## Cubic and logarithmic terms

Suppose the even profiles satisfy the weighted collar and exterior hypotheses
of `flat-weighted-cubic-leading-limit.md`. Its plane result and (2) imply

  lim_(t->0) t^(-5/2) B_(T,t)(u,v)
    = -15 c_u c_v/(1024 sqrt(pi)),                             (3)

for the Fourier-defined fixed-period form. The full-line-to-half factors and
Fourier conventions are those in the cited coefficient note. This needs no
logarithmic jet and holds equally for periodic or antiperiodic spin structure.
It does not assert the coefficient for a curved or physical trace.

If, in addition, the explicit Fourier-product tail hypothesis (2) of
`flat-boundary-coefficients.md` holds, its plane expansion and (2) give

  B_(T,t) = -15 c_u c_v/(1024 sqrt(pi)) t^(5/2)
       -(c_u d_v+d_u c_v)/(70 pi) t^3 log(t) + O(t^3).         (4)

The O(t^3) constant may depend on the fixed period and profiles. The original
weighted bound alone does not specify the logarithmic jet or guarantee that
Fourier-product hypothesis; no such implication is claimed. Both (3) and (4)
retain the complete thermal sum and every normal Fourier frequency.

The exponentially small image contribution remains integrable under the
specified angular/proper-time weights by the Hessian-image note. That fact
is not a proof of the separate curved P1-D subtraction or its uniform
remainder. Fixed thermal period, physical half/copy normalization, bolt,
curved domains and common local restorations still need to be matched.

Remaining to-do list: establish physical response and regulator matching,
settle novelty and scope, complete the manuscript, and certify supported
claims in Lean on GCP.
