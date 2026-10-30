# Jet-preserving smoothing of the post-log remainder

Status: ordinary approximation result for the strengthened fractional
translation class in [the uniform tail note](uniform-log-tail-translation.md).
It constructs approximants that retain the cubic and logarithmic jets and
uniform Fourier control. It is not asserted for the entire original weighted
class or as a replacement for the physical common heat regulator; it is not
Lean-certified.

## Assumptions and construction

Let

    u=χ[c|y|³+d|y|⁴log|y|]+r,

with fixed even smooth compactly supported χ=1 near zero. Assume r is real,
even and compactly supported in a fixed interval, belongs to W^{5,1}(ℝ),
and g=r^(5) obeys the uniform translation bound

    ||g(·+h)-g||₁≤M|h|^σ,   0<σ≤1, |h|≤1.                (1)

In one dimension W^{5,1} has a continuous C⁴ representative; assume the
required physical remainder jets r^(j)(0), j≤4, are fixed by the intended
profile. Let ρ be an even nonnegative C∞ mollifier of integral one and
support in [-1,1], and set r̃_ε=ρ_ε*r. Choose a fixed even smooth compactly
supported cutoff ζ=1 near zero. Define

    P_ε(y)=Σ_(j=0)^4 [r̃_ε^(j)(0)-r^(j)(0)] y^j/j!,
    r_ε=r̃_ε-ζ P_ε,
    u_ε=χ[c|y|³+d|y|⁴log|y|]+r_ε.                        (2)

The remainders r_ε are smooth, even and supported in one fixed enlarged
interval for ε≤1. By construction r_ε^(j)(0)=r^(j)(0) for j≤4. The
explicit cubic and logarithmic jets are unchanged. The full u_ε is
intentionally not smooth across the seam when c or d is nonzero.

## Uniform convergence and translation modulus

Mollification and (1) give

    ||r̃_ε^(5)-g||₁ ≤ M ε^σ ∫ |s|^σρ(s)ds.               (3)

Because r and r̃_ε have support in a common bounded interval, repeated
integration from outside that interval bounds the uniform norms of their
derivatives through order four by a fixed multiple of the L¹ norm in (3).
The coefficients of P_ε are therefore O(Mε^σ), uniformly in the family.
It follows that r_ε→r in W^{5,1} and W^{4,∞}, at O(ε^σ) with fixed
support constants. In particular the first-order multiplier norms used by
the paired-domain argument converge, assuming the common global extension.

The fifth derivative is

    r_ε^(5)=ρ_ε*g-(ζP_ε)^(5).

Convolution does not enlarge the L¹ translation modulus:
||τ_h(ρ_ε*g)-ρ_ε*g||₁≤M|h|^σ. The correction is a fixed finite-dimensional
smooth compactly supported family with coefficients O(Mε^σ); hence its L¹
translation modulus is at most C M|h| for |h|≤1, which is at most
C M|h|^σ. Thus the r_ε share a uniform fractional translation constant,
and [the uniform flat logarithmic expansion](uniform-log-tail-translation.md)
applies with the same c,d and an ε-independent bound.

## Limits and domains

This construction regularizes only the post-jet remainder. It deliberately
preserves the nonsmooth logarithmic term, so it does not give smooth
full-profile approximants at the seam. On a fixed physical half-collar the
explicit jet has bounded first and second derivatives and zero normal first
jet, but applying the paired multiplier and square-domain results still
requires their actual H¹, trace and global extension hypotheses. The
positive-time convergence of the flat bilinear follows from H³ convergence;
interchange with a physical curved trace, thermal/angular sums and the
common regulator is not established here.

Condition (1), compact support and the post-jet decomposition are stronger
than the recorded weighted bound. The construction does not prove that the
intended physical solution belongs to this class. No numerical computation
is used.

Remaining to-do list: verify applicability to the intended fields and
physical domains, prove the curved/contact regulator limit, complete the
novelty audit and manuscript, and certify supported claims in Lean on GCP.
