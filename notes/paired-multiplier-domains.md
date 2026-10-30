# Scalar multipliers on paired H1 projector domains

Status: ordinary conditional domain argument, not a verification of the
entire physical realization or a Lean certificate. The key hypothesis below
is an actual H1 domain characterization, which must be checked for the paired
operator, its complementary adjoint and the limiting geometry. A formal
boundary projector alone does not establish that characterization.

## Claim and hypotheses

Let X be a smooth compact Riemannian manifold with smooth boundary and a
finite-rank Hermitian Clifford bundle. Let D be a closed first-order Dirac
realization with

    Dom(D) = {psi in H^1(X): Pi_- trace(psi)=0},
    Dom(D*) = {phi in H^1(X): Pi_+ trace(phi)=0},             (1)

where Pi_+,Pi_- are the prescribed complementary boundary projections and the
identities are of closed-operator domains, not just smooth cores. Assume the
usual H1 trace theorem and compatibility of trace with scalar W1,infinity
multiplication. On a noncompact or singular limiting geometry the analogous
trace, global product and domain theorems must be established separately.

Let b be real W1,infinity on X, identical on the two folded copies, with
B=||b||_infinity and G=||db||_infinity, and set E=exp(-b/2). Then E and E^-1
are bounded W1,infinity scalar multipliers and preserve both domains in (1).
For the Dirac operator and its weak product rule, on Dom(D),

    [D,E] psi = c(dE) psi = -(E/2)c(db) psi.               (2)

Assume the chosen Hermitian Clifford convention implies ||c(db)||=|db| for
real covectors. If another convention is used, retain its actual Clifford
operator constant instead of the displayed G.

## Proof of preservation

The W1,infinity chain and product rules give E,E^-1 in W1,infinity and
bounded multiplication on H1. Their scalar traces commute with both Pi_+ and
Pi_-. Hence an H1 field satisfying either condition in (1) retains it after
multiplication by E or E^-1. Applying the inverse multiplier shows equality
of each image with the original domain, not merely one-sided inclusion.
The covariant weak Leibniz rule yields (2), because E is scalar and commutes
with the bundle connection's fiber action. The same reasoning applies to D*
with its own complementary projector. No derivative of b beyond the first is
needed for this first-order domain argument.

The [bounded-congruence lemma](bounded-congruence-argument.md) therefore
applies to D_b=E D E, once (1) has independently been established. Its first
and adjoint domains remain those in (1), but its positive square has the
composition domain {psi in Dom(D_b): D_b psi in Dom(D_b*)}; no equality with
the unperturbed square domain is implied by the first-order statement.

## Explicit graph comparison

The weak product rule and |dE| <= E |db|/2 give, for psi in Dom(D),

    ||D_b psi|| <= exp(B) [||D psi|| + (G/2)||psi||].       (3)

For the reverse estimate use E^-2 D_b psi = D psi + E^-1 c(dE) psi.
Since E^-1 c(dE)=-(1/2)c(db) as a multiplication operator,

    ||D psi|| <= exp(B)||D_b psi|| + (G/2)||psi||.          (4)

These are the recorded graph comparisons with their stated real-scalar
Clifford normalization. They are norm estimates, not heat-trace estimates.
They also do not establish a uniform family unless B,G and all needed domain,
trace and geometric constants are uniform in that family.

## Relation to the recorded mass/log collar

The [pinned rough-variation note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md)
records b=c_b y^3+r_b with weighted bounds on the remainder and its first
five physical-side derivatives, for a fixed finite logarithmic weight. On a
bounded collar these bounds control b and its first weak derivative, and the
specified interior/regular-bolt charts must supply the corresponding global
W1,infinity bounds. The physical-side statement and the doubled/folded trace
must be matched to the actual domain; neither a regular disk bolt nor the
limiting outer boundary is replaced by an artificial puncture or wall.

The collar estimates do not themselves prove (1), a uniform trace theorem,
a fixed square domain, a nonlinear-neighborhood embedding or regulator-uniform
curved response. Those are separate hypothesis checks or research problems.

Remaining to-do list: trace the paired operator's H1 domain and adjoint proofs,
verify the fixed-atlas multiplier bounds and regular bolt, audit the full heat
and regulator claims, and formalize the supported statements on GCP.
