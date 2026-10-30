# Physical norms of compactified mass/log collar profiles

This checks the physical-norm hypothesis in
`physical-localized-variation-uniform-approximants.md` for the fixed RN
product collar. It also identifies an obstruction to treating the full
boundary-reaching insertion as L1. It is not a heat-trace theorem or Lean
certificate.

Let g=u^(-2) ghat in four dimensions, with u=0 the compactified boundary,
and let y be the product-frame proper distance from that boundary. For the
fixed RN collar of `rn-proper-canonical-collar-jets.md`, y=alpha u+O(u^2),
alpha=b/sqrt(B(0))>0. Write dvol_hat=J(u,z) du dz with J smooth positive,
where z denotes the compact boundary variables. Let a real scalar profile be

    v(y)=c y^3+r(y),
    |r^(j)(y)|<=K A_j y^(4-j)(1+|log y|), j<=2.        (1)

A smooth fixed tangential dependence with the corresponding uniform mixed
bounds may be handled similarly; the displayed calculation uses the
radial source class. Since g=u^(-2)ghat,

    |dv|_g=u |dv|_ghat.                                 (2)

The cubic and remainder bounds yield

    |v|=O(u^3),       |dv|_g=O(u^3).                   (3)

Thus v is in physical W1,infinity on the outer collar. Together with an
explicit bounded W1,infinity interior extension, this supplies the global
field-norm hypothesis for the fixed seed. The same statement applies to the
base and both directions.

For the physical-side cutoff r_e=q(y/e)r(y), the difference is supported in
y<2e. The j=0 and j=1 cutoff bounds and u=O(y) give

    ||v_e-v||_Linf(g) <= C e^4(1+|log e|),
    ||d(v_e-v)||_Linf(g) <= C e^4(1+|log e|).          (4)

The second estimate uses the extra factor u in (2). Smooth approximants can
be chosen with a smaller C1 collar error as in `weighted-remainder-cutoff.md`;
with a matched fixed interior extension they retain (4) up to a changed
constant. These are estimates for fixed geometry and the same physical-side
regularization; local C^k uniformity near a chosen interior insertion remains
a separate requirement.

The physical volume is dvol_g=u^(-4)J(u,z)du dz. Since
v=c alpha^3 u^3+O(u^4(1+|log u|)), a cutoff integration gives

    integral_(delta<=u<=u0) v dvol_g
       = c alpha^3 [integral_boundary J(0,z)dz] log(1/delta)
           + O(1).                                      (5)

For c!=0 the absolute integral also diverges logarithmically. More generally
v belongs to physical Lp near infinity for every p>1; the radial leading
cubic fails L1 when c!=0. The O(u^4 log u) remainder is L1 there. Thus the
bounded multiplier and its W1 convergence in (3)--(4) do not imply an
unweighted trace-class insertion on the infinite-volume physical manifold.
Equation (5) is a volume integral, not a heat coefficient, determinant
counterterm or physical admission margin.

The compactified H1 boundary trace, Euclidean physical L2 domain, canonical
spatial source space and their regulators remain distinct as explained in
`conformal-spatial-euclidean-boundary-spaces.md`. No response or common
regulator convergence follows from (4)--(5). No numerical calculation is
used.

Remaining to-do list: control or subtract the boundary-reaching physical
trace, match the source and determinant regulators, complete the response and
prior-art decision, prepare the manuscript, and certify supported claims in
Lean on GCP.