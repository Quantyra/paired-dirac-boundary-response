# Lapse-weighted relation between canonical and Euclidean squares

This records the local algebra behind the distinction in
`canonical-euclidean-contact-matching.md`. It is a differential-expression
calculation on a stationary collar, not a global domain equality, a heat
trace identity or a Lean certificate.

In the product-frame orbit metric use inward proper distance y and canonical
radial coordinate s as in `rn-proper-canonical-collar-jets.md`:

    dy/ds=sqrt(B),       f=1/sqrt(B).

The half-density orbit Dirac expression of
`physical-auxiliary-collar-match.md` is

    D_orb=gamma_y partial_y+f gamma_tau partial_tau
         = f [gamma_y partial_s+gamma_tau partial_tau].      (1)

The separated sphere term at the product seed is i mu Gamma/b, in the
convention of `product-sphere-mixed-response.md`. Multiplying the complete
expression by gamma_tau/f gives the canonical-time form

    gamma_tau D_mu / f = partial_tau + H_mu,                 (2)

where H_mu=gamma_tau gamma_y partial_s+i mu gamma_tau Gamma/(b f).
With the source's fixed Clifford convention and radial orientation, this
has the canonical first-order structure of the frozen Hamiltonian, with
angular coefficient 1/(b f)=sqrt(B)/b=sqrt(F)/r. A reversal of s or a
change of gamma basis changes signs; (2) defines the convention used here.
The spin/copy identification and actual boundary conditions are not
established by matching these expressions.

Let H be any formally self-adjoint time-independent canonical expression
and F be multiplication by the positive lapse f(s), independent of tau.
On compactly supported smooth sections, let P=F(partial_tau+H); the
constant unitary gamma_tau does not affect P*P. Then

    P*P=(-partial_tau+H) F²(partial_tau+H)
       =F²(-partial_tau²+H²)+[H,F²](partial_tau+H).          (3)

This follows from the product rule and [partial_tau,H]=[partial_tau,F]=0.
For H=-i sigma_2 partial_s+V(s) with matrix potential V commuting with
scalar F, [H,F²]=-i sigma_2 (F²)'. Thus the second term in (3) is generally
nonzero. Even for constant F!=1, the first term rescales the heat-time
argument. Consequently a formal first-order lapse relation cannot be used
as an equality between the Euclidean positive-square heat semigroup and
exp[-t(-partial_tau²+H²)] at the same t.

Equation (3) is deliberately restricted to a smooth compactly supported
core: extending it to actual squares requires the unitary half-density,
spin and bundle maps, first-order and adjoint domains, and their composition
domains. The Euclidean thermal circle and regular bolt also need matching.
At the asymptotic product boundary f approaches a finite constant, but
local convergence of f alone does not provide a uniform trace or a
common-regulator limit. The angular spectrum already present in H must not
be counted a second time by multiplying its trace by an independent Theta.

No numerical computation is used. The identity identifies the extra
lapse/commutator terms that a valid canonical-to-Euclidean comparison must
carry; it does not determine their cancellation in the complete physical
observable.

Remaining to-do list: establish physical unitary and domain matching, bound
the lapse and commutator contributions in the regulator, complete novelty
and manuscript, and certify supported claims in Lean on GCP.
