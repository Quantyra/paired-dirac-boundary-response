# Thermal-cylinder contact and the full-plane limit

This connects `free-tangent-contact-trace-class.md` to the multiplier in
`flat-product-contact.md` at the free flat seed. It proves the thermal-length
limit for the stated model and normalization; it does not identify the
physical bolt, curved domains, angular sectors, common regulator or Lean
certificate.

Let u,v be real, even, bounded L2 functions of y on R. Use the free cylinder
R_y x S1_T with the same rank-r fiber and periodic or antiperiodic spin
structure as in the contact trace-class note. Define the full-cylinder
contact I_(T,t)^full as there and divide by the tangential length T. Let

  Z_T(t) = T^(-1) sum_(n in Z) exp(-t nu_n^2),
  A(x) = integral_0^1 exp[-alpha(1-alpha)x] d alpha,             (1)

with nu_n=2 pi(n+theta)/T, theta=0 or 1/2. Use
uhat(k)=integral exp(-iky)u(y)dy and inversion measure dk/(2pi). Then for
fixed t>0,

  T^(-1) I_(T,t)^full(u,v)
   = r t (4 pi t)^(-1/2) Z_T(t)
       integral_R conjugate(uhat(k)) vhat(k) A(t k^2) dk/(2pi). (2)

For smooth compact profiles, derive (2) by separation in thermal modes and
Fourier transformation in y. The two heat factors carry the same thermal
mode because the insertions are tau-independent, giving exp(-t nu_n^2),
not two independent thermal sums. Completing the one-dimensional Gaussian
square gives (4 pi t)^(-1/2) exp[-alpha(1-alpha)t k^2]. The factor r is the
fiber trace and ds=t d alpha. Fubini is justified at fixed t by the positive
Gaussian mode sum and the L1 product of the two Fourier transforms, the latter
following from Plancherel and Cauchy--Schwarz. Approximate bounded L2 profiles
by smooth compact profiles with uniformly bounded sup norms; the trace bound
in the contact note and the L2-continuity of the right side extend (2).

The folding theorem and trace-class proof give exactly half of (2) for the
half-cylinder trace with the *same* full fiber. For r=2 define
I_(T,t)^half/T with this convention. Poisson summation gives

  Z_T(t)=(4 pi t)^(-1/2) sum_(m in Z)
              exp(-m^2 T^2/(4t)) exp(2 pi i m theta).           (3)

Let q=exp(-T^2/(4t)). Since m^2>=m for m>=1,

  |Z_T(t)/(4 pi t)^(-1/2)-1| <= 2q/(1-q).                      (4)

Combining (2)-(4), the limit exists for every fixed t>0 and equals

  lim_(T->infinity) T^(-1) I_(T,t)^half(u,v)
     = (1/(4 pi)) integral_R conjugate(uhat(k)) vhat(k)
                                    A(t k^2) dk/(2pi).          (5)

This is exactly the rank-two half-normalized full-plane multiplier in
`flat-product-contact.md`. Moreover, because 0<=A(x)<=1 for x>=0,
Plancherel gives the explicit absolute difference bound

  |T^(-1) I_(T,t)^half - I_(infinity,t)^half|
     <= [1/(4 pi)] [2q/(1-q)] ||u||_(L2(R)) ||v||_(L2(R)).     (6)

The estimate is uniform over bounded L2 sets and retains the complete thermal
lattice. It is exponentially small for T^2/t large, but it does not justify
replacing a fixed physical period by infinity or interchanging a physical
common-regulator limit. The latter requires the actual thermal geometry,
source normalization, angular factors and local restorations. No numerical
calculation is used.

Remaining to-do list: establish the physical response and regulator, settle
novelty and scope, finish the manuscript, and certify supported claims in Lean
on GCP.
