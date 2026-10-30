# Neighborhood domination for the conversion tower derivative

This closes the positive-time termwise-differentiation gap identified in `product-conversion-mixed-seed-tower-domination.md` for the stipulated real product-mode model. It does not identify that model with the physical paired source or remove the ultraviolet regulator.

## Uniform form-derivative bound

Use the compact product cuts, skew-adjoint Q_delta, domain-preserving scalar multipliers and real interpolation A_r(b), P_r(b)=A_r(b)*A_r(b) of `product-mass-conversion-h2-heat-tower.md`. Let b vary in a real W2,infinity-bounded set with ||b||<=B, r in [0,1], and let v be a real W1,infinity direction. Suppose the uniform commutator and domain hypotheses there hold and that each heat trace is continuously differentiable by the stated form-Duhamel theorem. All constants below are uniform over the cut, r, b and M>=0.

Write D_r(b)=E_r Q_delta E_r and V_r(b)=M exp((1-r)b), so A_r=D_r+V_r. The exact first variation is

  A'_r(b)[v]=-(r/2)(v D_r+D_r v)+(1-r)V_r v.                (1)

The commutator [D_r,v]=E_r[Q_delta,v]E_r is bounded by C_B||v||_W1,infinity. The real positive-mass estimate in `graded-conversion-regulated-endpoints.md` gives

  M ||f|| <= exp(2B) ||A_r(b)f||,                             (2)

including M=0 trivially. Since ||V_r f||<=M exp(B)||f||, (1)--(2) imply

  ||A'_r(b)[v] f|| <= C_B ||v||_W1,infinity
                         (||A_r(b)f||+||f||).                 (3)

Thus the derivative of q_r(b)[f]=||A_r(b)f||² is relatively bounded on the form domain by H=1+P_r(b):

  |q'_r(b)[v](f,g)| <= C_B ||v||_W1,infinity
       ||H^(1/2) f|| ||H^(1/2) g||.                           (4)

This uses the true domain and both first-order terms; it is uniform in M because the mass-dependent potential is controlled by the real gap. It does not assume a common square domain or a complex-parameter gap.

## Summable bound and differentiation

Let K_t(b)=exp(-tP_r(b)) and U=M_u for bounded real u. The same long-heat-factor trace splitting as in the seed note, now with H=1+P_r(b), gives

  |partial_v Tr[U K_t(b)]| <= C_B ||u||_infinity ||v||_W1,infinity
        t(1+t^(-1/2))² Tr K_(t/4)(b).                        (5)

The spectral bound ||H^(1/2)K_s(b)||<=C(1+s^(-1/2)) and the integrability of the two s^(-1/2) endpoints justify the estimate. For t in [epsilon,T], choose s0=min(epsilon/4,1). The H2 heat estimate and mass gap of `product-mass-conversion-h2-heat-tower.md` give

  Tr K_(t/4)(b) <= C_(B,epsilon) (1+M)^(2+2eta)
                         exp(-g M² s0/2),                    (6)

for any fixed 0<eta<1, with g=exp(-4B). The right side is summable with the full recorded nonzero angular multiplicities and is independent of b, r and the cut. A finite zero-mode sector is handled separately. It also bounds the undifferentiated trace. Therefore, on any finite-dimensional real parameter neighborhood b=z1 u+z2 v contained in the declared W2,infinity ball, standard uniform convergence and termwise differentiation apply to the sum over modes and to the r integral, provided the individual form-Duhamel differentiability is valid. In particular the mixed second derivative at b=0 of the endpoint conversion sum exists and equals the sum of the per-mode mixed derivatives: the insertion is linear in z and only first heat derivatives are needed.

At b=0 the grading-odd commutator cancels under the separately assumed grading/domain/trace identity, and the summed result is exactly the two-term formula in `graded-mass-conversion-positive-cut.md`, including 2 Theta'(t) I_t. Thus the previous seed-only interchange gap is closed for this stipulated real finite-cut model, uniformly for t in [epsilon,T]. This conclusion does not assert differentiability of the full curved physical action, prove complex heat estimates, identify the physical-half normalization or transported infinity condition, or allow epsilon->0. The finite zero sector remains in its declared source allocation. No numerical or Lean certification is claimed.

Remaining to-do list: match the actual source bundle, domains and normalization, prove the subtracted common-regulator limits, complete the novelty audit and manuscript, and certify supported claims in Lean on GCP.