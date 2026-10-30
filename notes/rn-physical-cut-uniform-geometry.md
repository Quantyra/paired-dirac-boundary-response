# Uniform physical geometry near radial RN-AdS cuts

This checks the geometry, not the boundary operator or heat-domain estimates, needed by `physical-h5-from-mixed-h3.md` and `weighted-form-projector-domain.md`. Fix a smooth nonextremal RN-AdS seed with exterior metric

 g=F(r)dτ²+F(r)^(-1)dr²+r²g_(S²),
 F(r)=r²/L4²+1+O(r^-1),                                 (1)

where the RN-AdS rational coefficients have the corresponding differentiated asymptotics, and take the regular thermal period. Consider cuts r=R tending to infinity, with the retained side r<=R. The compact interior and regular bolt can be covered independently of R.

Let s be outward proper radial distance, ds=dr/sqrt(F). At the cut, the outward unit normal is sqrt(F) partial_r. The principal curvatures of the cut in the thermal and spherical directions are

 k_tau=F'(R)/(2 sqrt(F(R))),    k_sphere=sqrt(F(R))/R.   (2)

Thus both tend to 1/L4, and their derivatives of any fixed finite order in physical orthonormal directions remain uniformly bounded for all sufficiently large R. The sign reverses if the normal convention reverses; boundedness does not. These statements follow by differentiating the rational F, not merely from its undifferentiated O term.

Choose a fixed small physical radius h>0. On |s-s_R|<h, the relation dr/ds=sqrt(F) gives r/R bounded above and below by positive constants independent of R, with uniformly bounded derivatives of r/R to any fixed order. Around a boundary point use scaled tangential coordinates R(τ-τ0) and R times local angular coordinates. On fixed coordinate balls, the metric, its inverse and their derivatives through any fixed order are uniformly bounded and elliptic; the same applies in half-balls on the retained side. The thermal period in the scaled coordinate grows like R, so fixed-size charts do not wrap the thermal circle for large R; the sphere has the same local scaling. A uniformly locally finite family of such charts therefore supplies the asserted local geometric bounds, provided the gauge and frame transitions are chosen with the corresponding uniform bounds.

For a fixed smooth magnetic monopole connection, its physical curvature and finitely many covariant derivatives are bounded on this region. Uniform local gauges and their transition estimates still have to be constructed with the bundle and paired-copy identification used by the source. Equation (2) controls the geometric second fundamental form, but it does not establish the mixed Robin coefficient of D*D, a uniform elliptic boundary estimate, the first-order projector domain, or the actual transport of infinity data to a cut. Those involve the operator and its chosen realization, not geometry alone.

The physical volume of a dyadic shell U=b_sphere/r approximately u0 is O(u0^-3), so a fixed-radius bounded-overlap chart cover has O(u0^-3) charts under the uniform local-volume lower bound. This supports the counting hypothesis used in `unsandwiched-second-vertex-local-heat.md`; global exponential distance counting and the actual bundle/field hypotheses remain separate. No Lean certificate or physical admission margin is asserted.

Remaining to-do list: construct the matched bundle gauges and projector/Robin boundary realization with uniform estimates, complete the weighted response and regulator, finish novelty and manuscript, and certify supported claims on GCP.
