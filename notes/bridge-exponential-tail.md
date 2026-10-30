# Nonlinear bridge exponential: uniform higher-order tail

Status: ordinary estimate for one term of the source's contact bridge, not a
proof of the complete curved contact, a renormalized response, or a Lean
certificate. It retains the variable path average A_h and shifted
insertions. The source formula is Eq. (6) of the pinned
[variable-contact conversion](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-variable-contact-conversion.md).

## Claim

Let f be real on a line or periodic double, with 0<m≤|f| and
||f'||∞≤G. For h∈R and a bridge path ξ define

    A_h(y)=∫₀¹ f(y+hξ_s)²ds,
    B_h(y)=∫₀¹ f'(y+hξ_s)ds,
    z_h(y)=h² B_h(y)²/(4A_h(y)).

Let u∈L¹ and v∈L∞. For the source's prefactor 1/(2π), consider the
contribution obtained by replacing exp(z_h) by its Taylor remainder after
1+z_h+z_h²/2:

    R_exp(h)= (1/(2π)) ∫dy u(y) E[
      (∫₀¹ v(y+hξ_α)dα) A_h(y)^(−1/2)
      {exp(z_h)−1−z_h−z_h²/2}].

For |h|≤h₀,

    |R_exp(h)| ≤ [e^(c h₀²)c³/(12πm)]
                     |h|⁶ ||u||₁ ||v||∞,
    c=G²/(4m²).                                             (1)

This is uniform over any family and its approximants with the same m,G,
h₀ and insertion norms. It does not require fourth or higher derivatives
of f, Gaussian moments, or a smallness condition on G; the constant may be
large and is not an admission margin.

## Proof and regulator consequence

For every path, A_h≥m² and |B_h|≤G, so 0≤z_h≤c h². Taylor's integral
remainder gives 0≤e^z−1−z−z²/2≤e^z z³/6 for z≥0. The shifted v average
has absolute value at most ||v||∞, A_h^(−1/2)≤1/m, and expectation
preserves these bounds. Integrating |u| yields (1). The argument applies
to each approximant without differentiating it, provided the uniform
bounds and a legitimate source bridge representation hold.

With t=h² and the independently stated angular bound
−Theta'(t)≤24C_angular/t² in the same normalization, the absolute value
of the corresponding 2Theta'(t)R_exp(√t) contribution is at most

    [4 C_angular e^(c t₀)c³/(πm)]
       t ||u||₁||v||∞,        0<t≤t₀=h₀².                 (2)

Thus this specific high-order exponential contribution vanishes at a
common endpoint cutoff under those assumptions. The factor 2Theta' is the
one in the source conversion; no extra angular or per-exterior factor is
introduced here. The conclusion is not a bound for an integrated action
with a different measure.

## Remaining terms

The retained terms A_h^(−1/2), z_h A_h^(−1/2) and
(z_h²/2)A_h^(−1/2) still depend nonlinearly on the same bridge path. Their
h-expansion, rough coefficient derivatives, boundary terms, thermal images
and local subtractions must be handled together. In particular, the earlier
periodic quadratic B_h estimate used a constant prefactor and cannot simply
be substituted for the A_h-dependent term. This estimate does not establish
that the source bridge formula applies to the physical paired operator or
prove the proposed uniform curved mixed-response remainder. No numerical
computation is required for (1)–(2).

Remaining to-do list: estimate the three retained path-dependent terms and
paired boundary, verify uniform physical hypotheses and regulator, complete
the prior-art audit, and certify supported claims on GCP.
