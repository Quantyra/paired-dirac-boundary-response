# Strong changing-cut resolvent convergence for the separated tower

Status: ordinary consequence of [the changing-cut estimate](changing-cut-resolvent-comparison.md)
for the specified direct-sum half-line model. This removes the angular heat
smoothing from strong resolvent convergence, but does not prove operator-norm
or trace-norm convergence, the physical bundle identification, or Lean
certification.

## Statement

Let A be the magnetic sphere Dirac operator with complete discrete
orthogonal eigenspaces indexed by μ, including zero modes and multiplicity.
Assume the full and cut Hamiltonians are the orthogonal direct sums of the
self-adjoint separated operators in the changing-cut note, on the fixed
full interval (-∞,x₁] and cut intervals (-∞,x₀] with x₀↑x₁. The real
coefficient a is essentially bounded on the full interval. Each mode uses
the same declared local σ₁ projector at its outer endpoint. Let J_ℓ be
restriction to the cut and J_ℓ* extension by zero, with ℓ=x₁-x₀.

For every z∈ℂ\ℝ and every fixed f in the full L² direct-sum Hilbert space,

    J_ℓ* (H_cut-z)^(-1) J_ℓ f
        → (H_full-z)^(-1) f               strongly as ℓ↓0.      (1)

This uses the direct sum of the complete tower, not a fixed angular cutoff.
The operator on the left is the cut resolvent embedded by zero on the
removed collar; it is not itself the resolvent of a densely defined
self-adjoint operator on the full Hilbert space. Equation (1) is the precise
varying-space convergence claimed here.

## Proof

Write R=(H_full-z)^(-1), R_ℓ=(H_cut-z)^(-1), and η=|Im z|. First prove

    || J_ℓ Rf - R_ℓ J_ℓ f || → 0.                         (2)

On any fixed finite set of angular eigenspaces, the fixed-mode estimate in
the changing-cut note gives convergence at rate O(sqrt(ℓ)); the constant
may depend on that set. For arbitrary f, approximate it in L² by its
finite-sector projection f_N. Because J_ℓ is a contraction and the two
self-adjoint resolvents have norm at most 1/η,

    || J_ℓ R(f-f_N)-R_ℓ J_ℓ(f-f_N) || ≤ 2||f-f_N||/η,

uniformly in ℓ. First take ℓ↓0 for fixed N, then N→∞. This establishes (2)
without interchanging an unbounded sum of modewise constants.

Finally,

    || J_ℓ*R_ℓJ_ℓ f - Rf ||
      ≤ ||R_ℓJ_ℓ f - J_ℓ Rf|| + ||(I-J_ℓ*J_ℓ)Rf||.

The first term vanishes by (2). The second is the L² norm of the fixed
function Rf on the collar (x₀,x₁], which tends to zero by absolute
continuity of the integral. This proves (1).

## Scope

The same reasoning works for either complementary local projector and for
finite paired copies, provided the declared direct-sum and common-coordinate
identifications are valid. The fixed reference RN-AdS canonical coefficient
is bounded and its tortoise-coordinate collar length tends to zero; matching
those assumptions to the physical Euclidean operator and domains remains
separate. Strong convergence alone does not control traces, derivatives of
traces, the proper-time cutoff, or the norm over all angular modes. The
model does not establish the curved trace remainder or a physical stability
claim. No numerical computation is needed.

Remaining to-do list: prove the physical bundle and sector identification;
control the trace, thermal and regulator limits; complete the response and
novelty audits; and certify the supported claims in Lean on GCP.
