# Gaussian-weighted mode sum for the localized heat cut comparison

This extends the fixed-mode path in `lapse-square-localized-heat-contour.md`
to a Gaussian-weighted model angular/thermal sum. The Gaussian is an
additional regulator; it is not identified here with the physical heat trace
or common action regulator.

Assume the model and contour hypotheses of that note uniformly for magnetic
sphere modes mu and a fixed periodic or antiperiodic thermal lattice nu.
Fix M>=0. In addition assume the endpoint/Poisson lift constants, graph and
comparison constants, and the polynomial resolvent bounds are bounded by a
single polynomial in 1+|mu|+|nu|, with degree independent of the mode. The
fixed collar coefficient and inverse-lapse bounds are common to all modes.
These are explicit hypotheses; individual fixed-mode constants do not
suffice. Let u>=0 be bounded, L1 and cubic in the collar, and use the same
S=sqrt(u) in each mode.

The transfer exponent obeys

  h_zeta <= C ell(1+|mu|+|nu|+M^2+|zeta|).                   (1)

Repeating the contour integration in the fixed-mode note, and retaining
mode dependence instead of absorbing it in the constant, yields integers
N,K and a common C such that, for epsilon<=t<=1 and
ell<=epsilon cos(theta)/4,

 D_(mu,nu)(t,ell)
   <= C t^(-K) [sqrt(ell)+ell^2]
        (1+|mu|+|nu|)^N exp[C ell(1+|mu|+|nu|)],            (2)

where D is the trace norm of the symmetrically localized full-minus-cut
heat operator in that mode. The ell^2 term follows from U_ell=O(ell^4).
The ray heat exponential absorbs exp(C ell |zeta|) after reducing the
allowed cut by a fixed constant if needed; C is independent of the mode.

For 0<tau<=1 define the explicitly regulated sum

  W_(tau)(t,ell)=sum_(mu,nu) exp[-tau(mu^2+nu^2)] D_(mu,nu)(t,ell), (3)

with the recorded magnetic degeneracies and the finite angular zero modes
counted once. Polynomial Gaussian moments and completion of the square give
for a finite K' and a common C'

 W_(tau)(t,ell) <= C' t^(-K) [sqrt(ell)+ell^2]
                         tau^(-K') exp(C' ell^2/tau).          (4)

For example, exp(C ell x)<=exp(tau x^2/4) exp(C^2 ell^2/tau), and each
polynomial factor is absorbed by part of the remaining Gaussian. The
magnetic tower has quadratic eigenvalue growth and linear multiplicity;
the thermal lattice has linear frequency growth, so their Gaussian sums
are bounded by fixed powers of tau^(-1). This proves absolute convergence
of the weighted sum, including zero modes, for each positive tau.

Choose tau=epsilon and ell=exp(-L/epsilon), with fixed L>0. For small
epsilon the cut condition holds, and integrating (4) on [epsilon,1] against
dt/t^2 gives a bound consisting of a polynomial in epsilon^(-1) times
exp(-L/(2epsilon)) and a bounded exp(C' ell^2/epsilon) factor. It tends to
zero. The same ell is held fixed throughout each integral. This is one
sufficient joint path for the Gaussian-weighted localized model difference;
it does not establish the unweighted sum or path independence.

The physical thermal/angular decomposition, transported boundary condition,
actual insertion, mixed vertices and counterterms have not been matched to
(3). The regularized estimate therefore does not establish the P1-D curved
remainder or a physical finite part, and it is not Lean-certified. No
numerical calculation was used.

Remaining to-do list: verify the mode-uniform hypotheses and physical
boundary/regulator matching, complete the curved response and novelty audit,
prepare the manuscript, and certify supported claims in Lean on GCP.
