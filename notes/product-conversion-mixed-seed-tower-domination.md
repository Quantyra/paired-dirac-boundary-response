# Positive-time domination of the differentiated conversion tower

The later [neighborhood argument](product-conversion-neighborhood-tower-derivative.md) supplies a uniform derivative majorant and the termwise interchange for the stipulated real finite-cut model. This note retains the seed estimate and its independent scope.

This addresses termwise differentiation of the source conversion at the product seed, using the actual geometric and contact contributions. It strengthens the fixed-time assumptions in `graded-mass-conversion-positive-cut.md` for the stipulated compact skew-adjoint model. It does not establish the physical trace, a curved-family theorem, or the ultraviolet finite part.

## Uniform form vertex

Let Q_delta be skew-adjoint with the product-orbit domains and uniform first-order graph hypotheses of `product-mass-conversion-h2-heat-tower.md`; put L_delta=Q_delta*Q_delta. Let M>=0 and H_M=1+L_delta+M². For real u,v with uniform W1,infinity bounds, consider the source interpolation A_r(b) at b=0, where A_r(0)=Q_delta+M and P_r(0)=L_delta+M². Its directional first-order derivative is

  A'_r[v]=-(r/2)(v Q_delta+Q_delta v)+(1-r)M v.             (1)

The weak product rule and bounded [Q_delta,v] give

  ||A'_r[v] f|| <= C ||v||_W1,infinity ||H_M^(1/2) f||,
  ||(Q_delta+M) f|| <= sqrt(2) ||H_M^(1/2) f||,             (2)

uniformly in r, M and cut, assuming uniform Clifford and multiplier bounds. Thus the derivative of the positive-square form satisfies

  |q'_r,M[v](f,g)| <= C ||v||_W1,infinity
       ||H_M^(1/2) f|| ||H_M^(1/2) g||.                     (3)

Equivalently q'=H_M^(1/2) B_(r,M,v) H_M^(1/2) as a form, with ||B_(r,M,v)||<=C||v||_W1,infinity. This includes the mass and commutator terms; it does not assume a common square domain. Assume the smooth-cut form-Duhamel derivative formula and trace cyclicity, as in the cited source-model note.

## Trace estimate through both time endpoints

For fixed t>0 put K_s^M=exp[-s(L_delta+M²)]. In the derivative of Tr[M_u K_t^M], split the longer of the two heat factors in half. If a=t-s>=t/2, one factor of K_(a/2)^M is trace class, while the two energy-weighted factors are bounded. Spectral calculus gives

  ||H_M^(1/2) K_x^M|| <= C(1+M+x^(-1/2)),                 (4)

and the trace-class factor has norm at most Tr K_(t/4)^M. The other half of the time interval is treated by cyclicity and splitting K_s^M. Schatten Holder and (3) therefore give

  |partial_v Tr[M_u exp(-t P_r(b))]_(b=0)|
    <= C ||u||_infinity ||v||_W1,infinity
       t (1+M+t^(-1/2))² Tr exp[-(t/4)(L_delta+M²)].         (5)

The integral of each endpoint singularity x^(-1/2) is finite. Formula (5) is a bound on the derivative of the complete heat operator, including its form vertex; it is not a bound obtained by treating an unbounded differential vertex as a bounded L2 operator.

For t in a fixed compact interval [epsilon,T] with epsilon>0, assume sup_delta Tr exp[-(epsilon/4)L_delta]<infinity, which follows for the stipulated small smooth cuts from the uniform H2 route. Then (5) is bounded by a constant times (1+M)^2 exp(-epsilon M²/4), uniformly in cut and r. The recorded angular masses M_n²=n(n+q)/b_sphere² and degeneracies 2(q+2n) make the sum of this majorant finite. The nonzero angular modes are not truncated; a finite zero sector must be included separately.

Consequently, the sums of the per-mode derivatives at the seed converge absolutely and uniformly on [epsilon,T]. To identify them with derivatives of the summed family, one must additionally prove a summable derivative bound throughout a common parameter neighborhood, or an equivalent uniform difference-quotient bound; (5) at the seed alone does not supply that interchange. The termwise first vertex in `graded-mass-conversion-positive-cut.md` retains r L_v, 2(1-r)M²v and the grading-odd commutator. Integrating r and using the stated grading/trace identity yields both terms

  Theta(t)[D_v T_t(u)+D_u T_t(v)]/2 + 2 Theta'(t) I_t(u,v).

The majorant applies before any cancellation, including the odd term; the cancellation itself still requires the genuine grading and domain identity. This proves neither matching of the product model to the physical paired source nor uniformity as epsilon->0. It does not establish the curved subtracted remainder, an actual renormalized determinant, or Lean certification.

Remaining to-do list: verify the source bundle and boundary/normalization, establish the common ultraviolet and cut regulators, complete the novelty audit and manuscript, and certify supported claims in Lean on GCP.