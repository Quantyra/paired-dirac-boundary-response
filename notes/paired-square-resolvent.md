# Paired square resolvent: factorization and domain audit

Status: ordinary operator argument conditional on the stated hypotheses;
not yet Lean-certified and not a geometric or heat-trace theorem. It fills
the algebraic factorization left open in [the resolvent constant audit](resolvent-variation-constants.md).
The proof must still be matched to the actual paired realization and its
mass/log field class in the pinned [rough-variation source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-rough-paired-variation.md).

## Assumptions

Let D_0 be densely defined and closed on a complex Hilbert space. Let J be a
bounded unitary involution satisfying D_0* = -J D_0 J as closed operators,
including equality of domains. Set Q_0=J D_0; then Q_0*=-Q_0 and
Dom(Q_0)=Dom(D_0).

Let b be real, bounded and let E=exp(-b/2) be a bounded positive invertible
multiplication operator commuting with J. Assume E and E^-1 preserve both
Dom(D_0) and Dom(D_0*). Define D_b=E D_0 E on Dom(D_0). The
[bounded-congruence argument](bounded-congruence-argument.md) gives its
closedness and adjoint. Commuting E with J yields

    D_b* = E D_0* E = -J D_b J,
    Q_b := J D_b = E Q_0 E,             Q_b*=-Q_b.          (1)

These equalities include their natural domains. The graph-domain invariance,
closed seed realization, J relation, and actual scalar multiplication must
be independently verified for the paired problem; they are not consequences
of formal Clifford algebra alone.

## The actual square and first-order inverses

The positive square is defined by composition, L_b=D_b*D_b, with domain
{x in Dom(D_b): D_b x in Dom(D_b*)}. By (1),

    L_b = -Q_b^2,    Dom(L_b)=Dom(Q_b^2).                   (2)

Indeed J D_b x lies in Dom(D_b) exactly when D_b x lies in J Dom(D_b),
which is Dom(D_b*) by (1); their actions agree there. This equality does not
identify Dom(L_b) with the seed square domain.

Fix M>0. Skew-adjointness of Q_b makes M+Q_b and M-Q_b boundedly invertible
as maps from Dom(Q_b) to H. Write R_plus=(M+Q_b)^-1 and
R_minus=(M-Q_b)^-1. Their ranges lie in Dom(Q_b), and they commute: the
resolvent identity for the same closed operator yields this, or equivalently
apply both orders to the common dense domain and use boundedness. The product
R_minus R_plus maps H into Dom(Q_b^2), and direct composition proves

    (M^2-Q_b^2)^-1 = R_minus R_plus
                    = (R_plus+R_minus)/(2M).                (3)

Conversely the same product of factors acts as M^2-Q_b^2 on Dom(Q_b^2), so
(3) is an equality of bounded operators on H, not a formal manipulation that
freezes the square domain. The equality follows also from the spectral
calculus of i Q_b. The positive sign in (3) depends on Q_b being skew-adjoint.

For each sign, using Q_b=E Q_0 E and E^-2=exp(b),

    M +/- Q_b = E [M exp(b) +/- Q_0] E                    (4)

on Dom(Q_0). The natural domain on the right is E^-1 Dom(Q_0), equal to
Dom(Q_0) by the two-sided invariance assumption. Taking inverses in the
correct order gives

    R_+/- = E^-1 [M exp(b) +/- Q_0]^-1 E^-1.               (5)

The middle inverses exist by (1) of the resolvent constant audit, applied to
both Q_0 and -Q_0. Combining (2), (3) and (5) supplies the square-resolvent
identity used in that audit. Its derivative bounds follow when all their
assumptions are satisfied; no spectral trace summation follows.

## Analytic continuation versus actual domains

For a complex L-infinity perturbation z in the small ball, the two bounded
operators defined by the right sides of (5), with b replaced by b+z, have the
holomorphic Neumann continuations and Cauchy bounds from the constant audit.
For an arbitrary L-infinity z, multiplication by exp(-(b+z)/2) need not
preserve Dom(Q_0), so this continuation is not automatically an actual
unbounded operator Q_(b+z) or its square. The factorization (4)-(5) applies
to a perturbed actual realization only after the corresponding multiplier
and inverse domain-preservation hypotheses are verified. This distinction
also prevents using a bounded operator continuation as a regulator-uniform
curved trace theorem.

Remaining to-do list: audit J and the weak multiplier hypotheses for the
actual paired finite-cut and limiting domains, justify the Dirac/heat-trace
variation and common regulator at its advertised scope, compare closest prior
results, and formalize the supported operator identities on GCP.
