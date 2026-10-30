# Euclidean collar comparison by a boundary-compatible cutoff

Status: conditional ordinary comparison mechanism for the physical
product-frame orbit contact. It identifies a concrete analytic estimate
that would connect the regular-bolt geometry to the auxiliary collar; it
does not prove that estimate, the common-regulator limit, or Lean
certification. It addresses the gap in [the bolt locality audit](contact-bolt-locality-gap.md).

## Setup and cutoff identity

Let L and L₀ be nonnegative self-adjoint second-order realizations on two
compact smooth two-dimensional manifolds with boundary, including their
Hermitian bundles. Assume the manifolds, bundles, metrics, connections and
operators agree on a collar U of the relevant boundary. Suppose their local
mixed projector domains agree there. Let u,v be bounded scalar insertions
supported in a compact K contained in that collar. Choose scalar χ=1 on a
neighborhood of K, supported in U, constant in the normal direction near
the physical boundary. Identify sections only where χ is supported.

The constancy of χ near the boundary preserves both Dirichlet and Robin
parts of the mixed square domain: the projector trace is multiplied by χ,
and the Robin condition acquires no extra normal derivative of χ. Assume
these standard H² mixed-domain identifications and the corresponding graph
mapping hold for both realizations. Then the commutator

    C=Lχ-χL₀=[L,χ]

is a first-order operator supported in the compact set F=supp(dχ), which is
separated from K by a positive distance d. Duhamel's formula gives

    e^(-tL)χ-χe^(-tL₀)
       = -∫₀ᵗ e^(-(t-s)L) C e^(-sL₀) ds.             (1)

The identity is first valid on a common smooth core and extends in the
appropriate graph/dual spaces. The bolt need not be represented by a
singular polar coordinate: it lies outside U, and only the physical heat
semigroup appears in (1).

## A sufficient off-diagonal input

A concrete sufficient estimate is the following, with constants uniform
for 0<r≤t₀ and for the relevant coefficient/regulator family:

    || 1_K e^(-rL) 1_F ||₂ +
    || 1_F C e^(-rL₀) 1_K ||₂
       ≤ A r^(-N) exp(-d²/(c r)),                    (2)

along with the analogous bounds obtained by interchanging L,L₀ and taking
adjoints. Here 1_F denotes a cutoff equal to one on supp(dχ), and its
support must still be separated from K. The derivative in C is included in
the second term; (2) is not merely a scalar heat-kernel estimate. The
Hilbert–Schmidt norms are on the identified orbit bundle and include the
complete thermal circle.

Combining (1), (2), Schatten Hölder and the fact that 1_Kχ=χ1_K=1_K gives

    ||1_K(e^(-tL)-e^(-tL₀))1_K||₁
      ≤ A² ∫₀ᵗ (t-s)^(-N) s^(-N)
            exp[-d²/(c(t-s))-d²/(cs)] ds.           (3)

For fixed N,d,c the right side is at most C_N t^(-M) exp[-d²/(c' t)]
for 0<t≤t₀, for suitable finite M,c',C_N. To see this, split the integral
at t/2 and substitute q=d²/(cs) near the singular endpoint; exponential
decay controls every polynomial. This gives a trace-norm local semigroup
comparison without introducing an artificial bolt boundary condition.

## Two insertions and remaining obligations

If u,v are supported in K, their contact traces can be written using the
compressed kernels 1_K e^(-rL)1_K and the corresponding L₀ kernels. A
telescoping product, trace duality and uniform localized positive-time
heat bounds turn (3) into an exponentially small contact difference, after
integrating over the two insertion times. The precise polynomial prefactor
must include the separate small-time bounds at both heat times; (3) alone
does not supply them. The same argument must be applied to every required
geometric and coincidence vertex, not only to the contact.

The central unproved step is (2) for the actual physical operator and the
auxiliary reflected model, with common bundle identification, regular bolt,
paired boundary and the rough physical-side regulator. Smooth compact
heat-kernel estimates at one fixed geometry do not automatically yield
constants uniform in the rough family, nor do they justify derivative and
short-time regulator limits. The auxiliary model's second boundary must be
outside U and included in the comparison. No numerical calculation can
replace these off-diagonal and domain estimates.

Remaining to-do list: prove the uniform physical off-diagonal bounds and
all vertex estimates; match normalization and regulator; finish the
novelty audit and certify supported claims in Lean on GCP.
