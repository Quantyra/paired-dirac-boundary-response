# First-order physical partner limit under exhaustion

This strengthens the positive-square comparison in
`physical-euclidean-finite-cut-strong-limit.md` to the first-order partner,
under explicit common-bundle and partner assumptions. It concerns ordinary
physical L2 on a fixed smooth complete geometry; it does not identify the
canonical boundary-source problem or a renormalized trace.

Let X be the complete finite-copy Euclidean exterior, with smooth Hermitian
Dirac bundle and a fixed global parallel unitary involution J commuting with
the Clifford action. Let D be the skew-adjoint closure of the formally skew
Dirac expression on C_c^infinity(X), as in
`physical-euclidean-complete-dirac-domain.md`. Parallelism and Clifford
commutation make J preserve that core and commute with D. Thus Q=JD is
skew-adjoint, and A=iQ is self-adjoint with C_c^infinity(X) as a core.
The existence and physical matching of this J remain assumptions, not
consequences of the pointwise matrix identity; see
`common-folded-bundle-partner.md`.

Let X_R exhaust X by smooth finite cuts, H_R=L2(X_R), and let j_R:H_R->H
be extension by zero, H=L2(X). For each R take a closed densely defined
first-order realization D_R of the same local differential expression,
whose domain contains C_c^infinity(X_R), and assume the actual closed
partner identity D_R*=-J D_R J. Set A_R=i J D_R on H_R. Then A_R is
self-adjoint, including its domain. Put P_R=j_R j_R* and extend A_R to the
fixed Hilbert space as the self-adjoint direct sum

    A_tilde_R = j_R A_R j_R* on P_R H, and 0 on (1-P_R)H. (1)

For each z in C outside the real axis,

    j_R (A_R-z)^(-1) j_R* -> (A-z)^(-1) strongly on H.    (2)

To prove this, let phi be any compactly supported smooth section. Its
support is eventually inside X_R, so phi belongs to Dom A_tilde_R and
A_tilde_R phi=A phi. Set f=(A-z)phi. Then for all sufficiently large R,
(A_tilde_R-z)^(-1)f=phi=(A-z)^(-1)f. Such f form a dense subspace of H:
the compact core is dense in Dom A in the graph norm, and A-z maps Dom A
onto H. The uniform self-adjoint resolvent bound 1/|Im z| extends convergence
to all H. Finally

 (A_tilde_R-z)^(-1)
   = j_R(A_R-z)^(-1)j_R* - z^(-1)(1-P_R),

and P_R tends strongly to 1 because X_R exhausts X, proving (2).

For each fixed t>0, the bounded continuous functional calculus for strong
resolvent convergence gives

    j_R exp(-t A_R^2) j_R* -> exp(-t A^2) strongly.       (3)

The complement contribution in exp(-t A_tilde_R^2) is (1-P_R), which
vanishes strongly. Since A_R^2=D_R*D_R and A^2=D*D on their actual
composition domains, (3) is consistent with the earlier positive-square
result. It adds first-order resolvent convergence, while requiring the partner
identity that the earlier form argument did not need.

The finite-cut domain may be any one satisfying the displayed assumptions;
this does not show it is the finite-cut transport of a prescribed infinity
boundary condition. Strong convergence does not control operator norms,
heat traces, boundary source maps, parameter derivatives or common-regulator
finite parts. In particular, it neither proves nor disproves a non-L2
canonical coupling. No numerical computation or Lean certification is claimed.

Remaining to-do list: verify the physical global J and finite-cut domains,
match the canonical source and regulator, complete response and prior-art
audits, prepare the manuscript, and certify supported claims in Lean on GCP.