# Cubic-localized insertions and the lapse scale conflict

This tests a specific possible improvement to
`lapse-comparator-scale-conflict.md`. It applies to insertions whose support
shrinks with the comparator collar; it does not establish the result for a
fixed physical insertion, the full response or Lean certification.

Use the compact d-dimensional auxiliary lapse pair and trace estimate

    ||exp(-t L_ell)-exp(-t L0)||_1 <= C ell² t^(-d/2).

Let u_ell be a bounded insertion supported in 0<=s<=rho ell with 0<rho<1,
and assume |u_ell(s)|<=K s³ there. The trace ideal inequality gives

 |Tr[M_(u_ell)(exp(-t L_ell)-exp(-t L0))]|
    <= C K rho³ ell^5 t^(-d/2).                             (1)

This uses ||u_ell||∞<=K(rho ell)³; it does not assert the multiplication
operator is trace class or Hilbert--Schmidt. The RN coordinate comparison in
`rn-proper-canonical-collar-jets.md` verifies the cubic bound for a
proper-distance direction after pulling it to the canonical coordinate.
Multiplying that direction by a fixed-profile cutoff chi(s/ell), equal to
one near zero and supported in [0,rho ell], produces such u_ell. Its
support, however, changes with ell.

Suppose separately that physical-to-auxiliary locality for these insertions
has been proved with a uniform bound of the form

    C' ell^(-a) t^(-N) exp[-c ell²/t],                       (2)

where a,N are fixed and c>0. This is a hypothesis: scaled cutoff derivatives,
boundary domains, trace factors and constants must be checked. Take
ell=t^p. If

    d/10 < p < 1/2,                                        (3)

then (1) tends to zero and (2) tends to zero faster than every polynomial.
The interval exists for d<5, including the two-dimensional orbit and a
four-dimensional compact model. Thus the explicit insertion amplitude
removes the earlier *power-counting* conflict for this shrinking-support
observable, conditional on the locality bound.

This does not solve the original fixed-insertion problem. The fixed direction
outside [0,rho ell] is discarded by u_ell, and its trace or counterterm must
be controlled separately; it cannot be called negligible merely because the
localized piece tends to zero. Derivatives of u_ell also grow through the
scaled cutoff and must be included for geometric vertices. The proof does
not identify the physical operator, its angular/thermal normalization or the
common regulator. No numerical calculation is used.

Remaining to-do list: control the complementary fixed-insertion contribution
and physical locality, establish domains and regulator, decide novelty,
prepare the manuscript, and certify supported claims in Lean on GCP.
