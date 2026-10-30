# Exact flat Dirac square and mixed metric vertex

Status: ordinary bulk algebra for the flat tangent model. This extends
[the scalar-jump comparison](dirac-vs-scalar-jump.md) to the complete mixed
operator vertex. It is not a physical boundary-domain theorem, a novelty
verdict or a Lean certificate.

## Exact expression

Let D=γ_y∂_y+γ_τ∂_τ on the flat plane, with Hermitian Clifford matrices,
and put Γ=γ_yγ_τ. For a real smooth bounded normal profile b(y), set
E=e^(-b/2), D_b=EDE and L_b=D_b*D_b=-D_b² as a bulk differential
expression. Then

    L_b=e^(-2b)[ -Δ + 2b'∂_y + b'Γ∂_τ
                       + (1/2)b'' - (3/4)(b')² ].        (1)

To derive it, write a=e^(-b), so D_b=aD+(1/2)γ_y a'. The Clifford
anticommutation and the product rule give

    D_b²=a²Δ + 2aa'∂_y + aa'Γ∂_τ
             +(a/2)a''+(1/4)(a')².

Substituting a'=-ab' and a''=a[(b')²-b''] and negating yields (1).
The expression holds on smooth test sections; no equality of operator
domains is inferred from it.

## First and mixed second vertices

For b=su+tw, differentiate at s=t=0. The first variation is

    V_u=2uΔ+2u'∂_y+u'Γ∂_τ+(1/2)u''.                       (2)

The genuine mixed second derivative is

    W_(u,w) = -4uwΔ
       -4(uw'+wu')∂_y -2(uw'+wu')Γ∂_τ
       -(uw''+wu'') -(3/2)u'w'.                           (3)

Both are differential operators; their multiplication coefficients are
ordered on the left. Equation (3) includes the mixed variation of the
principal coefficient and the local second vertex. It is the mixed derivative
∂_s∂_t L_(su+tw), not the coefficient of st after an additional factor of
one half.

For the smooth compact test problem, differentiating the heat trace gives

    δ_wδ_u Tr(e^(-tL_b))|₀
      = ∫_(0<s₁<s₂<t) Tr[e^(-(t-s₂)L₀)V_u
             e^(-(s₂-s₁)L₀)V_w e^(-s₁L₀)] ds₁ds₂
        + (u↔w)
        - ∫₀ᵗ Tr[e^(-(t-s)L₀) W_(u,w)e^(-sL₀)] ds.   (4)

The two ordered terms and the genuine mixed vertex are all required; (4)
is formal until the trace-density and domain conditions are supplied.
The curvature/density variation and the source's separate mass-contact
conversion must be applied in their declared conventions, not guessed from
an isolated summand of (3).

## Comparison with scalar potential resummation

A fixed scalar potential family -Δ-ζV has no change in its leading symbol,
no first-order Clifford vertex and no intrinsic second operator vertex if V
is linear in ζ. Consequently the scalar second-order form factors in
[Franchino-Viñas, Theorem 3](https://arxiv.org/html/2208.11979v2) do not
by themselves evaluate (4): they address the potential-insertion part of a
fixed-principal-symbol problem. A nontrivial coordinate, conjugation or
vertex reduction might still express (4) in terms of known scalar kernels;
this algebra does not rule that out or establish novelty.

For even cubic/log directions, (1)–(4) must be interpreted using physical-side
approximants, actual paired domains and distributional limits. Products and
boundary traces must be justified in the regularity used by the paper.
Neither the unresolved scalar-jump coefficient nor a curved uniform
remainder is settled here. No numerical computation is required for the
operator algebra.

Remaining to-do list: carry out the full trace-level reduction and
normalization, resolve the scalar benchmark, complete the physical response
and novelty audit, and certify the supported claims in Lean on GCP.
