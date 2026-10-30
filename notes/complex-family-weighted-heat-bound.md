# Weighted heat bound for the complex form family

This establishes the operator off-diagonal part of the complex-family route
in `geometric-locality-vertex.md`, under explicit common-domain and uniform
coefficient hypotheses. It does not establish the commutator/Schatten trace
locality needed for the geometric vertex.

Let V be a common first-order projector form domain continuously embedded in
H=L2(X), preserved by bounded real Lipschitz scalar multipliers. On a fixed
complex disk |z|<=r suppose q_z is a holomorphic closed sectorial form on V
with uniform bounds

  Re q_z(w,w) >= a ||w||_V^2 - c ||w||_H^2,
  |q_z(w,k)| <= M ||w||_V ||k||_V,                    (1)

where a>0. Assume q_z arises from first-order factors with uniformly bounded
coefficients and the scalar product rule. Specifically, for real Lipschitz
phi with ||d phi||_infinity<=alpha, expanding both factors in

  q_(z,phi)(w,k)=q_z(e^(-phi)w,e^(phi)k)               (2)

gives a perturbation of q_z whose quadratic form is bounded in modulus by
C alpha ||w||_V ||w||_H+C alpha^2 ||w||_H^2. This follows directly from
the first-order commutators when their coefficients are uniformly bounded;
it is stated explicitly to include the conjugate-parameter factor in the
holomorphic square form.

Young's inequality and (1) imply, with constants independent of z, phi and
alpha,

  Re q_(z,phi)(w,w) >= (a/2)||w||_V^2
                                - C(1+alpha^2)||w||_H^2. (3)

The same expansion bounds the imaginary part by a fixed multiple of the
shifted real form, so adding C'(1+alpha^2)||w||^2 gives a uniform sectorial
form with angle strictly below pi/2. The associated semigroup is the bounded
similarity e^phi exp(-t L_z)e^(-phi). The sectorial-form semigroup theorem
therefore gives

  ||e^phi exp(-t L_z)e^(-phi)||
       <= C_0 exp[C_1(1+alpha^2)t],  t>0.             (4)

On a compact model phi can be taken bounded; constants in (4) depend on its
Lipschitz constant, not its absolute value. For separated sets E,F with
positive distance d in the metric controlling |d phi|, choose a truncated
distance weight equal to zero on E and at least alpha d on F. Optimizing
alpha=d/(2 C_1 t) yields

  ||1_F exp(-t L_z)1_E||
       <= C_0 exp(C_1 t) exp[-d^2/(4 C_1 t)].         (5)

The bound is uniform on the complex disk and contains the full thermal
operator, with no mode truncation. The corresponding analytic-semigroup
estimate for the weighted generator follows from the same sectorial shift,
with a polynomial t^(-1) and exp[C(1+alpha^2)t]; it requires the standard
sectorial derivative theorem.

This proves an operator Davies bound, not the trace locality (3) in
`geometric-locality-vertex.md`. A geometric-vertex proof still needs the
localized first-order commutator identity on the actual domains, off-diagonal
derivative estimates for the non-self-adjoint forms, a trace/Schatten
factorization and uniform collar matching. Physical bundle and regulator
identification are also separate. No numerical run or Lean certificate is
claimed.

Remaining to-do list: prove the derivative and trace locality steps, verify
physical source and regulator matching, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.