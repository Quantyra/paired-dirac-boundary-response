# Opposite-sign cancellation in full-Weyl angular response

This is an ordinary algebraic reduction for the massive angular tower. It
resolves the sign-cancellation question for the declared common orbit-mode
model, but does not prove that the physical source realizes that model or
bound the remaining even cross terms.

## Hypotheses

For each massive level `n`, suppose the sphere eigenspaces at
`mu=+mu_n` and `mu=-mu_n` have equal multiplicity `r_n` and are identified
with the same orbit Hilbert space. Assume the identification intertwines the
seed square, orbit first and mixed vertices, smearing, and trace density.
This is the product-mode setup of
[`full-weyl-angular-mode-correction.md`](full-weyl-angular-mode-correction.md):

    Q_0(mu)=D*D+mu^2,
    V_u,V_w,W_uw independent of the sign of mu.

At the seed, write the angular first and mixed vertices as

    A_u(mu)=E_u(mu)+O_u(mu),
    E_u(mu)=-2 mu^2 u,
    O_u(mu)=-i mu G c(du),

    A_uw(mu)=F_uw(mu)+R_uw(mu),
    F_uw(mu)=4 mu^2 uw,
    R_uw(mu)=2 i mu G [u c(dw)+w c(du)].

The same definitions apply to `w`. Thus `E,F` are even in `mu` and `O,R`
are odd. The seed semigroup satisfies

    exp(-s Q_0(+mu_n))=exp(-s Q_0(-mu_n))

under the assumed identification. The source's massive sphere count
`d_n=2(q+2n)` includes both signs, so `r_n=q+2n` per sign.

## Cancellation

Every ordered orbit-angular Duhamel term contains exactly one angular first
vertex and one orbit first vertex, with all heat factors and orbit vertices
sign-independent. Therefore, term by term,

    Tr[A_u(+mu) e^(-s Q_0) V_w e^(-r Q_0)]
      + Tr[A_u(-mu) e^(-s Q_0) V_w e^(-r Q_0)]
    = 2 Tr[E_u(mu) e^(-s Q_0) V_w e^(-r Q_0)].

The other ordering and the interchange `u<->w` obey the same identity.
Consequently the gradient-odd `mu G c(du)` pieces cancel from the *summed
orbit-angular cross response*. The surviving cross vertices are the scalar
mass-potential terms `-2 mu^2 u` and `-2 mu^2 w`. Their tower weight is
`sum_n 2 r_n mu_n^2 exp(-t mu_n^2)=-Theta'(t)` in the source's combined
multiplicity convention.

For the angular-only part, the odd mixed second vertex cancels between signs
as well. In the two-angular-vertex ordered products, the even-even and
odd-odd products survive, while each even-odd product cancels. In particular
the `O_u O_w` terms, which are proportional to `mu^2`, must be retained; this
lemma does not reduce the entire angular correction to its scalar potential
piece.

The proof is just the paired sum `X(+mu)+X(-mu)` after identifying the
sign-independent factors. It applies to finite sums and to convergent
positive-time sums by absolute convergence. It makes no assumption about a
cancellation of the LLL: that finite zero-mode block has `mu=0` and remains
separate under the source allocation.

## Consequence and first unsupported implication

Under these hypotheses, the curved orbit-angular estimate can focus on
scalar angular-potential insertions paired with the orbit vertices; the
first-order gradient-odd cross insertions do not contribute after the
massive-sign sum. This is a reduction of the required estimate, not the
estimate itself. It does not give the localized small-time subtraction or
the `t^(3/2)` remainder. The even angular-angular `O_u O_w` contribution,
physical density/contact, boundary transgression, thermal images and source
conversion remain in the complete response.

The source-specific obligation is to verify that the global magnetic mode
map and actual paired domains implement the same orbit Hilbert space,
seed operator, insertions and trace density for both signs. The spectrum and
combined multiplicity are recorded in
[`magnetic-sphere-transport-counting.md`](magnetic-sphere-transport-counting.md),
but multiplicity alone does not prove those intertwining identities. No
numerical computation or Lean certification is claimed.

Remaining to-do list: verify the sign-pair mode/domain identification for the
physical source; bound the surviving even curved cross and angular terms
under the common regulator; match all source terms; complete novelty and
manuscript work; certify supported claims on GCP.
