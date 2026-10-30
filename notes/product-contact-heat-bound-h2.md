# Product contact bound from uniform H2 regularity

This derives a slightly weaker version of the heat hypothesis used in `product-conversion-contact-collar-cutoff.md` from a uniform second-order elliptic estimate. It applies to the stipulated smooth compact product-orbit cut family; the source boundary realization and the uniform H2 estimate still require verification. It is not a common-regulator theorem or a Lean certificate.

## Uniform smoothing

Let X_delta be two-dimensional compact product-orbit cuts, identified with one fixed smooth reference manifold by the collar diffeomorphisms in `product-frame-moving-cut-uniformity.md`. Suppose the pulled-back metrics and fiber norms are uniformly equivalent, their volumes are bounded, and the Sobolev embedding constants on the reference manifold are fixed. Let L_delta>=0 be self-adjoint, with heat K_delta(s). Assume the common estimate

  ||f||_(H2(X_delta)) <= C (||L_delta f||_2+||f||_2),
                         f in Dom L_delta,                    (1)

for all sufficiently small delta, including the actual mixed square boundary conditions. Smooth strongly elliptic mixed Dirichlet/Robin theory supplies a route to (1) once the full domain, coefficient and uniform collar hypotheses are proved; the principal complementing calculation alone does not do so. The moving-cut product note controls the first-order graph, not automatically (1).

By spectral calculus, ||K_delta(s)||_(2->2)<=1 and ||L_delta K_delta(s)||_(2->2)<=1/(e s). Equation (1), interpolation, and the uniform two-dimensional embedding H^(1+eta)->C0 yield, for each fixed 0<eta<1 and 0<s<=1,

  ||K_delta(s)||_(2->C0) <= C_eta s^(-(1+eta)/2).             (2)

Using the self-adjoint heat factorization K_delta(s)=K_delta(s/2)K_delta(s/2), evaluation and the finite fiber rank give

  tr_fiber K_delta(s)(x,x) <= C_eta s^(-1-eta),
  Tr K_delta(s) <= C'_eta s^(-1-eta).                         (3)

The second estimate follows by integrating the first over uniformly bounded volume. Kernel existence, the diagonal identity and trace formula are justified by the stated elliptic smoothing and smooth compact realization; no uniform claim at s=0 is made. This loses an arbitrarily small power compared with the sharp s^-1 estimate. It does not require a Gaussian kernel bound or a uniform spectral gap.

## Effect on the complete conversion contact

Repeat the long-heat-factor Schatten argument of `product-conversion-contact-collar-cutoff.md`, using (3) in place of its sharp bound. For bounded v and h supported in the collar,

  |I_t(h,v)| <= C_eta t^(-eta) ||h||_2 ||v||_infinity,
                         0<t<=1.                              (4)

The estimate still includes the entire insertion-time interval; whichever heat factor has time at least t/2 controls both Hilbert--Schmidt factors. For a cubic collar h, ||h||_2=O(delta^(7/2)); a log-cubic h adds 1+|log delta|. Hence the difference caused by truncating both source directions is bounded by

  C_eta t^(-eta) delta^(7/2)(1+|log delta|),                  (5)

with the log factor unnecessary for strictly cubic directions. This is a same-operator insertion comparison; changing the cut and its boundary condition requires a separate estimate.

The source's recorded nonzero angular tower has M_n²=n(n+q)/b_sphere² and d_n=2(q+2n), n>=1, including both nonzero signs. The explicit all-mode estimate in `angular-weighted-locality.md` gives

  Theta(t) <= 2 b_sphere²/t + (q+2) sqrt(pi) b_sphere/sqrt(t),
  0 <= -Theta'(t) <= [2/(e t)] Theta(t/2).                     (6a)

Consequently, for 0<t<=1,

  |Theta'(t)| <= C_theta t^-2,
  C_theta=[8 b_sphere²+2 sqrt(2pi)(q+2)b_sphere]/e.             (6b)

The last inequality uses t^(-3/2)<=t^-2. A finite zero-mode contribution has constant heat weight and zero derivative, so it does not change (6b); it must still be retained in the separate geometric and orbit sectors. The termwise differentiation in (6a) is justified by uniform convergence of the exponentially damped series on every positive-time interval. This is the complete recorded tower, not a finite-mode truncation. Matching its stated degeneracies and zero-sector allocation to the actual physical trace remains a separate obligation.

Under this recorded angular spectrum, at the cutoff time t=epsilon the weighted contact error is

  O(delta^(7/2)(1+|log delta|) epsilon^(-2-eta)).             (6)

For example, delta=epsilon^p makes (6) tend to zero whenever p>(4+2eta)/7. This is only one compatibility condition for the contact term. The geometric variation, boundary transport, the Taylor subtractions and all other regulator errors need their own estimates for the same path. Equation (6) is not a proof of common-regulator removal or a bound on the curved remainder. No numerical or Lean certification is claimed.

Remaining to-do list: prove (1) for the actual source and match the angular allocation, combine every mixed term and subtraction on one regulator path, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.