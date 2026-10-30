# Thermal gap and joint cut limit for the lapse-square model

This strengthens the fixed-mass result in
`lapse-square-full-space-smoothed-trace.md` for an antiperiodic thermal
lattice. It is a model estimate under the explicit self-adjointness and lapse
hypotheses below, not an identification of the physical Euclidean square or
its determinant regulator, and it is not Lean certified.

The subsequent `euclidean-canonical-unitary-half-density.md` shows that
the unitary Euclidean coordinate representative is a symmetric lapse
congruence, not this left-lapse model. Its thermal gap has a separate
conditional argument there; the joint cut estimates below have not yet
been transferred to that corrected operator.

Let H_mu be the self-adjoint radial Hamiltonian on each full and cut
half-line with the local sigma_1 boundary projector. Take
P_(mu,nu)=f(H_mu+i nu), with f real and f>=f0>0, and L_(mu,nu)=P*P on
its natural closed form domain. The form domain is assumed contained in
Dom H_mu, including when f is unbounded at the other end. Let the fixed
thermal frequencies be nu_k=2pi(k+1/2)/T, so |nu_k|>=nu0=pi/T>0.

Since H_mu is self-adjoint,

    ||(H_mu+i nu)v||^2=||H_mu v||^2+nu^2||v||^2.

Consequently both the full and cut squares obey the form inequality

    L_(mu,nu) >= f0^2 nu^2 >= g0^2,  g0=f0 nu0>0.     (1)

This is a spectral gap for the explicitly stated mode model, not a physical
admission margin. For every M>=0,

    ||(L+M^2)^(-1)|| <= (M^2+g0^2)^(-1),
    ||P(L+M^2)^(-1)|| <= (M^2+g0^2)^(-1/2).          (2)

The second follows from spectral calculus for P*P. Equations (1)--(2)
replace the inverse powers of M in the endpoint and Poisson arguments of
`lapse-square-endpoint-resolvent-comparison.md`: the same lift and trace
proofs are valid at M=0, with inverse factors bounded by powers of g0^-1.

For the removed collar, use the shifted form comparison in
`lapse-square-full-space-smoothed-trace.md`, with its mode-dependent lambda.
On spectrum x>=g0^2,

    (x+lambda)/(x+M^2) <= 1+lambda/g0^2.               (3)

Thus the localized removed term obeys a bound C(1+lambda/g0^2)
sqrt(U U_ell), uniform down to M=0. The retained restriction difference
has rank at most two and the source/Poisson proof gives a bound of the form

    C sqrt(ell) P(1+|mu|+|nu|+M) exp(h),               (4)

for ell<=ell0, after enlarging C and a fixed polynomial P with nonnegative
coefficients. This uses exp(h)-1<=h exp(h) and ell<=sqrt(ell). The polynomial
exists because the explicit local lift and endpoint estimates use only
finite sums and products of bounded coefficients, |mu|, |nu|, M and the gap
bound (2). Here h<=C ell(1+|mu|+|nu|+M^2), with fixed coefficient bounds.

Let u be bounded, integrable and cubic at the endpoint, and sum the full
localized trace-norm difference over the magnetic sphere modes and the
antiperiodic thermal lattice with weight exp[-tau(mu^2+nu^2)]. Integrate it
against 2M exp(-epsilon M^2)dM. For 0<tau,epsilon<=1 and ell<=epsilon/(2C),
completing the square in the mode sums and using epsilon-C ell>=epsilon/2
gives finite constants C', integer N and integer K such that

    integral_0^infinity 2M exp(-epsilon M^2)
        sum_(mu,nu) exp[-tau(mu^2+nu^2)] ||localized difference||_1 dM
       <= C' (sqrt(ell)+ell^2) tau^(-N) epsilon^(-K)
                       exp(C' ell^2/tau).               (5)

The finite angular zero modes are included; the thermal frequency has no zero
mode. Polynomial Gaussian moments and the magnetic-sphere counting estimate
supply N; the Gaussian mass moments supply K. The constants depend on fixed
seed, period, insertion and coefficient bounds, not on tau,epsilon,ell.

For example, setting epsilon=tau=t and ell=exp(-1/t) makes (5) tend to zero
faster than any power and makes its bound integrable against dt/t^2. This is
an explicit sufficient joint model path; N and K need not be sharp. It does
not prove the separately regulated full traces converge or identify the
Gaussian mass weight with the physical action. Periodic thermal conditions,
zero frequency, non-self-adjoint boundary domains or a lapse without a
positive lower bound are not covered by (1). Physical unitary, spin/bundle,
boundary, vertices, angular/thermal normalization and counterterms remain
independent obligations. No numerical calculation is used.

Remaining to-do list: verify the thermal gap and square domain for the
physical frame, match all response and regulator terms, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.