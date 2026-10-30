# Eventual uniform localized heat tail along an exhaustion

This combines the fixed-operator zero-mode exclusion with the fixed-time weighted heat convergence. It proves a uniform large-time *endpoint* along sufficiently late cuts, without assuming a spectral gap. It does not prove integrability of the proper-time tail or convergence of the mixed response.

Let L_n>=0 be self-adjoint cut operators on H_n, embedded isometrically in H, and let K_n(t) be their zero-extended heat operators. Let L>=0 be the complete operator on H and K(t)=exp(-tL). Let S_n and S be bounded self-adjoint multiplication localizations, possibly varying with n. Assume

  S_n K_n(t) S_n -> S K(t) S in trace norm, for each fixed t>0,  (1)

and ker L=0. Assume S K(t0/2) is Hilbert--Schmidt for some t0>0. Condition (1) is supplied by `physical-l2-weighted-heat-boundary-comparison.md` under its explicit weighted smoothing, local convergence and L2-weight hypotheses, taking the same real weight on both sides; it is not verified here for the physical boundary.

For each n, spectral calculus gives 0<=K_n(t)<=K_n(T) in quadratic-form order for t>=T>0. Zero extension preserves this order. Conjugating by S_n and taking positive traces gives

  sup_(t>=T) ||S_n K_n(t) S_n||_1
      = ||S_n K_n(T) S_n||_1.                                 (2)

The operators are trace class whenever the right-hand side is; (1) supplies this for all sufficiently late n at each fixed T. Positivity is essential here: this argument is not valid for a signed mixed derivative or a difference of heat operators.

By (1), the right-hand side of (2) tends to ||S K(T) S||_1 as n->infinity. The fixed-operator result `gapless-localized-heat-endpoint.md` and ker L=0 make this last expression tend to zero as T->infinity. Therefore

  lim_(T->infinity) limsup_(n->infinity)
      sup_(t>=T) ||S_n K_n(t) S_n||_1 = 0.                    (3)

Equivalently, for every delta>0 there are T and N such that the norm in (3) is below delta for every n>=N and t>=T. The order of quantifiers matters: no uniform control of finitely many early cuts, or rate in T, is asserted. For the fixed massless RN-AdS model, `rn-physical-no-l2-zero-mode.md` supplies ker L=0 under its explicit product-bundle and realization hypotheses; the partner requires its closed adjoint identity. Apply the argument independently to each boundary family when both satisfy (1). The triangle inequality then gives the same endpoint conclusion for their localized difference.

This result does not interchange an unbounded t-integral with n->infinity. In particular, convergence to zero without a quantitative decay rate need not make integral_T^infinity ||S_n K_n(t) S_n||_1 dt/t finite or uniformly small. Nor does (3) apply directly to the differentiated vertices, parameter-dependent localizations, or the source's proper-time subtractions. No numerical or Lean certification is claimed.

Remaining to-do list: verify the physical bundle, domains and weighted smoothing, obtain the differentiated and integrable mixed tail and ultraviolet regulator, resolve novelty, complete the manuscript, and certify supported claims in Lean on GCP.