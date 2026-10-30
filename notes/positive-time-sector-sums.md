# Angular and thermal sums at positive heat time

Status: conditional finite-cut consequence of
[paired positive-time trace derivatives](paired-positive-time-trace-derivatives.md),
not a small-time or common-regulator theorem and not Lean-certified. It
addresses whether decomposing that trace into all angular and thermal modes
can lose an unaccounted tail.

## Statement

Assume the hypotheses of the positive-time trace-derivative argument. Let
T_j(t) be the mixed trace-norm derivative of the four-dimensional heat
operator at z=0, and T(t) the corresponding limit. Let {P_a} be a countable
family of mutually orthogonal projections on the same Hilbert space, with
strong sum I; the index may enumerate angular, thermal and degeneracy
labels together. For every fixed t>0,

    Tr T_j(t) = Σ_a Tr(P_a T_j(t) P_a),
    Σ_a |Tr(P_a T_j(t) P_a)| ≤ ||T_j(t)||₁.             (1)

No individual mode is omitted. If the projections are the actual sector
projections of the paired geometry, (1) is its full sector decomposition;
that identification and sector normalization are separate hypotheses. The
formula itself does not require T_j to commute with the projections.

For any increasing sequence of finite index sets F_N exhausting all labels,
the tails in (1) converge uniformly for t in [t₀,T], and uniformly for all
sufficiently large j. The limit and sum may therefore be exchanged on that
positive-time interval:

    lim_j Σ_a Tr(P_a T_j(t) P_a)
      = Σ_a Tr(P_a T(t) P_a),                             (2)

uniformly for t∈[t₀,T]. This does not supply uniformity as t₀↓0.

## Argument

For any trace-class operator S and a finite set F, set P_F=Σ_(a∈F)P_a.
Choose phases z_a of modulus at most one and put U_F=Σ_(a∈F) z_a P_a.
Since ||U_F||≤1, trace duality gives

    |Σ_(a∈F) z_a Tr(P_a S P_a)| = |Tr(U_F S)| ≤ ||S||₁.

Choosing phases to align the complex terms proves the absolute-sum bound.
Moreover strong convergence P_F→I implies ||S−P_F S P_F||₁→0: first check
it for finite-rank S, where strong convergence is uniform on each finite
dimensional range, then approximate a trace-class S in trace norm. Cyclicity
of the trace gives Tr(P_F S P_F)=Σ_(a∈F)Tr(P_a S P_a), proving (1).
The same phase argument applied to projections outside F bounds the absolute
tail by ||(I−P_F) S (I−P_F)||₁.

The positive-time argument gives uniform trace-norm convergence T_j→T on
[t₀,T]. It also gives trace-norm continuity of T(t), by the same semigroup
and Cauchy-contour construction. The image of the compact time interval is
therefore compact in trace norm. Finite-rank approximation and the strong
convergence of P_F make the preceding tail bound uniform on that compact
set. The triangle inequality then transfers uniform tail control to T_j for
all sufficiently large j. Trace-norm convergence also gives uniform
convergence of the sums, proving (2).

The compact-set step is essential: pointwise tail convergence alone is not
uniform in t or in the approximants. No numerical truncation has been
introduced, and (1) is not an estimate for a divergent absolute angular
sum of operator-norm resolvent bounds. The actual four-dimensional sector
projectors, zero-mode allocation, per-exterior factor, local subtractions
and angular proper-time cutoff must still be matched. In particular, this
argument does not justify the limit t→0 or prove the proposed curved
subtracted remainder.

Remaining to-do list: verify the actual mode decomposition and finite-cut
bundle, prove the required short-time and regulator estimates, complete the
prior-art audit, and certify supported results in Lean on GCP.

## Matching the recorded product-frame sectors

The pinned [conformal-domain source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-exterior-conformal-domain.md),
section "Exact product separation and the proper Euclidean gap", states at
a finite cut

    L_4 = L_2 ⊗ 1 + 1 ⊗ D_{S,q}²/b²,

with the orbit boundary condition independent of the sphere eigenspace.
For a smooth compact monopole sphere, the self-adjoint sphere Dirac operator
has a complete discrete spectral resolution. Its squared-eigenspace
projections, tensored with the orbit identity and the paired copy identity,
therefore form mutually orthogonal projections with strong sum I. The
zero-eigenspace is included as its own projection, not hidden in the n≥1
sum. Under the source's product identification, the angular projectors
meet the hypotheses of (1), conditional on the finite-cut trace-class
argument and actual bundled domain.

For an orbit-rotation-invariant finite-cut geometry and boundary condition,
the regular thermal spin lift supplies the corresponding circle
representation on L² spinors. Its character projections are mutually
orthogonal and complete. In the source's rotating polar frame their
frequencies are (j+1/2)κ₀; the apparent antiperiodicity is a frame/spin
condition and does not turn the bolt into a boundary. The polar frame is
singular at the bolt, but the bolt has measure zero for the L² character
decomposition; regularity of the actual operator domain is a separate
condition, not something proved by Fourier completeness. The angular and
circle actions commute in the stated product setup, so products of their
spectral projections supply a joint countable resolution.

When b,u,w are radial and the fixed-frame identifications, operator and
projector domain have the source's product/rotation invariance, the
corresponding heat operators and their parameter derivatives preserve these
sectors. Even without proving that stronger commutation, the diagonal trace
sum (1) is valid for the complete joint projections. The source's n≥1
factorization and its d_n normalization concern the specified product seed;
they are not automatically a factorization of an arbitrary curved-family
mixed response. The LLL, physical-half convention, mode degeneracies and
common four-dimensional subtraction must remain explicit when interpreting
the sector traces. No statement here controls the limit t₀→0.

Remaining to-do list: verify the actual fixed-frame bundle and projector
domains, connect the mode labels and per-exterior normalization, prove the
short-time regulator estimate, and certify supported results on GCP.
