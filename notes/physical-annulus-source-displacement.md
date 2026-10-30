# Source displacement across a shrinking physical annulus

This supplements `physical-square-annulus-nonreal-flux.md` with the inhomogeneous collar source in `symmetric-lapse-inhomogeneous-transfer.md`. It concerns the local source-to-flux map for fixed angular, thermal and square spectral parameters, not a physical resolvent or a response divergence.

On delta<=y<=2delta, let s be the canonical coordinate, F=f U, and let g be the source in the ds half-density. The square-flux system has the form

 Y'=K_delta,zeta(s)Y+(0,i sigma_2 F^(-1/2) g).          (1)

Define tau(s)=integral_(s(delta))^s F^(-1) d sigma and I_delta=tau(s(2delta)). As shown in the nonreal annulus note, I_delta->I_*=L4 log 2, while the diagonal angular/thermal part has total integral O(delta). The unitary change of source variable

 h(tau)=sqrt(F(s(tau))) g(s(tau)),
 integral |h|² d tau=integral |g|² ds,                   (2)

turns the source term in the variation-of-constants integral into (0,i sigma_2 h)d tau. Thus the displacement at the upper endpoint is an operator B_delta from L2([0,I_delta];C²) to the four-component flux space. After rescaling the interval to a fixed [0,I_*], the fundamental matrices converge uniformly for fixed parameters, and B_delta converges in operator norm to

 B_* h=integral_0^I_* exp[(I_*-tau)N_zeta]
                                 (0,i sigma_2 h(tau)) d tau, (3)

where N_zeta is the constant matrix in the nonreal annulus note. The small difference in interval lengths is included in the unitary rescaling. Operator-norm convergence follows from uniform kernel convergence and the Cauchy--Schwarz bound on the finite interval.

The limiting map is nonzero: its continuous matrix kernel at tau=I_* is the injection h -> (0,i sigma_2 h). For example choose h supported sufficiently near I_* and aligned with a nonzero vector; continuity prevents its integral from vanishing. Consequently

 ||B_delta|| -> ||B_*|| > 0.                             (4)

The sign and endpoint orientation alter the kernel by invertible fixed transport factors, not its nonvanishing. Equation (4) shows that the local displacement is not uniformly small for arbitrary unit-norm sources supported in this shrinking annulus. The sources used to test the norm depend on delta; this is not a claim about a fixed source or about the result after localized weights or subtraction.

The comparison does not prove a lower bound on the physical resolvent difference: actual flux boundary data, the retained-domain Poisson map, nonzero spectral contour, angular/thermal sums and cancellation all remain to be controlled. Nor does it replace the nondegenerate product-frame estimate. No Lean certification or numerical physical margin is claimed.

Remaining to-do list: establish the physical source-weighted boundary map and resolvent comparison, complete the mixed response and regulator, finish novelty and manuscript, and certify supported claims on GCP.
