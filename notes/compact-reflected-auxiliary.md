# Compact reflected auxiliary collar with explicit domains

Status: ordinary construction of an auxiliary model for the product-frame
orbit collar. It discharges the construction of a second-boundary model
under the stated local Clifford identification; it does not establish that
the physical bundle realizes that identification, nor is it Lean-certified.
It connects [paired reflection](paired-contact-reflection.md) with
[fixed-seed contact locality](fixed-seed-collar-contact-locality.md).

## Building the double

Let f be a positive W^{3,∞} even coefficient on (-2h,2h), with fixed
bounds 0<m≤f≤M and ||f||_(W^{3,∞})≤K. Fix L>2h. Choose an even smooth
cutoff η on the circle of length 2L, equal to one for |y|≤h and zero for
|y|≥3h/2, and choose c∈[m,M]. Define

    f_aux(y)=c+η(y)(f(y)-c)

where η is supported, and f_aux=c elsewhere. With 0≤η≤1, f_aux is positive,
even, periodic and W^{3,∞}, agrees with f on |y|≤h, and is constant near
the second reflection point y=L. Its W^{3,∞} norm is bounded by a constant
depending only on K,m,M and the fixed cutoff. The cubic even reflection is
kept as a W^{3,∞} function; no smooth even extension is asserted.

On the compact cylinder S¹_(2L)×S¹_T choose the declared fixed periodic or
antiperiodic thermal spin structure and the finite-dimensional Clifford
fiber. Let γ_y,γ_τ be Hermitian Clifford involutions and let χ commute with
γ_y and anticommute with γ_τ. Define on H¹ sections

    D_aux=γ_y ∂_y+f_aux(y)γ_τ ∂_τ,      L_aux=D_aux*D_aux.

The coefficient is bounded and Lipschitz, so the differential expression
is well-defined on H¹; the usual compact-cylinder elliptic graph estimate
and closure apply to this uniformly elliptic model. The square is defined
by composition. In the source's half-density convention its bulk expression
is -∂_y²-f_aux²∂_τ²-γ_yγ_τ f_aux'∂_τ. The local identification with the
source's physical collar, including its scalar half-density and fiber map,
is an application hypothesis, not a consequence of writing this formula.

## Half-cylinder and the second boundary

Let R be y→-y on the circle and U=χR. On the half-cylinder 0≤y≤L, take
Dom(D_half) to be H¹ sections with Π_- trace zero at both endpoints,
Π_±=(1±χ)/2, and use its closed complementary adjoint and natural square.
The U-even extension is

    (Jψ)(y)=ψ(y)/sqrt(2) for 0<y<L,
    (Jψ)(y)=χψ(-y)/sqrt(2) for -L<y<0.

The H¹ gluing conditions at both fixed points y=0 and y=L are exactly the
Π_- trace conditions, so J maps the half first-order domain unitarily onto
the U-even full domain. Since f_aux is even under reflection at both fixed
points, D_aux anticommutes with U and maps even sections to odd sections.
The odd H¹ gluing conditions give the complementary Π_+ trace at both
ends. Assuming the standard complementary adjoint identification, taking
adjoints and composing yields

    J L_half J⁻¹ = L_aux restricted to the U-even subspace.

Thus the auxiliary second boundary is explicitly specified, not discarded.
It is separated from a physical insertion collar contained in [0,h].

## Contact trace and uniform inputs

Let Γ=γ_yγ_τ. It commutes with L_aux and anticommutes with U; the full
compact cylinder has trace-class heat operators at positive time. For even
bounded u,v, the two-insertion product commutes with both U and Γ. The
trace cancellation in [the paired reflection note](paired-contact-reflection.md)
then gives the half/full factor 1/2 at the same fiber rank, including the
contribution of the second fixed point. This factor does not by itself
supply the source's per-exterior division or angular normalization.

For a fixed seed f_aux and common bounded W^{1,∞} congruence multiplier
ball, the graph, heat-trace and first-order commutator assumptions in the
fixed-seed locality theorem follow under its stated elliptic-domain inputs.
If the coefficient f itself varies, uniform seed graph and trace constants
must be proved for that family; a fixed-seed multiplier argument is not
sufficient by itself. A physical-side smoothing regulator must also produce
matching coefficients on the entire common collar for each approximation.

Remaining to-do list: verify the physical collar/bundle map and uniform
varying-coefficient hypotheses; match contact normalization and geometric
vertices; complete the regulator, novelty, manuscript and Lean work.
