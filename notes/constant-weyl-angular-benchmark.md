# Constant Weyl variation: exact full angular benchmark

This provides an exact all-mode consistency check on the product seed for
the angular vertices in `full-weyl-angular-vertices.md`. It is an ordinary
calculation, not a Lean certificate, a local boundary asymptotic, or a proof
of the physical regulator limit.

The scalar one-mode second derivative and its full-versus-orbit-only Hessian
difference are now checked in Lean on GCP; see the
[exact-source receipt](../evidence/gcp-full-weyl-constant-mode-20261031/README.md).
The all-mode trace factorization and physical normalization below remain
ordinary conditional arguments, outside that certificate.

Let P be the constructed closed product first-order operator, H=P*P>=0,
and assume its heat operator is trace class for every t>0. Set
K(t)=Tr(e^(-tH)). For spatially constant real directions u,w and
b=s u+r w, scalar congruence gives

    P_b=e^(-b) P,      H_b=e^(-2b) H.

These are exact equalities of closed operators with the original domains,
since the multiplier is a nonzero constant. Thus, for t>0,

    partial_s partial_r Tr(e^(-tH_b))|_(s=r=0)
       = 4 u w [t² K''(t)+t K'(t)].                         (1)

Indeed d/db K(t e^(-2b))=-2t e^(-2b)K'(t e^(-2b)), and another
derivative gives (1). The spectral theorem justifies both t derivatives:
for fixed t>0, polynomially weighted heat traces are finite by comparison
with Tr(e^(-tH/2)). This includes all eigenvalues and any zero modes.

For the fixed-sphere product seed assume H=L tensor 1+1 tensor B² and both
heat factors are trace class. Write k(t)=Tr(e^(-tL)) and
Theta_all(t)=Tr(e^(-tB²)), including the desired zero sector. Then K=k Theta_all.
The corresponding *orbit-only* deformation has square
H_b^orb=e^(-2b)L tensor 1+1 tensor B², so its mixed derivative is
4u w Theta_all(t)[t² k''(t)+t k'(t)]. Subtracting it from (1) gives the
exact full-congruence correction

    4 u w {t²[2 k'(t) Theta_all'(t)+k(t) Theta_all''(t)]
             +t k(t) Theta_all'(t)}.                        (2)

The three pieces in (2) are respectively the orbit/angular cross pairing,
the angular first-vertex pair, and the angular mixed second vertex, with
signs and normalizations already combined in the derivative. This follows
by differentiating the product, and is also consistent with the angular
shift mu² e^(-2b) on each mode. In particular, the cross term is required;
replacing the full variation by an orbit-only derivative drops all of (2).

For a single mode, exp(-t mu² e^(-2b)) has mixed derivative
4u w exp(-t mu²)[t² mu^4-t mu²], agreeing with (2). On the zero angular
sector the angular derivatives vanish, while its orbit response remains.
If the angular sector has a positive eigenvalue and u w is nonzero, the
difference is not identically zero as a function of t: for example with
L=0 and a single nonzero mode it equals the displayed single-mode result.
The formula does not require that it be nonzero at every particular t.

The argument permits any fixed commuting sector projection in Theta_all and
retains the chosen multiplicities; per-exterior factors, thermal reduction,
local contacts and common four-dimensional subtraction must be applied only
after their physical normalization is established. Constant directions do
not obey every localized boundary-jet condition and serve as an algebraic
benchmark, not as a substitute for the cubic/log tangent calculation. Neither
(1) nor (2) justifies interchanging a proper-time regulator limit.

Remaining to-do list: verify the physical bundle and mode normalization,
assemble and estimate the localized subtracted response, decide novelty,
prepare the manuscript, and certify supported results in Lean on GCP.
