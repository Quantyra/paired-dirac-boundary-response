# Angular cutoff removal with a positive proper-time regulator

This derives a joint cutoff rate from `full-weyl-mixed-response-angular-tail.md`
for its conditional compact product model. It does not prove existence of an
unregulated action, a physical matching, or a Lean certificate.

Let R(t)=partial_z1 partial_z2 T_z(t)|_(0,0), with the fixed orbit-dependent
real directions and complex form hypotheses of that note. For angular tail
projection Q_M, its estimate gives constants A,d>0 such that

    ||Q_M R(t)||_1 <= A t^(-2) exp(-d M^2 t),  0<t<=1. (1)

Here A absorbs exp(C/2), the Cauchy radii and the fixed product constants,
and d=a/2. The projection reduces the full parameter family. By trace duality,
(1) bounds the absolute tail of the mixed heat trace, including the sum over
all angular multiplicities.

Introduce a positive proper-time lower cutoff epsilon and define the omitted
model contribution with the source's dt/t^2 weight by

    E(epsilon,M)=integral_epsilon^1 t^(-2) Tr[Q_M R(t)] dt. (2)

For 0<epsilon<1, the integral exists: the integrand is trace continuous on
the positive-time interval. By (1),

    |E(epsilon,M)| <= A integral_epsilon^1 t^(-4) exp(-d M^2 t) dt
                   <= (A/3) epsilon^(-3) exp(-d M^2 epsilon). (3)

For any eta>0 choose a single, time-independent threshold M(epsilon) with

    M(epsilon)^2 >= (3+eta) log(1/epsilon)/(d epsilon).  (4)

Then |E(epsilon,M(epsilon))| <= (A/3) epsilon^eta -> 0. Thus the angular
cutoff and the positive proper-time cutoff can be removed jointly at this
explicit sufficient rate for the model mixed heat term. Actual discrete
mode thresholds may be rounded upward. Fixed dimensionful scales must first
be nondimensionalized. The full spectrum, including zero modes, is retained
below the cutoff.

This is a comparison between two *regulated* model integrals at each
epsilon. Neither integral need converge separately as epsilon tends to zero;
(4) does not supply counterterms or a finite part. It also does not justify
using a time-dependent spectral cutoff inside a different physical
observable, interchanging limits with geometry or rough-field regulators,
or transferring the result to the physical paired operator. A complete
physical result must separately compare the same angular projection,
normalization, vertices and subtraction, with constants uniform in every
other varying parameter. The calculation is analytic and uses no numerical
truncation.

Remaining to-do list: establish physical bundle, boundary and angular
matching; prove the complete subtracted response and common regulator;
resolve prior art, prepare the manuscript, and certify supported claims on
GCP.