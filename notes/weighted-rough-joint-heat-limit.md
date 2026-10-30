# Joint rough-field and moving-cut heat comparison

This is a conditional compact-product comparison for the complete mixed heat
derivative. It combines `weighted-remainder-cutoff.md`,
`weighted-fields-moving-cut-transport.md` and
`product-frame-moving-cut-response-rate.md`. It does not prove the physical
subtracted response or a Lean theorem.

Let f(y)=c y^3+r(y) on the physical-side collar with the recorded weighted
bounds through order five. For f_e=c y^3+q(y/e)r(y), differentiation on
0<y<2e gives the sharper estimate

    ||f_e-f||_W1,infinity <= C e^3 (1+|log e|).        (1)

Indeed the j=1 weighted term is O(y^3(1+|log y|)); cutoff-derivative terms
are supported where y is comparable to e and obey the same bound. The j=0
term is smaller, and outside 2e the unsmoothed cutoff agrees with f. The
smooth physical-side approximants in the cited construction can be selected
with an additional C1 error no larger than the right side of (1): for each e,
choose the mollification scale sufficiently small. Their uniform enlarged
weighted and W2,infinity bounds are preserved. On the interior, assume an
extension/approximation with the same W1,infinity rate and common bounds;
this is automatic if the fixed interior data are already smooth and the
regularization is localized to the collar, with a smooth matching region.
Apply this construction to the base field and both directions.

Let delta be the moving-cut parameter, and pull all three approximants back
to the fixed Hilbert space using the same local-projector diffeomorphism. By
(1), the moving-cut bound in `weighted-fields-moving-cut-transport.md`, and
the fixed seed coefficient bound, the corresponding holomorphic forms obey
on a common polydisc

    |q_(delta,e,z)(v,h)-q_(0,0,z)(v,h)|
       <= C [delta+e^3(1+|log e|)] ||v||_V ||h||_V,    (2)

uniformly in e,delta, assuming the fixed global chart, domain, uniform
coercivity and complex-form hypotheses of the cited notes. The symbol e=0
here denotes the rough limiting fields, not a heat time. The limit form is
well defined on the same V because those fields are W1,infinity.

The sectorial-resolvent, S5-to-S6 interpolation and six-factor argument of
`product-frame-moving-cut-response-rate.md` applies with the bracket in (2)
in place of delta. For 0<t<=1,

 ||partial_1 partial_2[T_(delta,e,z)(t)-T_(0,0,z)(t)]|_(z=0)||_1
   <= C [delta+e^3(1+|log e|)]^(1/6) t^(-35/12).     (3)

The result includes the full mixed form derivative; all constants must be
uniform over the specified approximating family. Hence, with positive
proper-time lower cutoff epsilon,

  integral_epsilon^1 t^(-2) ||mixed difference||_1 dt
     <= C [delta+e^3(1+|log e|)]^(1/6) epsilon^(-47/12). (4)

Choose for example e=epsilon^9 and delta=exp(-4L/epsilon), where L>0 is the
fixed cut constant used in `rn-infrared-angular-joint-rate.md`. Then the
right side is O(epsilon^(7/12)(1+|log epsilon|)^(1/6)) and tends to zero.
At every epsilon the cut and field approximants are held fixed throughout
the proper-time integration. The choice supplies one sufficient joint path;
it does not prove convergence independently of path.

This compares *unsubtracted model heat terms* at positive cutoff, so any
counterterm or moving insertion must be separately matched. The rough-field
rate is one-sided, retains the cubic jet, and requires the explicitly stated
global regularity and uniform complex-form hypotheses. Physical infinity
boundary transport, copy/bundle identification, thermal/angular factors,
curved tangent subtraction and the full regulator are still open. No
numerical calculation is used.

Remaining to-do list: verify physical matching and all regulator terms,
prove the full subtracted response, resolve prior art, prepare the manuscript,
and certify supported claims in Lean on GCP.