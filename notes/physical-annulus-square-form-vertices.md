# Square-form vertices localized to a physical annulus

This extends `physical-annulus-first-vertex-source.md` to the first and mixed second positive-square form vertices in `mixed-heat-vertex-inventory.md`. It gives fixed-mode form and operator bounds, not a trace-norm estimate, physical regulator limit or Lean certificate.

Let P be the stated physical first-order mode realization, V=Dom P, and equip V with ||f||_V=(||Pf||²+||f||²)^(1/2). On the annulus A_delta={delta<=y<=2delta}, assume the common-core scalar product rule and the cubic direction bounds of the cited note. In the physical x coordinate, partial_x=U partial_y, so both |v| and |partial_x v| are O(delta³) there. For u,w in the same class, equation (1) of the first-vertex note gives

 ||1_A P_v f|| <= C K_v delta³ ||f||_V,
 ||1_A P_uw f|| <= C K_u K_w delta^6 ||f||_V.          (1)

Define localized sesquilinear forms by restricting the outputs of the original form terms, without differentiating the annulus indicator:

 q_v^A(f,g)=<1_A P_v f,1_A P g>+<1_A P f,1_A P_v g>,
 q_uw^A(f,g)=<1_A P_uw f,1_A P g>+<1_A P f,1_A P_uw g>
              +<1_A P_u f,1_A P_w g>
              +<1_A P_w f,1_A P_u g>.                   (2)

Cauchy--Schwarz and (1) give

 |q_v^A(f,g)| <= C K_v delta³ ||f||_V ||g||_V,
 |q_uw^A(f,g)| <= C K_u K_w delta^6 ||f||_V ||g||_V.  (3)

Thus both coincidence terms remain in the mixed bound. The restriction is at the form-output level: it does not assert that the second-order operator applied to 1_A f has no distributional boundary terms, nor does it discard a separately derived Green boundary form.

For the conformal logarithm b=log U, assume the chosen finite-cut domain is preserved by multiplication by b and the weak product rules hold. On the annulus, |b|<=C(1+|log delta|), while |partial_x b| is uniformly bounded. Applying the product rule to P(bf), P_v(bf) and P_uw(bf) shows that either argument of (2) may be replaced by b times that argument at the cost of a factor C(1+|log delta|) in (3). This retains the derivative-of-b corrections. It is a localized finite-cut statement and does not assert that b is a bounded global multiplier on the infinite end.

For L=P*P and t>0, spectral calculus gives ||K_t||_(H->V)<= [1+(2 e t)^(-1)]^(1/2). The bounded form representation consequently yields, for example,

 ||K_(t/2) q_uw^A K_(t/2)||_(H->H)
      <= C K_u K_w delta^6 (1+t^-1),                    (4)

with a harmless change of the numerical constant. Here the sandwich denotes the operator associated with the bounded form on heat outputs. This is operator-norm control only: it neither proves trace class nor gives a bound after angular/thermal summation. Constants can depend on the fixed mode and local base.

Actual source-to-flux placement, the full square boundary form, the noncommuting ordered vertices, mode-uniform Poisson estimates and the proper-time regulator remain separate. No physical response or admission margin is asserted.

Remaining to-do list: prove trace-class and mode-uniform versions for all vertices, establish physical boundary matching and regulator, finish novelty and manuscript, and certify supported claims on GCP.
