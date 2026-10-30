# Form convergence for the reflected cylinder square

This supplies the convergence step left open in `reflected-cylinder-gaussian-sufficient-hypotheses.md` for the stipulated separated auxiliary operator. It is not an identification of that operator with the complete physical bolt problem.

Work in the fixed flat half-density Hilbert space H=L2(R x S1_T; C^r) with the declared periodic or antiperiodic thermal spin structure. Let A=gamma_y gamma_tau be a constant skew-adjoint matrix, and let real even f satisfy 0<m<=f<=M and f in W2,infinity. The recorded separated expression is

  L_f=-partial_y²-f² partial_tau²-A f' partial_tau.          (1)

Assume the source's closed square agrees with the lower-bounded form realization of (1). On the common form domain H1(X), define

 q_f[psi,phi]=<partial_y psi,partial_y phi>
   +<f partial_tau psi,f partial_tau phi>
   +<psi,-A f' partial_tau phi>.                            (2)

The last term is Hermitian because A*=-A, partial_tau*=-partial_tau, and f' depends only on y. Young's inequality bounds it in absolute value by (m²/2)||partial_tau psi||²+C||psi||² on the diagonal. Hence, after one fixed positive shift, q_f is closed and coercive on H1, with constants controlled by m,M,||f'||_infinity. The matrix expression and spin structure must match the actual source conventions; equation (2) is a specified model.

Let smooth even f_n obey the same positive and W2,infinity bounds and converge to f in W1,infinity. Their forms have the same domain, and for all psi,phi in H1,

 |q_(f_n)[psi,phi]-q_f[psi,phi]|
     <= C ||f_n-f||_(W1,infinity) ||psi||_H1 ||phi||_H1.   (3)

The f² difference is bounded by 2M||f_n-f||_infinity, and the first-order term by ||f_n'-f'||_infinity. Uniform coercivity and the variational resolvent identity give

 ||(L_(f_n)+lambda)^(-1)-(L_f+lambda)^(-1)||
       <= C_lambda ||f_n-f||_(W1,infinity) ->0              (4)

for a sufficiently large fixed lambda. Thus the self-adjoint realizations converge in norm resolvent and their heat semigroups converge strongly for every fixed positive time. If each is the nonnegative geometric square, the semigroups are uniformly contractive; otherwise use their common lower bound.

An even reflected W2,infinity coefficient can be approximated by convolution with an even nonnegative mollifier: positivity and the bounds m,M persist, the W2,infinity bound is uniform, and W1,infinity convergence follows from uniform continuity of f and f'. A globally fixed smooth cap with bounded derivatives can be built before convolution, provided the prescribed collar can be extended positively with those bounds. Such smoothing of the auxiliary double is solely an analytical approximation; it need not preserve the exact one-sided cubic or replace the original physical field.

When the smooth f_n are identified with the geometric Dirac squares in the preceding note, their Gaussian kernel bounds are uniform. Strong semigroup convergence and weak-* compactness on bounded coordinate sets transfer the same bound to an almost-everywhere kernel representative for L_f, with the flat half-density measure. This justifies the rough-limit step for this model. It still requires verification that the source's spin/copy connection, square domain, smooth caps and curvature/twist hypotheses match (1)--(2); no global physical trace, gluing estimate or Lean certificate follows.

Remaining to-do list: establish the actual source identification and gluing, control the full response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.