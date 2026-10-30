# Gaussian bounds for a capped reflected cylinder

This verifies sufficient kernel hypotheses for `localized-reflected-contact-trace-class.md` on a specified smooth capped cylinder, and states the extra convergence needed for the rough reflected limit. It does not establish that this cap is the physical bolt or that the source operator has been identified with the stipulated geometric square.

Let X=R x S1_T with metric g=dy²+f(y)^(-2) d tau². Assume T>0, 0<m<=f<=M, and |f'|+|f''|<=K globally. Assume f is smooth, the cap agrees with the source collar on a fixed neighborhood, and the rank-two geometric Dirac square L is a nonnegative self-adjoint realization on a Hermitian spin bundle with a metric connection. A fixed unitary twist is allowed when the Weitzenbock endomorphism remains uniformly bounded below.

The metric is uniformly equivalent to the flat cylinder, so it is complete. Its scalar curvature R=2f''/f-4(f'/f)^2 is uniformly bounded; in dimension two this gives a uniform lower Ricci bound. Flat-cylinder comparison also gives uniform lower area bounds for small balls and Gaussian-volume upper bounds, with constants depending on m,M,T and a fixed t0. The standard scalar heat-kernel Gaussian upper estimate on a complete manifold with Ricci bounded below and local noncollapsing therefore gives, for 0<t<=t0,

  k_g(t,x,z) <= C t^-1 exp[-dist_g(x,z)^2/(c t)].       (1)

The constants are uniform on families with common m,M,K,T,t0. The required scalar estimate is a classical heat-kernel theorem; see the historical discussion and complete-manifold references in [Buzano and Yudowitz](https://arxiv.org/abs/2007.07112).

Write L=nabla* nabla+W with W>=-B Id. Semigroup domination for a metric connection and a lower-bounded endomorphism gives

  |K_L(t,x,z)|_op <= exp(Bt) k_g(t,x,z)                  (2)

for the kernel in compatible bundle frames. This is the standard covariant Schrodinger domination principle; see [Bruning and Gunesu](https://arxiv.org/abs/1606.00651). For the untwisted Dirac square W=R/4, so B follows from the above curvature bound. Equation (2), combined with (1), gives the kernel bound required in the localized trace lemma. Passing from geometric L2 to the source's radial half-density frame is unitary; because f is uniformly bounded above and below, the corresponding kernels and measures change the constants only by uniform factors.

For the convolution hypothesis of that lemma, let q=ab/(a+b). Since 1/a+1/b=1/q, uniform equivalence to the flat cylinder bounds the integral by a constant times the flat-cylinder Gaussian integral. For 0<q<=t0 this is <=C0 q, with constants depending on T,t0 and the equivalence bounds. Thus both hypotheses hold for this smooth geometric capped model.

For the reflected C2,1 limit, a sufficient additional route is a sequence of smooth capped metrics and connections with the same bounds and a common Hilbert-space identification, whose closed forms converge strongly enough to imply strong heat-semigroup convergence. Uniform Gaussian estimates then pass to a distributional kernel limit by weak-* compactness on bounded coordinate sets, giving the same almost-everywhere bound for a representative of the limiting kernel. Establishing this form convergence, the precise spin/half-density identification, and uniform cap and twist bounds for the source is separate work; pointwise convergence of heat kernels is not assumed here.

This is a sufficient model argument, not a proof of the source's physical half-domain, gluing to the bolt, angular normalization, common regulator, or P1-D remainder. No Lean certification is claimed.

Remaining to-do list: verify the source cap, form convergence and bundle hypotheses, prove gluing and full response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.