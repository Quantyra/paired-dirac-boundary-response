# Constant-coefficient mixed half-space H3 estimate

This proves the flat frozen model behind
`mixed-h3-robin-localization.md`. It does not prove the variable-coefficient
or nonzero-Robin estimate required for the physical cuts.

Let H=R^(d-1) x (0,infinity), d>=2, and let P be a constant orthogonal
projection on a finite-dimensional Hermitian fiber. For a smooth compactly
supported f on the closure of H satisfying

  (1-P)f|_(x_n=0)=0,  P partial_n f|_(x_n=0)=0,       (1)

there is a dimension-dependent constant C such that

  ||f||_H3(H) <= C (||Delta f||_H1(H)+||f||_H1(H)).   (2)

The constant is independent of P and of fiber dimension under the usual
Hilbert sum norms. If L_0=-a Delta with a in [a_-,a_+] and a_->0, (2)
holds with a constant depending on a_-.

First, for any smooth compactly supported h satisfying (1), odd-reflect
(1-P)h and even-reflect P h across x_n=0. The homogeneous Dirichlet or
Neumann trace respectively ensures that the reflected section lies in H2;
its distributional Laplacian is the corresponding reflection of Delta h,
with no boundary delta. The whole-space Fourier estimate gives

  ||h||_H2(H) <= C (||Delta h||_L2(H)+||h||_L2(H)).  (3)

The argument does not assume an H3 odd reflection: a Dirichlet function's
second normal derivative need not vanish at the boundary.

Each tangential derivative partial_j f again satisfies (1), because P is
constant and tangential differentiation commutes with the traces. Applying
(3) to each partial_j f controls every third derivative having at least one
tangential index by ||Delta f||_H1+||f||_H1. The sole remaining third
derivative is obtained from

  partial_n^3 f = partial_n(Delta f)
                    - sum_(j<n) partial_n partial_j^2 f. (4)

The last sum has already been controlled. Together with (3) for f, this
proves (2). Standard density extends it to the corresponding H3 sections;
regularity of weaker solutions requires a separate approximation argument.

A smooth variable projector, curved metric, lower-order terms and Robin
coefficient require a flattening/perturbation argument with uniform chart
and coefficient bounds. Equation (2) is a frozen model input, not itself
that variable-coefficient theorem. No numerical run or Lean certificate is
claimed.

Remaining to-do list: establish uniform variable mixed-boundary regularity,
verify the physical bundle and source map, complete the regulator and prior
art audits, prepare the manuscript, and certify supported claims in Lean on
GCP.