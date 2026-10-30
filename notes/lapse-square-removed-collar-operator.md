# Removed-collar term in the nonreal square resolvent comparison

This completes the fixed-mode operator-norm comparison in
`lapse-square-nonreal-poisson-resolvent.md` for the zero extension of the
cut resolvent. It does not assert trace-class convergence or a physical
heat-regulator theorem.

Use that note's full and cut nonnegative self-adjoint model squares, its
spectral parameter zeta with eta=|Im zeta|>0, k=|zeta-M^2|, and a fixed
outer interval of length L0 with the stated coefficient bounds. Let J
restrict to the retained interval, J* extend by zero, and let E=1-J*J
multiply by the removed-collar indicator. For 0<ell<L0, the exact identity

  R_zeta-J* R_(cut,zeta) J
     = E R_zeta + J* (J R_zeta-R_(cut,zeta) J)                (1)

holds on the full Hilbert space. The second term is bounded by equation (5)
of the cited note. The first is not contained in that restriction estimate.

For psi=R_zeta g, the same spectral and first-order bounds give

 ||psi||_2 <= eta^(-1)||g||_2,
 ||psi'||_2 <= [Q/eta+F(eta^(-1/2)+sqrt(k)/eta)]||g||_2,    (2)

where Q=|nu|+|mu| ||a||_infinity on the fixed interval, and F is a finite
constant depending only on the stated lapse bounds there. The H1 embedding
on that fixed interval gives

 ||E R_zeta|| <= C sqrt(ell)
       [eta^(-1)+Q/eta+F(eta^(-1/2)+sqrt(k)/eta)].            (3)

Indeed, ||1_collar psi||_2 <= sqrt(ell)||psi||_infinity and the H1-to-L-infinity
constant is independent of ell because it is taken on the fixed interval,
not on the shrinking collar. Combining (1), (3) and the cited restriction
bound proves O(sqrt(ell)) convergence at fixed mode and fixed nonreal zeta,
provided h_zeta=O(ell), the coefficient bounds are uniform, and the local
Poisson lift constants stay bounded as the cut moves. Arbitrary source
support, including the removed collar, is included in this operator bound.

This is not a trace-norm estimate: E R_zeta need not be trace class merely
because its operator norm tends to zero. Nor does the bound provide uniform
control over an infinite angular/thermal tower or an unbounded resolvent
contour; its coefficient and inverse-imaginary-part factors must be summed
or integrated with additional estimates. The local-projector model has not
been identified with the transported physical condition. The curved response,
contacts, regulator and Lean certification remain open. No numerical
calculation is used.

Remaining to-do list: establish trace-class and summed contour control with
physical boundary matching, prove the curved response and regulator, resolve
novelty, complete the manuscript, and certify supported claims on GCP.
