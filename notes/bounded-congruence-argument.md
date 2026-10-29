# Bounded-congruence domain lemma: ordinary proof and geometric obligations

Status: independent paper-specific ordinary argument for an abstract lemma;
its application to the paired Dirac operator and its Lean formalization remain
open. This lemma does not assert heat-trace, tangent-response or renormalized
curved-action results. The previous goal turn established the paper repository
and extracted the initial domain identities; that was progress.

## Claim

Let H be a complex Hilbert space and D a densely defined closed operator.
Let E be bounded, boundedly invertible, self-adjoint, and assume both E and
E^(-1) map Dom(D) into itself. Assume also that both map Dom(D*) into itself.
Define D_E on Dom(D) by D_E x = E D(E x). Then D_E is closed and densely
defined, and

    Dom(D_E) = Dom(D),
    D_E* = E D* E,       Dom(D_E*) = Dom(D*).

Here each product denotes the composition with its natural domain. The
associated positive square is D_E* D_E, whose domain is exactly

    {x in Dom(D): D_E x in Dom(D*)}.

This formula does not assert equality of this square domain with the original
Dom(D* D).

If the commutator C = D E - E D on Dom(D) extends to a bounded operator on H,
then for x in Dom(D),

    ||D_E x|| <= ||E||^2 ||D x|| + ||E|| ||C|| ||x||,
    ||D x|| <= ||E^(-1)||^2 ||D_E x||
                 + ||E^(-1)|| ||C|| ||x||.

These inequalities compare the graph norms. They are abstract estimates;
the numerical bounds in the historical rough-variation source require their
own multiplier and Clifford-normalization audit.

## Proof

Domain invariance under E and E^(-1) gives E Dom(D)=Dom(D). Since D is
closed, the operator D composed on the right with E is closed: if x_n -> x
and D E x_n -> y, then E x_n -> E x and closedness gives E x in Dom(D)
and D E x = y. Its domain is Dom(D). Multiplication on the left by the
boundedly invertible E preserves closedness: if E D E x_n -> z, then
D E x_n -> E^(-1) z and the preceding argument applies. The domain is dense
because Dom(D) is dense.

For the adjoint, first note that for bounded E,
( E D E )* = (D E)* E, with domain {y: E y in Dom((D E)*)}.
Because E is boundedly invertible, (D E)* = E D* with domain Dom(D*):
indeed boundedness of x -> <D E x,y> on E^(-1) Dom(D) is equivalent,
under v = E x, to boundedness of v -> <D v,y> on Dom(D). The representing
vector transforms by E. It follows that (E D E)* = E D* E with natural
domain {y: E y in Dom(D*)}; the two-sided invariance assumptions make this
Dom(D*). This reasoning uses bounded invertibility; equality for an arbitrary
bounded right factor is not being assumed.

By the definition of composition, x belongs to Dom(D_E* D_E) exactly when
x is in Dom(D_E) and D_E x lies in Dom(D_E*). The displayed square-domain
formula follows. No separate boundary condition is inserted into this
abstract identity.

For the graph estimates, C x = D E x - E D x gives D_E x = E^2 D x + E C x.
Rearranging gives D x = E^(-2) D_E x - E^(-1) C x. The triangle inequality
and operator norm bounds yield the two estimates. Together with the shared
||x|| term they show equivalence of the two graph norms. This completes the
abstract argument, subject to independent review and formal verification.

## How this connects to the actual paired geometry

The pinned [stationary paired Dirac note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-paired-dirac-phase.md)
and [conformal-domain note](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-exterior-conformal-domain.md)
state, at a smooth finite cut, chi = tau_3 gamma_n and Pi_+ = (1+chi)/2.
The Dirac domain imposes Pi_- psi = 0; its adjoint uses Pi_+ phi = 0.
The latter is the annihilator under the boundary Green pairing because
[chi,gamma_n]=0. The regular thermal bolt is not an additional boundary.

The cited conformal-domain source gives D = gamma_n(nabla_n+K/2)+D_intr in
a normal parallel frame, and states that D_intr anticommutes with chi. On an
allowed boundary trace, D_intr maps to the complementary projector. Requiring
D psi to satisfy the adjoint boundary condition therefore yields the mixed
square conditions Pi_- psi = 0 and Pi_+(nabla_n+K/2)psi = 0. With inward
normal n_in = -n, the source uses S = -K/2 on Pi_+ in the mixed heat
convention. This is a smooth finite-cut boundary-jet argument; identifying the
closed operator domain with the appropriate Sobolev realization still needs
the relevant elliptic trace and regularity theorem and its hypotheses.

For E = exp(-b/2), scalar and identical on both copies, the projectors
commute with its boundary trace. One must still prove that E and E^(-1)
preserve the actual graph domains, including weak product rule, trace mapping,
regular-bolt behavior, coefficient regularity and the selected finite or
limiting geometry. The source's commutator formula is the Dirac product rule
[D,E] = Clifford(dE); the applicable norm depends on the specified Clifford
and metric conventions. The partner-J relations and the parameter-dependent
resolvent bounds are separate obligations, not corollaries of this lemma alone.

The fixed-projector first-order problem gives a mixed Dirichlet/Robin square.
A comparison to interface transmittal or transfer conditions must prove the
relationship between their boundary trace spaces and this projector problem;
a superficial doubled notation is insufficient. Neither this note nor the
smooth finite-cut comparison settles the common-regulator interchange for the
rough mass/log family.

Remaining to-do list: audit the geometric trace/regularity and commutator
hypotheses against the exact paired realization, check the source's quantitative
constants and tangent response, compare primary literature, and encode and
verify each applicable statement in Lean on the designated GCP builder.
