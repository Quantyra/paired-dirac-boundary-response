# RN lapse commutator near the product boundary

This quantifies the local coefficient difference in
`canonical-euclidean-lapse-square.md` for the frozen classical RN product
seed. It is a smooth-core estimate, not an operator-domain or heat-trace
comparison and not Lean-certified.

Let B(u)=X+u²-2a_m u³+h_m u^4 with X,b>0, let s=-x_* be the inward
canonical coordinate, and set F_lapse(s)=B(u(s))^(-1/2). The coordinate
relation ds/du=b/B gives du/ds=B/b. Therefore

    d(F_lapse²)/ds = -B'(u)/(b B(u)).                       (1)

At the limiting boundary, u=0 and B'(0)=0. Since u(s)=X s/b+O(s³), the
frozen polynomial yields

    F_lapse²(s)=1/X-s²/b²+(2a_m X/b³)s³+O(s^4),
    (F_lapse²)'(s)=-2s/b²+(6a_m X/b³)s²+O(s³).            (2)

The cubic coefficient in the first line retains the nonzero seed mass jet;
the leading commutator term depends on the quadratic boundary jet. The
expansions and constants are for fixed geometry and the declared inward
orientation.

Let H=-i sigma_2 partial_s+V(s), with V commuting with the scalar lapse,
and A=partial_tau+H. On compactly supported smooth sections in the collar
0<=s<=ell, the square identity of the lapse note gives

    P*P = F_lapse²(-partial_tau²+H²)
            -i sigma_2 (F_lapse²)' A.                       (3)

For sufficiently small ell there are fixed constants C0,C1 such that

    ||(F_lapse²-1/X)w|| <= C0 ell² ||w||,
    ||[H,F_lapse²]w|| <= C1 ell ||w||                       (4)

for every L² section supported in that collar. Thus the extra commutator
in (3) is bounded on this core by C1 ell ||A psi||, while the principal
coefficient difference is bounded by C0 ell² ||(-partial_tau²+H²)psi||.
These are local graph bounds, not operator-norm bounds for unbounded
squares or trace estimates. The compactly supported core avoids asserting
boundary-domain compatibility.

The estimate shows that the lapse becomes locally constant and its
commutator vanishes at the limiting boundary at explicit rates. It does not
establish a heat-semigroup comparison: the norms of A psi and the canonical
square can grow with thermal and angular frequency, and the actual domains,
bolt, common regulator and time rescaling must be handled. No numerical
calculation is used.

Remaining to-do list: match the physical unitary and domains, control the
frequency-weighted trace and regulator, complete novelty and manuscript, and
certify supported claims in Lean on GCP.
