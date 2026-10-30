# Bolt behavior and the auxiliary bridge locality gap

Status: ordinary local asymptotic audit of the recorded regular-disk setup,
not a proof of the physical localization defect, a new boundary condition,
or a Lean certificate. It identifies why
[the whole-line auxiliary bound](contact-auxiliary-locality.md) cannot simply
be applied globally to the bolt.

## Local calculation

Let ρ be geodesic distance from a smooth nonextremal bolt and let the
thermal angle have period T=2π/κ, κ>0. Smoothness of the orbit disk gives

    g₂=dρ²+a(ρ)²dτ²,     a(ρ)=κρ+O(ρ³),
    f=1/a=1/(κρ)+O(ρ),    |∂_ρ f|=1/(κρ²)+O(1).

Thus the source's f is not bounded on a chart reaching the bolt, even
though the metric is smooth in Cartesian disk coordinates. For fermionic
antiperiodic frequencies p_j=(j+1/2)κ, the source's radial half-density
spin sectors have local potentials p_j² f²±p_j f' (the sign of f' depends
on the choice of increasing radial coordinate). At the lowest absolute
frequency |p|=κ/2, the two inverse-square coefficients are

    p²/κ² ± |p|/κ = 3/4 and −1/4.                         (1)

The adverse sign is critical: its leading one-dimensional expression is
−∂_ρ²−1/(4ρ²). Its two local zero-energy model behaviors are √ρ and
√ρ log ρ. The regular disk spinor domain selects the behavior induced by
the smooth Cartesian realization; one must derive the precise selection
from that realization rather than introduce an arbitrary endpoint domain.
The other sign has leading potential 3/(4ρ²).

This calculation also shows that a pointwise lower bound of the form
p²f²±pf'≥−C with a finite C cannot be obtained for the adverse lowest
sector by simply bounding f and f' on a bolt-reaching polar chart. It does
not imply the actual squared Dirac operator is negative or ill-defined:
the inverse-square singularity and the regular spinor domain belong to a
coordinate/half-density representation of a smooth geometric operator.

## Consequence for localization

The [auxiliary locality estimate](contact-auxiliary-locality.md) assumes
uniform m,F,G for two whole-line coefficients. It is valid on a fixed
collar separated from the bolt and for positive bounded extensions there.
It cannot, without another argument, compare one of those bounded models
to the complete bolt-reaching radial expression: F and G fail at the
polar endpoint, and the critical inverse-square sector requires its actual
regular-domain treatment. A direct Feynman–Kac domination using a globally
bounded potential therefore does not follow from the collar proof.

A valid physical comparison can instead use a smooth Cartesian bolt chart
and an off-diagonal heat-kernel/commutator estimate across a fixed separation,
or a radial singular-potential argument that proves the correct extension
and domination. Either route must handle both insertions, all thermal and
angular sectors, the paired boundary and the common regulator. The source's
parametrix claim is a proposed input to audit, not a result established by
this local asymptotic. No numerical computation is needed for (1).

Remaining to-do list: prove a physical localization estimate through the
regular bolt, verify the paired and mode normalization, close the regulated
mixed response, complete novelty review, and certify supported claims on GCP.
