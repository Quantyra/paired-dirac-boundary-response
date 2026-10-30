# Local changing-cut resolvent trace without a radial probe

This removes the artificial radial Hilbert--Schmidt probe from
`changing-cut-quantitative-trace-probe.md` for a fixed scalar insertion whose
support stays strictly inside the cut. It applies to the separated half-line
model of `changing-cut-resolvent-comparison.md`; it does not establish the
physical boundary, seam-supported insertion, response or Lean certification.

Let D_ell(z)=J_ell*R_ell(z)J_ell-R(z) on the full model Hilbert space, with
z nonreal, eta=|Im z|, and let a be bounded. Let chi be a bounded scalar
radial insertion supported in (-infinity,x1-delta] for some fixed delta>0.
For 0<ell<delta the removed collar is disjoint from supp chi. The exact
restriction identity gives

    M_chi D_ell = M_chi J_ell* (R_ell J_ell-J_ell R).    (1)

On each angular eigenspace mu, the range of the operator in parentheses
consists of L² solutions of (H_mu-z)w=0 on the cut half-line. The existence
and uniqueness result in `interior-dirac-poisson-existence.md` says that
such a solution is uniquely determined by one endpoint component. Thus the
radial range has dimension at most one. This statement includes arbitrary
full-space inputs, even those supported in the removed collar. A rank-one
operator has trace norm equal to its operator norm, so the fixed-mode
comparison yields

 ||M_chi D_(ell,mu)(z)||_1
  <= ||chi||_infinity sqrt(ell) sqrt(2k_mu)/eta
                                      (1+k_mu/eta),       (2)

where k_mu=|z|+||a||_infinity |mu|. Multiplicity in the angular eigenspace
is counted separately; the rank-one statement is per radial two-component
mode.

Assume Tr exp(-s A²)<=H s^(-m/2) for 0<s<=1. Because the operators are
mode diagonal and the heat weight is scalar on each eigenspace, summing
(2) with exp(-tau mu²), splitting that weight into two equal halves, and
using the explicit Gaussian supremum in
`changing-cut-explicit-smoothing-rate.md` gives, for 0<tau<=1,

    ||M_chi D_ell(z) exp(-tau A²)||_1
       <= C_z H ||chi||_infinity sqrt(ell)
                                 tau^(-m/2-3/4).         (3)

The direct sum is trace class because the sum of the block trace norms is
finite. For the recorded magnetic sphere, m=2 and the bound is
O(sqrt(ell) tau^(-7/4)); ell=o(tau^(7/2)) suffices for it to vanish.
Unlike the earlier probe estimate, (3) uses the actual radial multiplication
insertion and no added radial resolvent. The same argument applies with an
additional bounded radial multiplier on the right.

The fixed support separation is essential for (1). Insertions touching the
limiting boundary or a shrinking collar leave a removed-collar term that is
not covered here. The cut projector is the specified local model projector,
not automatically the transported physical condition. The angular heat
factor, nonreal spectral parameter, physical bundle and time-frequency
matching, full mixed vertices, and regulator limits remain independent
requirements. In particular (3) is not an unweighted curved-response trace
or a proof of Paper 1. No numerical calculation is used.

Remaining to-do list: control boundary-touching insertions and physical
matching, complete the response and prior-art audit, prepare the manuscript,
and certify supported claims in Lean on GCP.