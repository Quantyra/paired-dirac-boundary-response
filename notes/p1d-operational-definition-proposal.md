# Candidate operational definition for the P1-D remainder

Status: source-following candidate contract; not the frozen source's definition, a
proved estimate, or a claim that the desired subtraction is correct. The
frozen source at `f0eab590`, Sec. 5, states a bound for `r_curved` but does
not supply the term-by-term subtraction formula. This note makes the missing
choices reviewable before any proof of the bound is attempted.

Section 5 refers to “the tangent term (11),” the integrable flat diagnostic
established in Section 4. The best-supported working interpretation is to
localize that Section 4 tangent and keep the full-Weyl angular-mass correction
in the physical response unless the complete action shows it is subtracted
separately. The source does not specify the localization maps, cutoff
transitions, or the allocation of density and local-action terms, so the full
formula for `r_curved` remains incomplete.

## Candidate object

Fix the source-prescribed seed Hilbert space `H_0`. For every finite physical
cut `eta>0`, let `H_eta` be its physical Hilbert space and let
`U_eta:H_eta->H_0` be the source-prescribed unitary identification. On the
common space, write `L_eta(s,r)=U_eta L_phys,eta(s,r) U_eta^*` for the
transported positive square along the actual paired full-Weyl two-parameter
family, and `C_eta(s,r)` for the transported trace density or insertion.
For `t>0`, define

    F_eta(s,r;t) = Tr[C_eta(s,r) exp(-t L_eta(s,r))],
    H_eta(t;u,w) = partial_s partial_r F_eta(0,0;t).

The derivative is the complete product-rule/Duhamel derivative: both
ordered first-vertex terms, the mixed second vertex, and the derivatives of
`C_eta`. Include every thermal/angular sector assigned to the heat trace;
keep the zero sector separate if that is the source action's allocation. This is the formula in
[`fixed-cut-moving-insertion-mixed-response.md`](fixed-cut-moving-insertion-mixed-response.md).

Fix a collar width `delta` strictly inside the source collar and one smooth
profile `chi` with `chi(y)=1` for `0<=y<=delta/3` and `chi(y)=0` for
`y>=2 delta/3`. Use this same profile for every physical cut `eta<delta/3`.
After transporting the cut problem to the fixed seed Hilbert space by
`U_eta`, apply the fixed multiplication operator `M_chi`; its physical
representative is `U_eta^* M_chi U_eta`. Set `u_chi=chi*u` and
`w_chi=chi*w` on the fixed space. Derivatives of `chi` are retained through
these localized directions; they are not discarded as lower-order errors.
The multiplier norm is exactly uniform by unitarity:
`||U_eta^* M_chi U_eta||=||M_chi||=||chi||_infinity`. This does not give
uniform first- or second-derivative multiplier bounds, graph-commutator
bounds, or moving-domain transfer when the physical coordinates vary with
`eta`; those remain proof obligations. The full subtraction formula is not
determined by the frozen source. Section 4 is the best-supported tangent
candidate; the full-Weyl expression below is the comparison alternative.

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
subtractions equivalent. Section 5's cross-reference makes
`T_4,chi` the best-supported tangent candidate. Under this interpretation,
the `Theta'` and `Theta''` terms in `T_FW,chi` remain in the physical response
and must be controlled in the remainder, unless the complete action assigns
them a separate subtraction. The cutoff transport and normalization of the
entire regulated action must also be specified. The
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

1. Confirm that Section 5's reference to tangent term (11) means the localized
   Section 4 diagnostic; verify whether full-Weyl angular-mass variations
   remain in `r_curved` or receive a separate action subtraction. Distinguish both from
   endpoint conversion `J_e''`.
2. Prove uniform first- and second-derivative and graph-commutator bounds
   for the physical representatives of `M_chi` under `U_eta`, and establish
   the moving-domain transfer as `eta` tends to zero. The multiplier norm
   itself is already uniform by unitarity. State whether the theorem is
   uniform in any larger cutoff family.
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
