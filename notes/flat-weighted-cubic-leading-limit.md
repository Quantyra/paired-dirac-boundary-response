# Leading flat cubic limit for the weighted collar class

This extends the leading cubic part of `flat-boundary-coefficients.md` to
weighted remainders without assuming its full Fourier-product expansion.
It remains an ordinary flat-model argument, conditional on that note's
multiplier and physical-half normalization. It does not establish the
logarithmic coefficient, the physical paired realization, or a curved result.

Let u,w be fixed real even compactly supported functions, smooth away from
zero, with exterior fourth derivatives in L1, and on a collar suppose

    u(x)=c_u |x|^3+r_u(|x|),
    |r_u^(j)(y)| <= C y^(4-j)(1+|log y|),  j=0,...,4,

and similarly for w. The hypotheses permit the weighted and oscillating
remainders discussed in `weighted-log-jet-nonuniqueness.md`. Derivatives are
classical away from zero; the assumed exterior regularity prevents additional
singular fourth derivatives at other points.

The one-sided bounds make r and its first three derivatives tend to zero at
the origin, while r'''' is locally integrable. Hence, in distributions,

    u''''=12 c_u delta_0+f_u,     f_u in L1(R).          (1)

The coefficient 12 is the jump of the third derivative of |x|^3. Compact
localization and the stated exterior regularity account for all remaining
terms in f_u. With Fourier convention hat u(k)=integral exp(-ikx)u(x) dx,
(1) and the Riemann-Lebesgue lemma give

    k^4 hat u(k)=12 c_u+hat f_u(k),
    k^4 hat u(k) -> 12 c_u as |k|->infinity,           (2)

and the left side is bounded for all k. The same holds for w. This uses no
rate for the o(1), and imposes no logarithmic jet.

Let B_t and R3 be exactly as in equation (1) of
`flat-boundary-coefficients.md`. Set Q(k)=conjugate(k^4 hat u(k))
(k^4 hat w(k)). The global remainder bounds give an integrable dominating
function: R3(s^2)/s^8 is bounded near zero and O(s^-2) at infinity.
Changing variables s=sqrt(t)k separately on both half-lines yields

    t^(-5/2) B_t(u,w)
      = (1/pi^2) integral_0^infinity [R3(s^2)/s^8]
          (Q(s/sqrt(t))+Q(-s/sqrt(t)))/2 ds.            (3)

For s>0, (2) gives Q(+-s/sqrt(t))->144 c_u c_w. Dominated convergence
and the independently evaluated integral J=-5 pi^(3/2)/49152 in
`tangent-integral-argument.md` therefore prove

    lim_(t->0) t^(-5/2) B_t(u,w)
      = (144/pi^2) J c_u c_w
      = -15 c_u c_w/(1024 sqrt(pi)).                    (4)

In particular, the local-local conclusion of `flat-shrinking-mixed-seam.md`
holds for this weighted class on ell=t^p, 0<p<1/2: its mixed and
complement-complement estimates require only the collar and exterior bounds,
and (4) supplies the full-profile limit. The previous stronger Fourier-product
assumption is unnecessary for this leading coefficient. It remains relevant
to the separately claimed t^3 log(t) coefficient, for which (2) provides no
sufficient rate or unique logarithmic amplitude.

The physical-half factor, paired folding, all physical vertices and the
curved common-regulator limit remain independent obligations. This leading
flat limit is not a physical admission margin. No numerical computation is
used and this argument is not Lean certified.

Remaining to-do list: prove physical domain and response matching, resolve
prior art, prepare the manuscript, and certify supported claims on GCP.