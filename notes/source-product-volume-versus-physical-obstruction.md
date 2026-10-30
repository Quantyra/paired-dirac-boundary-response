# Source product-frame insertion versus physical-volume obstruction

This checks which observable is affected by `rn-log-cubic-trace-obstruction-local-test.md`. The frozen source's conversion trace and the four-dimensional physical heat insertion use different operators and volume measures. The physical non-trace-class result must not be used to reject the source conversion without an additional operator identity.

## Exact volume comparison

Let g be the four-dimensional fixed RN-AdS metric and ghat=U²g with U=b_sphere/r, as in `physical-product-contact-operator-gap.md`. The physical volume is

  dvol_g=r² dr d tau dOmega.

The product metric is ghat=g_orbit_hat+b_sphere² g_S². Its orbit metric is

  g_orbit_hat=U²[F d tau²+F^(-1)dr²].

Define product proper distance y from the outer endpoint, dy=U dr/sqrt(F) in absolute value, and orbit lapse a=U sqrt(F). For r->infinity,

  y=b_sphere L_4/r+O(r^-3),    a=b_sphere/L_4+O(r^-2),
  dvol_orbit_hat=a dy d tau.                                  (1)

The O(r^-3) term follows from F=r²/L_4²+1+O(r^-1). The full product volume is b_sphere² dvol_orbit_hat dOmega, also exactly U^4 dvol_g. In particular the orbit measure has bounded positive density in dy near y=0. The fixed period and the source's physical-half/time normalization multiply its trace by fixed constants; they do not change local integrability.

For a stationary scalar v(y)=c_v y³+O(y^4(1+|log y|)) and b_conf=log U=log y+O(1), (1) gives

  integral_(0<y<delta) |v| dvol_orbit_hat = O(delta^4),
  integral_(0<y<delta) |b_conf v| dvol_orbit_hat
       = O(delta^4(1+|log delta|)).                            (2)

Thus both are L1 at the product endpoint, whereas `conformal-log-direction-physical-volume.md` shows b_conf v is generically not L1 in physical four-volume. This measure calculation alone does not identify the corresponding heat traces. Under the physical-to-product unitary, scalar multiplication stays scalar but the physical Dirac square becomes the composition square of U^(1/2) D_hat U^(1/2), with principal symbol U² times the product square's symbol. It is not the product square at the same time; see `physical-product-contact-operator-gap.md`.

## The source insertion and a conditional cutoff estimate

In the pinned [conversion source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md), equations (2)--(3), the insertion in J_e is the varied field b, and the first two seed jets use the direction insertions u,v in T_e and I_e. It is not automatically the scalar b_conf v appearing in the separate physical-to-product comparison. The source's operator, physical-half time-reduced convention, angular tower and every term in (3) must still be matched.

As a useful conditional test, let K_e be a positive product-orbit heat operator whose fiber diagonal is bounded by C_e uniformly on the endpoint collar. For a collar cutoff chi_delta supported in 0<y<delta with |chi_delta|<=1, local trace-class smoothing and the heat diagonal formula give

  |Tr_bar(M_(chi_delta v) K_e)| <= C'_e delta^4,
  |Tr_bar(M_(chi_delta b_conf v) K_e)|
       <= C'_e delta^4(1+|log delta|).                        (3)

The constants include the fixed period, fiber rank and trace convention. Formula (3) compares insertions for the same operator at a fixed e; it does not compare moving boundaries or establish a uniform-in-e estimate. If an angular factor is included, it must be multiplied explicitly, and no uniform cutoff removal follows without its e-dependence and the needed subtractions. The product metric is finite at the conformal endpoint, but the source's actual realization and heat diagonal remain independent hypotheses.

Consequently the physical-volume non-trace-class result reveals a failure of one proposed physical single-insertion argument, not a contradiction of the source's product-frame finite-cutoff formula. Neither (2) nor (3) establishes the mixed Duhamel vertex, the endpoint contact, the common ultraviolet regulator, or a novelty result. No Lean or numerical certification is claimed.

Remaining to-do list: establish the actual product and boundary realization, prove the complete mixed trace and common-regulator limits, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.