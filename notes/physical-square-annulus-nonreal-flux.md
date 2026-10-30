# Nonzero spectral parameter in physical annulus flux transport

This extends `physical-square-shrinking-annulus-flux.md` to a fixed complex square spectral parameter zeta, with zero source and no independent mass shift. It is a local transfer calculation between two finite cuts, not an actual resolvent or physical boundary-domain theorem.

On delta<=y<=2delta, the full Weyl flux system has the form

 Y'=[F^-1 N_zeta+K_diag(s)]Y,
 N_zeta=[0, i sigma_2; i zeta sigma_2, 0],              (1)

where Y=(eta,xi), F=f U and K_diag has the bounded fixed-mode angular and thermal coefficients. The off-diagonal matrix is constant, N_zeta²=-zeta I, and

 I_delta=integral F^-1 ds=L4 log 2+O(delta²).             (2)

For fixed zeta,mu,nu, the canonical annulus length is O(delta). Duhamel's formula around the exactly commuting F^-1 N_zeta evolution gives

 U_delta=exp(I_delta N_zeta)+O(delta)                    (3)

in a fixed flux norm. The error constant can depend on zeta and the fixed modes; no uniformity over an unbounded contour or mode tower is implied.

Define entire functions of zeta by

 C_zeta(I)=sum_(j>=0)(-zeta)^j I^(2j)/(2j)!,
 S_zeta(I)=sum_(j>=0)(-zeta)^j I^(2j+1)/(2j+1)!.

Then exp(I N_zeta)=C_zeta(I) I4+S_zeta(I) N_zeta. For the local plane B={P_-eta=P_-xi=0}, with P_+ line v_+ and i sigma_2 v_+=v_-, its image is the orthogonal direct sum of the lines

 span{(C v_+, zeta S v_-)},  span{(S v_-, C v_+)},     (4)

where C=C_zeta(I_*), S=S_zeta(I_*), I_*=L4 log 2. In a fixed declared scaling of the two flux components, the limiting projection distance from B is

 max{ |zeta S|/sqrt(|C|²+|zeta S|²),
      |S|/sqrt(|C|²+|S|²) }.                           (5)

Neither denominator vanishes: C²+zeta S²=1. For zeta outside [0,infinity), S is nonzero, since its zeros are the positive real values (n pi/I_*)², n>=1. Thus the limiting plane distance in (5) is strictly positive for every fixed nonreal or negative resolvent parameter. At zeta=0, (5) reduces to the earlier nilpotent result. Fixed rescaling of the flux components changes the numerical expression but not whether the two planes coincide.

The O(delta) convergence and (5) assume the regular finite-cut flux plane and fixed-mode local differential expression. They do not identify transport from infinity, the removed-collar source, a Poisson solution, or convergence or failure of the actual resolvent. A spectral-dependent nonlocal boundary condition or suitable weighted comparison may behave differently. This result also does not transfer to the nondegenerate product-frame model. No Lean certification is claimed.

Remaining to-do list: establish the physical boundary map and source-dependent resolvent comparison, complete the mixed response and regulator, finish novelty and manuscript, and certify supported claims on GCP.
