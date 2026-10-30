# Unitary canonical-coordinate half density and the thermal square

This corrects the measure-level identification left open in
`canonical-euclidean-lapse-square.md`. It is a local differential and
conditional form calculation for the fixed product collar; the global
physical spin/bundle and composition domains, regulator and Lean proof remain
open.

Let y be proper distance, s the canonical coordinate, dy/ds=1/f(s)>0, and
work after the geometric-to-dy half-density of
`physical-auxiliary-collar-match.md`. The unitary change of radial measure is

    (U phi)(s)=f(s)^(-1/2) phi(y(s)),
    U:L2(dy)->L2(ds).                                   (1)

With the gamma and angular conventions of
`canonical-euclidean-lapse-square.md`, multiplication by gamma_tau is unitary
and, on compactly supported smooth sections,

    U gamma_tau D_mu U^-1
       = f^(1/2) (partial_tau+H_mu) f^(1/2),             (2)

    H_mu=gamma_tau gamma_y partial_s
              + i mu gamma_tau Gamma/(b f).

Indeed gamma_tau D_mu=f(partial_tau+H_mu) before the coordinate unitary;
conjugating by U gives f^(-1/2) f(partial_tau+H_mu) f^(1/2). Thus on a
thermal mode the unitary representative is

    P_sym=f^(1/2)(H_mu+i nu)f^(1/2)
         = f(H_mu+i nu)+(1/2)[H_mu,f],                 (3)

as a differential expression. The previous left-lapse model
P_left=f(H_mu+i nu) is not in general this unitary representative. For
H_mu=-i sigma_2 partial_s+mu a sigma_1, the extra term is
-(i/2)sigma_2 f'. Equation (3) corrects the model-to-physical comparison;
it does not invalidate results that were explicitly stated for P_left.

The thermal gap survives conditionally in the corrected form. Suppose H_mu
is self-adjoint on its local-projector domain, f>=f0>0, and Dom(P_sym)
consists of v for which sqrt(f)v belongs to Dom(H_mu) and the displayed
product is L2. Then

    ||P_sym v|| >= sqrt(f0) ||(H_mu+i nu)sqrt(f)v||
                  >= f0 |nu| ||v||.                     (4)

Hence P_sym*P_sym>=f0^2 nu^2 as a form, including for unbounded f when the
specified domain is valid. With the bounding antiperiodic spin structure,
|nu|>=pi/T. This does not by itself prove that the smooth-bolt physical
realization has that domain; in particular sqrt(f) can be unbounded at the
bolt in canonical coordinate. The lower bound is a model spectral estimate,
not a physical admission margin.

There is an exact corrected collar system. For
(P_sym*P_sym+M^2)psi=g define eta=sqrt(f)psi and
xi=f(H_mu+i nu)eta. On the common smooth core,

    (H_mu+i nu)eta=f^-1 xi,
    (H_mu-i nu)xi=f^(-1/2)g-M^2 f^-1 eta.             (5)

For the specified H_mu this yields

    d/ds [eta;xi] =
      [ nu sigma_2-mu a sigma_3      i f^-1 sigma_2 ] [eta]
      [ -i M^2 f^-1 sigma_2      -nu sigma_2-mu a sigma_3 ] [xi]
      + [0; i f^(-1/2) sigma_2 g].                      (6)

If the physical first-order and adjoint trace identifications of
`lapse-square-collar-boundary-transfer.md` hold, the two local square
conditions are P_- eta=0 and P_- xi=0. Scalar sqrt(f) and f are finite and
nonzero on the fixed outer collar, so they preserve these traces. System (6)
therefore gives the appropriate local flux variables for a future corrected
transport and Poisson estimate; it does not automatically transfer the
previous P_left estimates, whose domains and coefficients differ.

The unitarity statement is on the orbit half-density and assumes the given
product-mode Clifford representation. A full proof still needs global
spin/copy and magnetic matching, the regular bolt domain, angular/thermal
and trace normalizations, all response vertices and common counterterms.
No numerical calculation is used.

Remaining to-do list: prove the physical global domain and corrected collar
estimates, complete the response and regulator, resolve prior art, prepare
the manuscript, and certify supported claims in Lean on GCP.