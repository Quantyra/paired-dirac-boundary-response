# Heat-smoothed spectral boundary transport and cutoff scales

This strengthens the separated collar estimate in
`finite-cut-spectral-transport.md` with explicit angular smoothing. It is a
boundary-projection estimate, not a physical resolvent or common-regulator
theorem, and it is not Lean-certified.

Let A be the self-adjoint sphere Dirac operator with discrete spectrum mu,
including multiplicities and zero modes. Let P_z be the direct sum of the
transported boundary-line projections in that note, P_0 the local projector,
and put delta=integral |a| dx and ell=the collar length. For spectral
parameter z and tau>0 let Q_tau=exp(-tau A²). The mode estimate gives

 ||(P_z-P_0) Q_tau||
   <= C [delta/sqrt(2 e tau)+|z| ell],  C=2(e-1).          (1)

Indeed sup_{x>=0} x exp(-tau x²)=(2e tau)^(-1/2), while
||Q_tau||<=1. This is an operator-norm estimate on the smoothed boundary
space, valid for complex z; the transported orthogonal projection is not
claimed holomorphic in z. For a family of spectral parameters |z|<=Z(t),
the bound tends to zero whenever

    delta/sqrt(tau) -> 0,       ell Z(t) -> 0.                (2)

The fixed positive smoothing case is a special case; (2) makes explicit
what is needed when the smoothing scale also tends to zero. It does not
choose or justify a physical relation among those cutoffs.

If Q_tau is Hilbert--Schmidt, the same mode estimate gives the quantitative
trace-ideal bound

 ||(P_z-P_0)Q_tau||_2
    <= C [delta (Tr A² exp(-2tau A²))^(1/2)
             + |z|ell (Tr exp(-2tau A²))^(1/2)].           (3)

This follows by summing squared mode norms against the angular spectral
multiplicities and applying the triangle inequality in l². For the smooth
compact sphere both traces are finite at tau>0. If a trace-norm object has
one additional Q_tau factor and no intervening unbounded operator, Schatten
Hölder yields

 ||Q_tau(P_z-P_0)Q_tau||_1 <= ||Q_tau||_2
                                  ||(P_z-P_0)Q_tau||_2.   (4)

Equations (3)--(4) include the zero sector; its A² term vanishes but its
spectral-parameter term need not. They are sufficient bounds only for the
stated projection products. An actual boundary-to-bulk map or trace may
contain additional unbounded factors and must be estimated separately.

The full unsmoothed projection still fails to converge in operator norm at
zero spectral parameter, as shown in `finite-cut-angular-nonuniformity.md`.
Neither (1) nor (4) supplies the changing-domain resolvent identity, a uniform
bound over a proper-time contour, or the physical trace and regulator limit.
No numerical calculation is used.

Remaining to-do list: connect the smoothed boundary estimate to the actual
resolvent and common regulator, verify physical bundle/domain matching,
complete novelty and manuscript, and certify supported claims in Lean on GCP.
