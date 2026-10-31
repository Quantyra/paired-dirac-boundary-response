# Candidate operational definition for the P1-D remainder

Status: proposed definition contract; not the frozen source's definition, a
proved estimate, or a claim that the desired subtraction is correct. The
frozen source at `f0eab590`, Sec. 5, states a bound for `r_curved` but does
not supply the term-by-term subtraction formula. This note makes the missing
choices reviewable before any proof of the bound is attempted.

Section 5 does refer to “the tangent term (11),” the integrable flat
diagnostic established in Section 4. This supports Section 4's diagnostic as
the term explicitly referenced there. It does not specify whether that flat
diagnostic exhausts the subtraction after localizing the complete paired
Weyl Hessian, or how angular-mass vertices, cutoff transitions, density and
local-action terms are allocated. The full formula for `r_curved` therefore
remains incomplete.

## Candidate object

Fix the source-prescribed seed Hilbert space and, for every finite physical
cut `eta>0`, a unitary identification `U_eta` to that space. On that common
space write `L_eta(s,r)` for the positive square along the actual paired
full-Weyl two-parameter family and `C_eta(s,r)` for the transported trace
density or insertion. For `t>0`, define

    F_eta(s,r;t) = Tr[C_eta(s,r) exp(-t L_eta(s,r))],
    H_eta(t;u,w) = partial_s partial_r F_eta(0,0;t).

The derivative is the complete product-rule/Duhamel derivative: both
ordered first-vertex terms, the mixed second vertex, and the derivatives of
`C_eta`. Include every thermal/angular sector assigned to the heat trace;
keep the zero sector separate if that is the source action's allocation. This is the formula in
[`fixed-cut-moving-insertion-mixed-response.md`](fixed-cut-moving-insertion-mixed-response.md).

Choose once a smooth collar cutoff `chi` equal to one near the seam and
supported in the source collar. Set `u_chi=chi*u` and `w_chi=chi*w`.
Derivatives of `chi` are retained through these localized directions; they
are not discarded as lower-order errors. The exact tangent subtraction is
not determined by the frozen source. Two distinct documented choices are:

**Section 4 tangent candidate.** Section 4 of the frozen source gives
`H_t(k)=2F(t k^2)/(pi t)` and separately retains the massive angular weight
`Theta(t)`. This yields

    T_4,chi(t;u,w) = c_phys Theta(t) integral_R
       conjugate(uhat_chi(k)) what_chi(k) [2 F(t k^2)/(pi t)] dk/(2 pi).

**Full-Weyl tangent candidate.** The complete flat full-Weyl calculation
instead gives the angular-weighted multiplier

    H_FW(t,k) = 2/(pi t) {
       Theta(t)[I(x)-x I'(x)]
       - t Theta'(t)[I(x)-x A'(x)]
       + t^2 Theta''(t) A(x) },  x=t k^2,

where `A(x)=integral_0^1 exp(-alpha(1-alpha)x)dalpha` and
`I(x)=integral_0^1 [1+x(1-2alpha)^2/4] exp(-alpha(1-alpha)x)dalpha`.
The full-Weyl expression is derived in
[`full-weyl-angular-local-subtraction.md`](full-weyl-angular-local-subtraction.md).
This yields

    T_FW,chi(t;u,w) = c_phys integral_R
       conjugate(uhat_chi(k)) what_chi(k) H_FW(t,k) dk/(2 pi).

The terms involving `Theta'` and `Theta''` encode the angular-mass
variation; they are absent from the Section 4 expression. The physical-half
and time/action factors below apply to either candidate, but do not make the
two tangent subtractions equivalent. Section 5's cross-reference supports
`T_4,chi` as its named integrable tangent candidate. Whether the `Theta'` and
`Theta''` terms in `T_FW,chi` are also part of the localized tangent
subtraction or are allocated elsewhere in the complete action remains to be
derived. The cutoff transport and the
normalization of the entire regulated action must also be specified. The
positive-time full-Weyl-minus-orbit difference is the correction ledger
`D_mu(t)` in [`p1d-response-versus-conversion.md`](p1d-response-versus-conversion.md);
it includes the mixed correction vertex and ordered cross/correction terms.
It is not automatically a local restoration or a source contact.

The existing normalization audit fixes part of `c_phys`: for the rank-two
full-plane tangent multiplier and boundary-orthonormal time, the per-exterior
physical-half factor is `1/2`. If the original reduced canonical time is
used, restore the source's boundary length density `sqrt(beta)`; the final
action conversion factor `-2G/B^2` multiplies the whole action separately.
These factors must each be applied once. See
[`tangent-regulator-normalization.md`](tangent-regulator-normalization.md)
and [`flat-orbit-fiber-normalization.md`](flat-orbit-fiber-normalization.md).

Write `A_eta(t;u,w)` for the signed sum of the action/contact terms not
included in `H_eta`. Its definition must list the boundary transgression,
LLL/cocycle allocation, and every finite local restoration exactly once. If
any term is already included in `H_eta`, it must not be added again in
`A_eta`.

For either declared tangent choice `T_chi`, the proposed regulated remainder
is

    r_eta(t;u,w) = H_eta(t;u,w) + A_eta(t;u,w) - T_chi(t;u,w),

where signs in `A_eta` are inherited from the original action. The target estimate would have to hold
uniformly for the admitted coefficient family, `eta`, and all other physical
regulators, followed by positive-time convergence and the stated joint
endpoint limit. The cutoff `chi`, `U_eta`, `C_eta`, `A_eta`, `c_phys`, and
order of limits are all part of the theorem statement.

## Why the definition matters

Equation (5.6) of the draft is one fixed-interior odd-odd component after a
specified flat `a_0` subtraction. It leaves an order-zero term involving
`h' u'w' + u''w''` in raw rank-two normalization. It does not determine
`H_eta` or `A_eta`. Under the candidate definition, a cancellation of this
component must come from an explicitly included term in the complete
response or action allocation; it cannot be inferred from the flat
multiplier alone. This is a consistency test for the eventual definition,
not evidence that the full P1-D bound fails.

## Decisions required before adopting the candidate

1. Verify whether Section 5's reference to the Section 4 tangent term (11)
   exhausts the subtraction, or whether full-Weyl angular-mass variations
   are included or allocated separately; also distinguish either from
   endpoint conversion `J_e''`.
2. Fix the actual cutoff function and the maps transporting it to each finite
   physical cut; state whether the estimate is uniform in a cutoff family.
3. Give the signed formula for `A_eta`, including density, contact,
   transgression, LLL/cocycle, and finite local terms.
4. Confirm that the half-trace, boundary-length and whole-action factors
   above are applied exactly once, and fix the order/joint path for the
   physical-cut and proper-time regulator limits.

Until these decisions are settled from the full source action, this remains a
template only. No physical response or regulator theorem is claimed.

Remaining to-do list: settle the four definition inputs from the source;
derive the all-sector fixed-cut identity; then prove its uniform curved and
moving-cut remainder on the stated common regulator.
