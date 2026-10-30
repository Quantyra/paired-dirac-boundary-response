# H2 and positive-time tower bounds for the mass interpolation

The later [mass-uniform argument](product-mass-uniform-h2-tower.md) removes the polynomial mass loss in this note under the same real-gap and adjoint hypotheses.

This extends `product-h2-uniform-bounded-congruence.md` to the source's stipulated product-mode mass interpolation. It gives a uniform cut and field estimate with explicit polynomial mass dependence, then uses the positive-mass gap to retain the full angular tower. It does not identify the physical trace or remove its ultraviolet regulator.

## Assumptions and H2 estimate

Let Q_delta be the skew-adjoint first-order product-orbit operators with the uniform first-order graph and H2 regularity hypotheses of `product-h2-uniform-bounded-congruence.md`, and suppose scalar W2,infinity multipliers and their inverses preserve the common first-order domain. Let b be real with ||b||_W2,infinity<=B, r in [0,1], M>=0, and define

  E_r=exp(-r b/2),
  A_(delta,r,M)=E_r[Q_delta+M exp(b)]E_r
                =D_(delta,r)+V_(r,M),
  D_(delta,r)=E_r Q_delta E_r,  V_(r,M)=M exp((1-r)b).        (1)

The bounded potential and its first derivative obey ||V_(r,M)||_W1,infinity<=C_B M. Thus A and A* have the same first-order domain as Q_delta; their composition squares P=A*A and Pbar=AA* retain their actual, possibly varying domains. The reference proof gives uniform H1 graph estimates and first-order H2 regularity for D_(delta,r) and its adjoint. It follows, with constants independent of delta, b, r and M, that

  ||f||_H2 <= C_B (1+M)^2 (||P f||_2+||f||_2),
                                        f in Dom P.           (2)

The same bound holds for Pbar when the corresponding adjoint first-order H2 regularity is available; this is an explicit additional hypothesis rather than an assumed equality of square domains.

To prove (2), the bounded potential gives ||f||_H1<=C_B[||A f||+(1+M)||f||] and the analogous adjoint graph bound. If f in Dom P, put g=A f in Dom A* subset H1. Since D_(delta,r) f=g-V f in H1, the first-order regularity gives f in H2, and

  ||f||_H2 <= C_B[||g||_H1+(1+M)||f||_H1]
             <= C_B[||P f||+(1+M)||g||+(1+M)^2||f||].       (3)

The form identity ||g||²=<P f,f> and Cauchy--Schwarz give ||g||<=(||P f||+||f||)/sqrt(2), proving (2). This argument does not treat the mass as uniformly bounded.

## Heat diagonal and all angular modes

For 0<s<=1, (2), interpolation on the uniformly identified two-dimensional orbit, and H^(1+eta)->C0 for fixed 0<eta<1 give

  ||exp(-sP)||_(2->C0)
      <= C_(B,eta)(1+M)^(1+eta) s^(-(1+eta)/2).             (4)

For the stated skew-adjoint Q_delta and real b, the accretivity argument in `graded-conversion-regulated-endpoints.md` gives P>=g M², with g=exp(-4||b||_infinity)>=exp(-4B), including M=0 as the trivial nonnegative case. Splitting the semigroup into two equal factors in (4), and then using the self-adjoint diagonal factorization, yields

  tr_fiber K_t(x,x) <= C_(B,eta)(1+M)^(2+2eta)
                         t^(-1-eta) exp(-g M² t/2), 0<t<=1.  (5)

The orbit volume is uniformly bounded, so its heat trace obeys the same mass/time majorant up to a fixed factor. This is a deliberately nonsharp polynomial factor; it is enough for absolute summation at each t>0. For the source's recorded nonzero tower M_n²=n(n+q)/b_sphere², d_n=2(q+2n), the series

  sum_(n>=1) d_n (1+M_n)^(2+2eta) exp(-g M_n² t/2)         (6)

is finite for each t>0, uniformly in the cut and bounded field family. The finite zero-mode sector is retained separately, with M=0; it has no exponential mass gap. The angle multiplicities already include both nonzero signs. This estimate does not support taking t->0 under the sum after physical subtractions: its constants and polynomial mass factor yield only a crude unsubtracted bound.

The proof assumes the product-mode left-unitary and skew-adjoint/domain identities in `product-mode-real-mass-interpolation.md`, the smooth cut identifications and the regular bolt/spin/magnetic structure. It does not establish these for the actual transported infinity boundary. Nor does it verify complex-parameter smoothing, the differentiated tower, geometric mixed vertices, source normalizations or common-regulator removal. No numerical or Lean certification is claimed.

Remaining to-do list: match the source domains and bundle, establish differentiated and subtracted tower estimates on one regulator, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.