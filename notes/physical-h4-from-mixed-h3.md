# First spatial heat derivative from the mixed H3 estimate

This extends the fixed-seed C5/H3 route in
`physical-contact-h3-literature-closure.md` to a local H4 estimate by
one tangential differentiation. It applies to the same stipulated smooth
finite-cut model and its uniform chart, bundle, graph and actual mixed-domain
hypotheses. It is not a proof of arbitrary second heat derivatives, the
complete ordered response, physical source matching or Lean certification.

## Local H4 estimate

Work on nested uniformly controlled boundary-normal half-charts. In the
constant-projector frame, write

  Lf=-a^ij partial_i partial_j f+B^i partial_i f+C f,
  (1-P)f|boundary=0,  P(partial_n+S)f|boundary=0,        (1)

where the scalar symmetric principal matrix is uniformly elliptic and
P is constant. The C5 field, order-five frame and smooth seed hypotheses
supply uniform W^(3,infinity) bounds on the operator coefficients and
uniform W^(3,infinity) bounds on S, as in the cited H3 closure. Use smooth
cut-localized f initially. Normal-constant cutoffs preserve (1), with their
commutators controlled on a larger nested chart.

Assume Lf is H2 locally. The H3 theorem already gives f in H3 locally.
For any tangential coordinate x_a, the derivative g=partial_a f has
Dirichlet trace (1-P)g=0 and Robin trace

  P(partial_n+S)g= -P (partial_a S) f                   (2)

on the flat boundary. Since f is H3, its boundary trace is H^(5/2), so the
right side is bounded in H^(3/2) by C||f||_H3 using the uniform S bounds.
The equation and product rule give

  Lg=partial_a(Lf)-[partial_a,L]f,
  ||Lg||_H1 <= C (||Lf||_H2+||f||_H3),                  (3)

because the commutator is second order with coefficients and first
derivatives uniformly bounded. Apply the same mixed H3 regularity theorem
with its inhomogeneous Robin boundary datum (2) to each g. Together with
nested cutoffs this yields

  sum_(a<n) ||partial_a f||_H3(smaller)
       <= C (||Lf||_H2(larger)+||f||_H3(larger)).         (4)

Recover the pure normal derivatives from (1): a^nn is uniformly positive,
and

  partial_n^2 f = (a^nn)^(-1)[-Lf
      -sum_((i,j)!=(n,n)) a^ij partial_i partial_j f
      +B^i partial_i f+C f].                              (5)

Each second-derivative term in the sum has at least one tangential index
and is H2 by (4); the other terms are H2 by the stated hypotheses. Uniform
W2 multiplier bounds for a and (a^nn)^(-1) thus make partial_n^2 f H2 on
the smaller chart. Combining this with (4) controls every derivative of f
through order four:

  ||f||_H4(smaller)
       <= C (||Lf||_H2(larger)+||f||_H3(larger)).         (6)

The same conclusion in interior charts follows by differentiating in every
coordinate and using the interior H3 estimate. The proof starts with smooth
finite-cut approximants, so the derivative and boundary identities are
classical; weak H4 membership follows by the same theorem and localization
or compatible smooth approximation, if needed. No independent fourth field
derivative beyond the existing C5 inputs is postulated.

## Heat consequence

For f=K_s h and K_s=exp(-sL), the H3 heat bound of the cited note applies
to f and to Lf=K_(s/2) [L K_(s/2)h]. Spectral calculus gives
||L K_(s/2)||<=C/s. Hence, on nested physical charts,

  ||K_s h||_H4 <= C (1+s^(-1))(1+s^(-3/2)) ||h||.       (7)

In four dimensions H4 embeds into C1. Evaluation of the covariant first
spatial derivative of K_s is therefore a uniformly bounded L2-to-fiber map;
finite fiber rank and the heat-kernel representation imply, for scalar
a in physical L2,

  ||M_a nabla K_s||_2
      <= C (1+s^(-1))(1+s^(-3/2)) ||a||_2.              (8)

The adjoint is controlled with the correct reversed operator order. Together
with `physical-operator-heat-powers-h3.md`, this supplies fixed-time
weighted K, D K, L K and first-gradient heat factors under the stipulated
model hypotheses. It does not bound a full pointwise Hessian: H4 is the
critical integer order for C2 in dimension four. Nor does it remove the
finite-cut Green boundary term or justify all noncommuting matrix-vertex
transfers. The constants are nonsharp as s approaches zero and do not
establish a subtracted small-time estimate or proper-time convergence.

Remaining to-do list: finish the ordered-vertex and boundary identities,
verify physical source and regulator matching, complete novelty and
manuscript, and certify supported results in Lean on GCP.