# Growth test for symmetric-lapse transfer along a heat contour

This is a sufficient algebraic majorant for the exp(h) factor in `symmetric-lapse-inhomogeneous-transfer.md`. It does not establish the physical resolvent, a heat contour representation, trace-class Poisson bounds, or the required spectral damping.

Let the nonzero angular masses and multiplicities be M_n²=n(n+q)/b², d_n=2(q+2n), n>=1, for fixed q>=0 and b>0. Let antiperiodic thermal frequencies be nu_j=2pi(j+1/2)/T, j in Z, at fixed T>0. Suppose a hypothetical contour-mode estimate contains the absolute factor

  P(1+M_n+|nu_j|+r) exp{C ell(1+M_n+|nu_j|+M_n²+r)}
                    exp{-c t(M_n²+nu_j²+r)},              (1)

where P has nonnegative coefficients, r>=0 is a contour parameter, C,c>0, and 0<t<=t0. The last exponential is a separate hypothesis: the transfer estimate alone does not supply thermal, angular or contour damping.

If 0<ell<=c t/(8C), the quadratic and contour terms in exp(C ell ...) consume at most c t/8 of their corresponding damping. Young's inequality gives

  C ell M_n <= (c t/8) M_n²+2 C² ell²/(c t),
  C ell |nu_j| <= (c t/8) nu_j²+2 C² ell²/(c t).        (2)

Since ell/t is bounded and t<=t0, the remaining exponential prefactor is uniformly bounded. Thus (1) is bounded by a fixed constant times

 P(1+M_n+|nu_j|+r) exp[-(c t/2)(M_n²+nu_j²+r)].       (3)

For any fixed polynomial P, comparison with Gaussian integrals gives a finite integer N and C_P such that

  sum_(n>=1) d_n sum_(j in Z) integral_0^infinity (3) dr
      <= C_P t^(-N), 0<t<=min(t0,1).                      (4)

One may use (1+x)^p exp(-alpha t x²)<=C_p t^(-p/2) exp(-alpha t x²/2), the linear growth d_n=O(1+n), the quadratic lower bound M_n²>=n²/b², the Gaussian lattice bound in j, and integral (1+r)^p exp(-alpha t r)dr<=C_p t^(-p-1). This gives absolute summability without a mode truncation. A prefactor ell^beta then gives O(ell^beta t^-N), so its vanishing on ell=t^p requires the explicit inequality p beta>N; merely taking ell/t->0 does not establish that rate.

This calculation explains when the transfer growth is compatible with independently proved heat damping. It cannot be used to supply that damping, absorb an uncontrolled Poisson constant, justify a contour near a nonreal resolvent singularity, or replace the physical angular/thermal trace and boundary matching. The N and beta needed for the actual problem have not been determined. No Lean certification is claimed.

Remaining to-do list: prove the actual contour and mode damping and trace-class estimates, establish physical boundary matching and the regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.