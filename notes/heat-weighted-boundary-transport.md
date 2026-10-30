# Heat-weighted angular boundary transport

This quantifies one possible way around the unweighted operator-norm
obstruction in `transported-projector-angular-nonuniformity.md`. It concerns
the same zero-spectral-parameter transport model; it does not identify the
physical frequency-dependent boundary condition or certify the paper.

Let B be its angular self-adjoint operator, with compact resolvent, and
assume the angular heat trace satisfies

    Tr exp(-t B²) <= H t^(-m/2),  0<t<=1.                 (1)

Here m is the angular dimension and eigenvalue multiplicities, including
zero modes, are included once. On the angular eigenspace mu, the projector
difference Q_A=P(mu A)-P(0) has norm at most min(|mu A|,1/sqrt(2)) and
rank at most two on the two-component orbit fiber. The heat weight acts as
the scalar exp(-t mu²) on that block. Therefore

    ||Q_A exp(-t B²)||
       <= min(1/sqrt(2), |A|/sqrt(2 e t)).               (2)

The second term follows by maximizing |mu| exp(-t mu²). In particular,
heat-weighted operator-norm convergence holds along any joint path with
|A|/sqrt(t)->0, despite the unweighted norm obstruction.

For trace norm, use the rank-two bound and the spectral inequality
|mu| exp(-t mu²)<= (e t)^(-1/2) exp(-t mu²/2). Equation (1) yields

    ||Q_A exp(-t B²)||_1
       <= C H |A| t^(-(m+1)/2),                          (3)

for 0<t<=1, with C depending on m and the two-component fiber convention.
The trivial bound from ||Q_A||<=1/sqrt(2) also gives C H t^(-m/2).
Thus (3) gives trace-norm convergence for fixed positive t as A->0, and a
sufficient joint condition is |A| t^(-(m+1)/2)->0. For a two-dimensional
sphere this condition is |A|=o(t^(3/2)). It is sufficient for this absolute
trace-norm bound, not asserted to be necessary or to be compatible with all
other limits.

The physical angular heat factor, boundary projector and spectral measure
must be matched to this model before applying (2)--(3). The zero-energy
transport calculation gives no frequency-dependent map, and the bounds do
not establish convergence of the full heat response, its subtractions or its
common regulator. In particular, heat weighting cannot simply be removed
from (2) to recover unweighted operator-norm convergence. No numerical
calculation is used.

Remaining to-do list: establish physical boundary transport and complete
response, resolve novelty, prepare the manuscript, and certify supported
claims in Lean on GCP.