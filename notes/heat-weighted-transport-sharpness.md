# Sharpness of heat-weighted boundary transport scales

This supplements `heat-weighted-boundary-transport.md` for the same
zero-energy transport model. Under an additional angular Weyl law, it shows
that the joint scale conditions there are necessary as well as sufficient.
It does not identify the physical frequency-dependent boundary operator or
certify the paper.

Let N(R) count angular eigenvalues |mu|<=R with multiplicity and assume

    N(R)=C_W R^m+o(R^m),   C_W>0, m>0.                   (1)

The standard angular Dirac operator on a smooth compact m-dimensional
manifold has such a Weyl law; applying it to the physical angular operator
requires the bundle and normalization identification. Equation (1) implies
that for large R, the spectral window R<=|mu|<=2R contains at least c R^m
modes, multiplicities included.

For the two-dimensional orbit block, the two nonzero singular values of
P(lambda)-P(0) both equal

    q(lambda)=|sinh(lambda)|/sqrt(cosh(2 lambda)).

The function q is increasing in |lambda| and is bounded below by
c0 min(|lambda|,1). Put R=t^(-1/2). On the angular window R<=|mu|<=2R,
exp(-t mu²)>=exp(-4), so for small t

    ||Q_A exp(-t B²)||
       >= c1 min(|A|/sqrt(t),1),                          (2)
    ||Q_A exp(-t B²)||_1
       >= c2 t^(-m/2) min(|A|/sqrt(t),1).                (3)

The first estimate uses just one mode in the window; the second sums its
singular values over all window modes. The constants depend on the fixed
Weyl and fiber conventions, not on A or t. Together with the upper bounds in
the preceding note, (2) implies for any joint path t->0 that

    ||Q_A exp(-t B²)|| -> 0  iff  |A|/sqrt(t) -> 0.        (4)

Similarly, (3) forces |A|/sqrt(t)->0 if the trace norm tends to zero, and
then forces |A| t^(-(m+1)/2)->0. The preceding upper bound proves the
converse:

    ||Q_A exp(-t B²)||_1 -> 0
       iff  |A| t^(-(m+1)/2) -> 0.                         (5)

For a two-dimensional sphere the absolute trace-norm condition is exactly
|A|=o(t^(3/2)) in this model. This does not rule out cancellations in a
signed trace, a subtracted observable, or another regulator; (5) concerns
absolute trace norm of the projector difference with this particular heat
weight. The zero-energy collar transport, physical cutoff relation, angular
normalization and full frequency-dependent map still need independent
verification. No numerical calculation is used.

Remaining to-do list: establish physical boundary matching and response,
resolve prior art, prepare the manuscript, and certify supported claims in
Lean on GCP.