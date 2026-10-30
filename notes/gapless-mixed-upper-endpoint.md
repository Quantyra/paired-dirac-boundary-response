# Gapless mixed upper endpoint by positivity and interpolation

This extends the positive, undifferentiated exhaustion argument in `gapless-exhaustion-localized-tail.md` to the complete mixed endpoint in `physical-product-mixed-cutoff-bridge.md`, under explicit uniform hypotheses. It avoids the uniform spectral gap ruled out in `conformal-interpolation-gap-loss.md`. It is not yet a physical theorem: weighted trace convergence, complex bounds, domain matching and zero-kernel assumptions remain to be verified.

Let theta range over a compact set, such as the interpolation interval [0,1]. Let L_(n,theta,x)>=0 be real-parameter cut operators, and L_(theta,x)>=0 their limiting operators, with x=(x1,x2) in a compact real square Q=[-rho/2,rho/2]^2. Let S_n(theta), S(theta) be self-adjoint weights; unbounded limiting weights are permitted only when all displayed localized products are well defined trace-class operators. Put

 H_n(theta,x,t)=S_n exp(-t L_(n,theta,x)) S_n,
 H(theta,x,t)=S exp(-t L_(theta,x)) S.                    (1)

Assume, for both square partners independently:

1. For each t>0, H_n(theta,x,t) converges to H(theta,x,t) in trace norm uniformly on [0,1] times Q; the limiting trace is continuous there.
2. Each limiting operator has trivial kernel, and S exp(-t0 L/2) is Hilbert--Schmidt for some t0>0 at each parameter.
3. For every n,theta and t>=t0, the scalar trace F_n(theta,z,t)=Tr H_n(theta,z,t) has a holomorphic continuation to a neighborhood of the closed complex polydisc |zi|<=rho and satisfies |F_n(theta,z,t)|<=M, with M independent of n,theta,t. This continuation is the desired mixed heat family with a fixed weight, not an assertion that a non-self-adjoint heat operator is positive.

For fixed real (theta,x), the spectral theorem and the Hilbert--Schmidt condition imply Tr H(theta,x,t)->0 as t->infinity. These traces are nonnegative and decrease in t. By continuity and Dini's theorem on the compact parameter set, the convergence is uniform in (theta,x). Fixed-time uniform trace-norm convergence and monotonicity of each positive cut heat imply

 lim_(T->infinity) limsup_(n->infinity)
    sup_(theta,x in Q,t>=T) Tr H_n(theta,x,t)=0.          (2)

Indeed, for each fixed T, all t>=T are bounded by the trace at T, whose n-limsup is bounded by the limiting supremum at T. The order of limits is essential.

Apply the centered mixed-difference argument of `real-to-mixed-cut-interpolation.md` to F_n at each theta and t: the real supremum in (2) is delta_(n,T), while the complex supremum is M. It follows that

 lim_(T->infinity) limsup_(n->infinity)
   sup_(theta,t>=T) |partial_1 partial_2 F_n(theta,0,t)|=0. (3)

The centered difference captures the entire mixed derivative, including both ordered vertices and the mixed second vertex; it does not rely on positivity of those individual terms. Integrating (3) over theta and applying it to both partners gives vanishing of the corresponding weighted mixed upper endpoint along the stated iterated exhaustion. For a sign-changing fixed insertion b, split it into positive and negative parts and verify all assumptions separately for S=|b_+|^(1/2) and S=|b_-|^(1/2). The insertion and weights must be fixed in the differentiated variables, or their derivatives require additional terms.

A useful sufficient zero-kernel reduction is available at the operator level. If A=E D E has its actual composition domain, E is bounded and injective, and ker D=0, then A psi=0 implies D E psi=0 and hence psi=0. The partner needs the corresponding adjoint-domain identity and ker D*=0. This implication does not prove those domain or kernel hypotheses for the physical source.

No claim is made that assumptions 1--3 follow from a gap, that the complex bound holds for the unbounded logarithmic insertion, or that the r and mode sums are controlled. The result establishes endpoint convergence only, not integrability of a proper-time tail or the ultraviolet subtraction. No Lean certification is claimed.

Remaining to-do list: verify weighted convergence, complex bounds, zero kernels and partner domains for the source, prove the ultraviolet response and regulator, complete novelty and manuscript, and certify supported claims on GCP.
