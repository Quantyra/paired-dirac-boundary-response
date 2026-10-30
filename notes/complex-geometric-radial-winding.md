# Complex radial winding bound for the smeared bridge

This extends the real radial-winding argument in
`auxiliary-radial-winding.md` to the complex coefficient path used in
`complex-bridge-geometric-remainder.md`. It concerns the auxiliary cylinder;
the physical collar comparison and Lean certification remain separate.

Let f_z=f+zg be 2L-periodic and bounded Lipschitz on a closed disk, with
uniform

    Re f_z(y)^2 >= m²/2,     |f_z'(y)| <= G.                (1)

Let p_j=2pi(j+1/2)/T and assume the complex scalar mode operators on the
line and cylinder are the sectorial realizations of

    H_z,p^±=-partial_y²+p² f_z² ± p f_z'.

For a radial insertion u in L1 supported in a selected fundamental period,
write S_cyl(z,t) for the time-reduced smeared heat trace and S_line,0(z,t)
for its zero-radial-image line contribution. Count the chosen finite fiber
rank as r_f. Then for t>0,

 |S_cyl(z,t)-S_line,0(z,t)|
 <= r_f ||u||_1 exp(t G²/m²)/(sqrt(4pi t))
       Z_T^c(t) W_L(t),                                     (2)
 Z_T^c=(1/T) sum_j exp(-m²t p_j²/4),
 W_L=2 sum_(k>=1) exp(-L² k²/t).

To prove (2), the real part of the complex potential satisfies

    Re(p² f_z² ± p f_z') >= m²p²/2-G|p|
                              >= m²p²/4-G²/m².              (3)

For each fixed p, the bounded complex potential admits the Brownian-bridge
kernel representation by the Trotter/Duhamel expansion: its exponential
is dominated by exp[-t inf Re V], so dominated convergence permits the
limit. The periodic kernel is the absolutely convergent sum of the lifted
line kernels. A path from y to y+2Lk contributes the free factor
(4pi t)^(-1/2) exp(-L² k²/t); multiply by the domination in (3), integrate
|u| and sum the two mode signs and all thermal frequencies, with their
actual fiber multiplicity included in r_f. This yields (2).

The family is holomorphic in z for each fixed p and positive t. The Gaussian
majorant in (2) is uniform on the disk and summable over p and k, so the
nonzero-winding trace is holomorphic there. Cauchy's estimate on a smaller
circle gives the same time factor times an inverse radius for its first
parameter derivative. The moving insertion term is bounded separately by
(2) with u replaced by its derivative. Since Z_T^c=O(1+t^-1/2) and W_L
is exponentially small, multiplying by any fixed polynomial in 1/t,
including the complete angular Theta=O(t^-1), still tends to zero uniformly
for fixed m,G,L,T and disk radius.

The estimate assumes the stated complex scalar mode realization and the
periodic extension of the insertion. It does not identify the orbit Weyl
family with the linear f_z path, verify the physical-to-auxiliary collar
matching, or prove the local bridge expansion and common-regulator limit.
It counts every radial winding and thermal frequency, not an angular
response with varying sphere data. No numerical computation is used.

Remaining to-do list: establish the physical and complex-family mapping,
combine the geometric and contact subtractions, decide novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.
