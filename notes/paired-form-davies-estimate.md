# Davies off-diagonal estimate from the paired first-order form

Status: ordinary estimate under explicit uniform form and trace hypotheses.
It supplies the operator-norm part of the sufficient input in
[the Euclidean collar comparison](euclidean-collar-cutoff-comparison.md),
and a route to its Hilbert–Schmidt derivative bound. It does not verify the
physical family hypotheses or certify them in Lean.

## First-order form and scalar weights

Let D be a closed densely defined first-order realization on a Hermitian
bundle over a compact manifold with boundary. Assume its H¹ projector form
domain V=Dom(D) is preserved by real W^{1,∞} scalar multipliers, and

    D(e^φ u)=e^φ(Du+c(dφ)u),
    ||c(dφ)|| ≤ a ||dφ||∞                                 (1)

for a fixed a>0. Put L=D*D with the actual composition domain. For a real
Lipschitz φ and v∈V, the mixed form satisfies

    Re <D(e^(-φ)v), D(e^φ v)>
       = ||Dv||²-||c(dφ)v||²
       ≥ -a²||dφ||∞² ||v||².                             (2)

The cross terms are complex conjugates with opposite signs and have zero
real part. This calculation uses only the common first-order form domain;
it does not assert a fixed square domain or differentiate the boundary
projector.

Applying the standard weighted-form energy argument to the heat equation,
or first using smooth bounded weights and then taking limits, gives

    ||e^φ e^(-tL)e^(-φ)|| ≤ exp(a²||dφ||∞² t).           (3)

For measurable sets E,F with distance d>0, choose a bounded Lipschitz
weight equal to zero on F, at least αd on E and with Lipschitz constant α.
Using (3) and optimizing α=d/(2a²t) yields the Davies–Gaffney estimate

    ||1_E e^(-tL)1_F|| ≤ exp[-d²/(4a²t)].                (4)

The metric defining distance and the Clifford bound in (1) must be the same
or related by an explicitly bounded ellipticity constant. Scalar weights
commute with the paired projectors, so this argument respects both the
first-order domain and its natural square form, including a regular bolt.

## Adding a local first derivative

Suppose a first-order commutator C supported in F has, for a smooth cutoff
ψ equal to one near F and supported a positive distance from E, a uniform
local estimate

    ||Cw|| ≤ c₁ (||D(ψw)||+||ψw||).                       (5)

Spectral calculus gives the global bound
||D e^(-rL)||≤(2er)^(-1/2), but it cannot simply be multiplied by (4):
the spatial cutoff and the heat factor do not commute. A localized energy
or weighted-gradient estimate is still needed to establish

    ||C e^(-tL)1_E|| ≤ C₂(1+t^(-1/2)) exp[-d₁²/(c t)]. (6)

Here d₁ is a positive distance between E and the commutator support. Equation
(5) is an elliptic/local graph hypothesis, and neither it nor (6) follows
from (1) by the naive semigroup splitting. For a commutator between two
identified operators, the estimate must be checked in the common collar and
applied to the correct semigroup.
## From operator norm to Hilbert–Schmidt norm

If the family also has a uniform positive-time heat trace bound

    Tr(e^(-rL)) ≤ H r^(-p),      0<r≤t₀,                  (7)

then ||e^(-rL)||₂≤H^(1/2)(2r)^(-p/2). Given the derivative estimate (6), splitting a separated heat operator
once more and using the Schatten ideal property upgrades (4) and (6) to
Hilbert–Schmidt off-diagonal bounds with a polynomial factor in t and an
exponential exp(-d₂²/(c t)); finite positive separations may be reduced to
make the intermediate cutoffs. These are the type of bounds required by
the collar comparison. The same argument applies to the auxiliary model
if it has the matching assumptions.

The actual rough metric family must still supply common distances, the
uniform multiplier constant a, the local graph bound (5), the heat-trace
bound (7), compatible smooth approximants and their exact common-collar
identification. A fixed smooth finite-cut estimate does not establish those
uniform inputs, and the full response vertices and regulator limit remain
separate. No numerical computation is used.

Remaining to-do list: verify the uniform physical and auxiliary hypotheses;
apply the resulting bounds to all response vertices; complete prior-art,
manuscript and Lean certification work on GCP.
