# Mass-uniform H2 and heat tower for the real conversion family

This improves `product-mass-conversion-h2-heat-tower.md`: the real mass gap absorbs the polynomial mass dependence in its H2 estimate. The result is for the stipulated product-orbit model and its actual composition squares; it does not establish the source's physical boundary or the subtracted regulator limit.

Use the assumptions and notation of that note: Q_delta is skew-adjoint with uniform first-order graph and H2 estimates, b is real with uniform W2,infinity bound B, and scalar multipliers preserve the first-order domain. Let

  A=E_r Q_delta E_r + M exp((1-r)b),  P=A*A,  M>=0, 0<=r<=1.

The uniform seed estimates give graph and H2 estimates for D_r=E_r Q_delta E_r and its adjoint. The real accretivity argument gives both P and AA* the lower bound g M², where g=exp(-4B). For M>0 it also gives M||f||<=g^(-1/2)||A f|| and M||h||<=g^(-1/2)||A* h|| on their respective first-order domains. At M=0 the same inequalities are trivial. These are operator estimates, not physical admission margins.

Since V=M exp((1-r)b) has ||V||_W1,infinity<=C_B M, the graph estimates for D_r and D_r* imply

  ||f||_H1 <= C_B (||A f||+||f||),
  ||h||_H1 <= C_B (||A* h||+||h||),                          (1)

with constants independent of M, cut, r and the bounded field. For f in Dom P, g0=A f lies in Dom A* subset H1. As in the preceding note, D_r f=g0-Vf in H1; first-order regularity gives f in H2 and

  ||f||_H2 <= C_B [||g0||_H1+(1+M)||f||_H1]
             <= C_B [||P f||+(1+M)||g0||+(1+M)||f||].       (2)

The mass gap and the spectral theorem give, for f in Dom P,

  M ||g0|| <= g^(-1/2)||P f||,
  M ||f|| <= g^(-1/2)||g0||.                                 (3)

For the first bound, integrate M² lambda <= g^(-1) lambda² against the spectral measure of P, whose support lies in [gM²,infinity). The second is the form version of the gap. The remaining ||g0|| is bounded by (||P f||+||f||)/sqrt(2). Substituting in (2) proves

  ||f||_H2 <= C_B (||P f||+||f||),  f in Dom P,              (4)

uniformly for all M>=0. The same argument gives the AA* bound when the adjoint first-order H2 regularity is available. No equality of square domains, small-field assumption or uniform positive gap at M=0 is used.

For a fixed 0<eta<1, the two-dimensional interpolation and diagonal argument in `product-mass-conversion-h2-heat-tower.md` now yield, for 0<t<=1,

  tr_fiber K_t(x,x) <= C_(B,eta) t^(-1-eta) exp(-g M² t/2),
  Tr K_t <= C_(B,eta) t^(-1-eta) exp(-g M² t/2).             (5)

The heat kernel and trace hypotheses of the compact model are retained. In the recorded angular tower M_n²=n(n+q)/b_sphere², d_n=2(q+2n), the Gaussian comparison in `angular-weighted-locality.md` gives

  sum_(n>=1) d_n Tr K_(n,t) <= C_(B,eta,q,b_sphere) t^(-2-eta),
                         0<t<=1.                              (6)

The finite zero sector has its separate O(t^(-1-eta)) bound and is retained in its source-defined allocation. Equations (4)--(6) are uniform over the stipulated bounded real field family and smooth local-projector cuts. They improve the unsubtracted positive-time tower bound but do not justify removing t=0, differentiating a complex family, changing the physical boundary condition, or identifying the source's normalized trace. The complete mixed vertices and local subtractions remain necessary. No numerical or Lean certification is claimed.

Remaining to-do list: establish physical bundle and boundary matching, prove the subtracted response and common-regulator limits, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.