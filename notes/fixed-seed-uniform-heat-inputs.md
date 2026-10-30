# Uniform paired heat inputs on a fixed compact multiplier family

Status: ordinary conditional application of the graph estimates to the
[weighted derivative argument](paired-weighted-derivative.md). It verifies
several uniform analytic inputs on one fixed compact seed, assuming the
explicit seed estimates below. It does not establish a varying-geometry or
physical rough-family atlas, a common-collar matching, or Lean certification.

## Fixed-seed hypotheses

Let D be the closed first-order realization on a compact m-dimensional
manifold with boundary, with common H¹ projector domain V, and let L₀=D*D.
Assume the scalar product rule and an elliptic graph bound

    ||w||_(H¹) ≤ K (||Dw||₂+||w||₂),       w∈V,            (1)

and a seed heat trace bound

    Tr(e^(-tL₀)) ≤ H₀ t^(-m/2),       0<t≤t₀.              (2)

Let b range over real W^{1,∞} multipliers with ||b||∞≤B and
||db||∞≤G, identical on the folded copies, and assume their exponentials
and inverses preserve V. Put E_b=e^(-b/2), D_b=E_b D E_b and
L_b=D_b*D_b on its actual composition domain. The corresponding closed
forms have the common first-order domain V.

## Uniform heat and weight constants

The reverse graph estimate from [the multiplier argument](paired-multiplier-domains.md)
gives

    ||D_b w||² ≥ a₀ ||Dw||² - c₀ ||w||²,
    a₀=e^(-2B)/2,       c₀=e^(-2B)G²/4.                 (3)

By the min-max principle for the compact seed and the common form domain,
λ_j(L_b)≥a₀ λ_j(L₀)-c₀. For 0<t≤t₀,

    Tr(e^(-tL_b)) ≤ e^(c₀t) Tr(e^(-a₀tL₀))
                  ≤ e^(c₀t₀) H₀ a₀^(-m/2) t^(-m/2),   (4)

provided a₀t≤t₀, which holds because a₀≤1. Thus the trace input in the
Davies note is uniform over this fixed multiplier ball.

For real scalar φ, D_b(e^φw)=e^φ[D_bw+E_b² c(dφ)w]. Hence the weighted
Clifford coefficient is at most e^B times the seed coefficient. The
weighted form, Davies distance estimate and sectorial derivative bounds
therefore have constants uniform in b, for a fixed seed metric and fixed
cutoffs. The source's local weighted mass/log collar bounds help control
B,G there; they do not supply the required global bounds without the
specified interior and bolt charts.

## Uniform local commutator control

Assume in the common collar that L_b is represented in divergence form with
coefficients whose W^{1,∞} norms are uniformly controlled by the seed
coefficients, B and G, and let χ be a fixed smooth scalar cutoff. For w in
the operator domain, C_b=[L_b,χ] is first order with bounded coefficients
on supp(dχ). Choose ψ=1 near that support. Its coefficient bound and (1)
give

    ||C_b w||₂ ≤ Cχ (||D(ψw)||₂+||ψw||₂).

The reverse graph estimate converts the right side to
Cχ' (||D_b(ψw)||₂+||ψw||₂), uniformly in b. This supplies the local graph
input of the weighted derivative argument under the stated divergence-form
hypothesis. The cutoff must also preserve the required mixed square domains
for the Duhamel comparison; form-domain preservation alone is not that
second-order statement.

## Physical scope

This establishes uniform constants on a fixed compact seed for the specified
bounded multiplier ball, conditional on its H¹ domain, seed heat estimate,
coefficient representation and matching cutoff. It does not prove the seed
bundle identification or uniformity when the geometry, cut, bolt chart or
coefficient atlas varies. It also does not by itself bound geometric
variation vertices, the subtracted curved trace remainder or the
common-regulator limit. No numerical computation is used.

Remaining to-do list: verify these hypotheses for the actual paired and
auxiliary operators, complete all response vertices and regulator limits,
finish the novelty audit, and certify the supported paper claims in Lean.
