# Scalar jump coefficient at arbitrary derivative order

This calculation extends the independent p=1 check in [the normalization audit](scalar-jump-normalization-audit.md). It concerns the quadratic scalar-potential heat trace on a flat plane, not the paired Dirac metric variation. The [Bordag–Vassilevich preprint](https://arxiv.org/html/hep-th/0404069v2), section III.2, is the comparison source; the publisher's full text has not been verified here.

Let p be a nonnegative integer. Let V be real, compactly supported and piecewise sufficiently smooth on R, with derivatives through p−1 continuous across the sole interface at zero and jump J=V^(p)(0+)−V^(p)(0−). Assume its piecewise (p+1)st derivative is in L1 and V belongs to H^p. For p=0 there are no lower matching conditions. Distributionally

    V^(p+1)=J delta_0+g,    g in L1.

For the scalar operator −Delta+lambda V(y) on R², use the quadratic coefficient Q(t) per unit tangential length, not the second lambda derivative. With a=alpha(1−alpha) and the Fourier convention in the audit,

    Q(t)=t/(8pi) integral_R |Vhat(k)|² A(tk²) dk/(2pi),
    A(x)=integral_0^1 exp(−a x) d alpha.

Subtract the first p+1 Taylor terms in A, indexed j=0,...,p. They are integrable because V is in H^p. The singular surface contribution then has the limit

    Q(t)−Q_sub(t) = (4pi)^(-1/2) gamma_p J² t^(p+3/2)
                     + o(t^(p+3/2)),
    gamma_p = (−1)^(p+1) / [2^(2p+5)(p+1)!].              (1)

For p=1 this gives gamma_1=1/256, or 1/(512 sqrt(pi)) multiplying t^(5/2), agreeing with the prior one-interface calculation.

## Derivation

The distributional identity gives (ik)^(p+1)Vhat(k)=J+ghat(k), so |k|^(2p+2)|Vhat(k)|² is bounded and tends to J² as |k| tends to infinity. Define

    R_p(z)=exp(−z)−sum_(j=0)^p (−z)^j/j!.

After the scaling s=sqrt(t)k, dominated convergence applies to the subtracted Fourier integral: the remaining kernel R_p(a s²)/s^(2p+2) is bounded near zero and O(s^−2) at infinity, uniformly in a in [0,1/4]. Thus the limiting coefficient is

    J²/(8pi²) integral_0^1 a^(p+1/2) d alpha
                    integral_0^infinity R_p(x²) dx/x^(2p+2).

Taylor's integral remainder and a Gaussian integral give

    integral_0^infinity R_p(x²) dx/x^(2p+2)
       = (−1)^(p+1) pi/[2 Gamma(p+3/2)],
    integral_0^1 [alpha(1−alpha)]^(p+1/2) d alpha
       = Gamma(p+3/2)² / Gamma(2p+3).

Their product yields (1) via the half-integer gamma identity. These steps include the complete frequency integral and the ordered-Duhamel normalization; the sign convention for a scalar potential does not affect a quadratic coefficient.

## Four-dimensional flat scalar specialization

For `n=4`, take a potential depending only on the normal coordinate and
constant in the three tangential coordinates. The free heat trace factors
into the two-dimensional normal-plus-one-tangential trace above and the two
remaining tangential heat densities. Per unit interface area, this multiplies
the two-dimensional coefficient by `(4 pi t)^(-1)`. Thus for a
first-derivative jump (`p=1`) the independently derived scalar coefficient is

    Q_4(t)-Q_4,sub(t) = J^2/[2048 pi^(3/2)] t^(3/2) + o(t^(3/2)).

This is the scalar-potential `a_7` contribution for one scalar fiber and one
flat interface, with `Q` the coefficient of `lambda^2`, not its second
lambda derivative. Substituting `p=1` in the accessible preprint's Eq. (32)
instead gives `J^2/[1024 pi^(3/2)]`, twice this value. The apparent factor-two
discrepancy therefore persists after the dimension lift. This calculation is
an exact tensor-product reduction of the scalar model; it does not identify
any term in the full-Weyl Dirac variation or settle the published equation,
whose full text remains gated.

The preprint's displayed Eq. (32) instead has the same expression without the factor 1/(p+1)!. The comparison uses the preprint's one-sided jump convention and the coefficient of the quadratic term, with one scalar fiber and one interface. It is evidence of a discrepancy in the accessible preprint, not a determination about the published version or an erratum. It also does not establish which terms survive in the Dirac variation, or a novelty verdict. No Lean verification is claimed.

Remaining to-do list: independently review the general derivation and inspect the publisher's version or an authoritative correction; complete the physical Dirac comparison, manuscript and Lean certification on GCP.
