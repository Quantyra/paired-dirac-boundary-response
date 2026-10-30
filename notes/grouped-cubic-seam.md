# Direct cubic seam integral for the remaining scalar vertices

Status: ordinary all-frequency calculation for the smooth flat model and
its specified cubic Fourier-tail limit. It independently evaluates the
non-potential, non-Clifford group in [the vertex decomposition](flat-vertex-component-form-factors.md).
The physical paired normalization, source benchmark, novelty and Lean
certification remain separate.

## Exact group and subtraction

Use the same rank-two full-plane multiplier and conditional per-exterior
half factor as [the Clifford seam calculation](clifford-cubic-seam.md).
Subtract the potential-pair and Clifford-pair kernels from the full
first-vertex kernel. With x=tk², a=α(1-α), v=1-2α, the resulting
grouped physical-half multiplier is

    H_group(t,k)=(1/(4πt))∫₀¹ e^(-a x) P(a,x)dα,
    P(a,x)=8+(4-16a)x+(-2a+4a²)x².                       (1)

This group includes principal and scalar first-order vertices and their
cross terms with the isolated potential. Let R_group(a,x) be e^(-a x)
P(a,x) minus its Taylor polynomial through x³ at zero. These are local
polynomial subtractions for this group; when groups are added their Taylor
polynomials add to the complete first-vertex subtraction.

For real even localized u,w with bounded k⁸ conjugate(û)ŵ and tail
144c_u c_w |k|^-8+o(|k|^-8), the same scaling and dominated convergence
argument used in the Clifford note gives

    B_group(t) ~ (36/π²)c_u c_w t^(5/2) J_group,
    J_group=∫₀¹dα∫₀∞ R_group(a,s²) ds/s⁸.                 (2)

Each term below is absolutely integrable after its stated Taylor
subtractions; finite-frequency contributions are O(t³) for the stated
localized profiles.

## Direct evaluation

Let

    E_j(z)=e^(-z)-Σ_(n=0)^j (-z)^n/n!.

Then the integrand in (2) is

    8 E₃(a s²)+(4-16a)s² E₂(a s²)
                  +(-2a+4a²)s⁴ E₁(a s²).                (3)

For each fixed a>0 put r=√a s. Integration by parts gives

    ∫₀∞ E₁(r²)dr/r⁴ = 2√π/3,
    ∫₀∞ E₂(r²)dr/r⁶ = -4√π/15,
    ∫₀∞ E₃(r²)dr/r⁸ = 8√π/105.                           (4)

Each boundary term vanishes at both endpoints; absolute integrability and
Fubini justify integrating α after evaluating these three signed terms.
Substitution of (3)–(4) gives

    J_group=√π ∫₀¹ [-(12/5)a^(5/2)+(264/35)a^(7/2)] dα.

The two beta integrals are B(7/2,7/2)=5π/1024 and
B(9/2,9/2)=35π/32768. Therefore

    J_group=-15π^(3/2)/4096,
    B_group(t) ~ -135/(1024√π) c_u c_w t^(5/2).        (5)

This is a direct evaluation of the grouped kernel, rather than the
bookkeeping difference previously noted.

## Relation to the complete result

In the same conventions, the independent scalar-potential pair contributes
+144/(1024√π), the Clifford pair -24/(1024√π), and this group
-135/(1024√π). Their sum is -15/(1024√π), agreeing with the independently
derived complete flat tangent coefficient. The local second-vertex trace is
a polynomial in k and adds no t^(5/2) term under these component
subtractions. This consistency does not resolve the prior preprint's
scalar-jump prefactor or prove the paired physical trace, regulator limit
or novelty. No numerical computation is used.

Remaining to-do list: resolve the prior scalar benchmark and physical
normalization, complete the response and novelty audits, write the
manuscript and certify supported claims in Lean on GCP.
