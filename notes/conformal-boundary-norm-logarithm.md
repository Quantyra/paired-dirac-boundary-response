# Finite-cut Euclidean norm of conformal boundary data

This quantifies `conformal-spatial-euclidean-boundary-spaces.md` for the
fixed smooth conformal collar of the pinned RN product source. It concerns
spinor norms and the first-order expression, not the determinant, a
renormalized action, or Lean certification.

Let u=0 be the compactified boundary, g=u^(-2) ghat in four dimensions,
and psi_g=u^(3/2) psi_hat. Assume psi_hat is H1 on a fixed smooth collar
[0,a] x Y, with boundary trace psi_0 in L2(Y). Let dvol_hat=J(u,y)du dy,
where J is smooth positive, and let the fiber identification be isometric.
Then the physical Euclidean norm over the cut delta<=u<=a is

    N(delta)=integral_delta^a u^(-1)
        integral_Y |psi_hat(u,y)|^2 J(u,y) dy du.       (1)

The Hilbert-valued H1 trace theorem and Cauchy--Schwarz imply

    ||psi_hat(u,.)-psi_0||_L2(Y)
       <= sqrt(u) ||partial_u psi_hat||_L2([0,a]xY).    (2)

The slice L2 norms are uniformly bounded, and J(u,.)-J(0,.)=O(u). Hence
with A=integral_Y |psi_0|^2 J(0,y)dy,

    N(delta)=A log(a/delta)+C_psi+O(sqrt(delta)),      (3)

where C_psi is a finite constant depending on the field, collar and density.
The integrable difference defining C_psi is the integral of the bracket
in (1) minus A, divided by u. The estimate O(sqrt(delta)) is for fixed H1
norm and fixed smooth collar constants. In particular the logarithmic
coefficient is exactly the compactified boundary L2 norm, including all
fiber and time factors in the chosen measure.

The first-order expression has a different weight. The source's conformal
covariance D_g=u^(5/2) D_hat u^(-3/2) gives, for this field,

    ||D_g psi_g||^2_L2(g; delta<=u<=a)
       = integral_delta^a u |D_hat psi_hat|^2 dvol_hat. (4)

For H1 psi_hat and smooth D_hat, the right side remains finite as delta->0.
Thus a nonzero conformal boundary trace produces the logarithmic field-norm
divergence in (3), even though its first-order image has finite L2 norm in
this calculation. This observation does not make psi_g a vector in the
physical L2 operator domain when A>0.

Subtracting A log(a/delta) defines a finite remainder for this *individual
norm* under the stated hypotheses, but that subtraction is not a determinant
counterterm or a canonical prescription for the quantum action. The
coefficient changes if boundary data, normalization or measure change, and
C_psi depends on the bulk extension. The source's spatial one-particle norm
is instead conformally invariant as shown in the preceding note. A valid
physical determinant comparison must still specify its Euclidean realization,
conformal anomaly, boundary transgression, zero modes and common regulator.
No numerical calculation is used.

Remaining to-do list: match the physical boundary and determinant spaces,
prove the full response and regulator, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.