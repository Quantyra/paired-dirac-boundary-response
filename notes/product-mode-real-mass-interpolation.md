# Product angular modes as real-mass conversion endpoints

This connects the paired product-mode operator in
`product-sphere-mixed-response.md` with the real-mass interpolation in
`graded-mass-conversion-positive-cut.md`. The connection is an exact
left-unitary operator identity on the stipulated compact paired orbit. It
does not verify the physical bundle/product realization, source trace
normalization, or regulator limit, and it is not Lean-certified.

Let D have domain V and adjoint domain V*, and let G be the self-adjoint
unitary orbit chirality with G V=V* and D*Gx=GDx for x in V, as in the
product-mode note. For real mu set

 P_mu=D+i mu G on V,       W=-iG,       Q'=-i G D on V.  (1)

W is a bounded unitary and

 W P_mu=Q'+mu.                                           (2)

The operator Q' is skew-adjoint with its actual domain V. Indeed
(Q')*=i D*G has domain {y:G y in V*}=V, since G V=V*, and its action is
i GD=-Q' by the stated intertwining. Thus the real scalar mass in (2)
is obtained by left multiplication, not by replacing an imaginary mode
coefficient by a real number in the original operator.

For any closed densely defined P and bounded unitary W, (WP)*(WP)=P*P
on exactly the same composition domain. To check the domain, (WP)*=P*W*
and WPx belongs to Dom(P*W*) precisely when Px belongs to Dom P*. Hence
(2) yields the square and heat identity for each mode at positive time,
including domains and zero modes when mu=0.

Let b be a real scalar commuting with G, and let m=exp(-b/2) with m and its
inverse preserving V and V*. The *orbit-only* fixed-angular family is

 P_mu^geom(b)=m D m+i mu G.

Because W commutes with m and WP_mu^geom=m Q' m+mu, this family has
exactly the same positive square as the r=1 endpoint

 A_1(b)=m[Q'+mu exp(b)]m=m Q' m+mu                  (3)

of the source interpolation, with the actual composition domain. Likewise,
the variable-angular-mass family D+i mu exp(b)G is carried by W to the
r=0 endpoint A_0(b)=Q'+mu exp(b). These are exact first-order identities
for the stated families and common multiplier domains, not equalities of
unrelated heat kernels inferred from a formal change of measure.

The *full* scalar congruence of the product mode is instead

 W[m(D+i mu G)m]=m Q' m+mu exp(-b),                     (4)

which is generally different from (3). This preserves the warning in
`full-weyl-angular-mode-correction.md`: the conversion endpoint connects a
fixed-angular geometric family to a variable-mass family; it cannot be
identified with the full four-dimensional Weyl-congruence family without the
additional angular vertices. For constant b the difference is already a
mass rescaling.

If, in addition, a partner J satisfies the commuting closed-domain
hypotheses of `paired-partner-chirality-conversion-bridge.md`, H=JG is a
self-adjoint domain-preserving involution. Since Q'=-i H Q with Q=JD and
HQ=-QH, one has H Q'=-Q' H on V. Scalars commute with H. Therefore Q' and H
satisfy the graded model's operator hypotheses, subject to the separate
compact heat/Duhamel conditions. The positive-cut conversion formula then
applies to the endpoint squares of these stipulated mode families; summing
the angular tower additionally requires the convergence and multiplicity
hypotheses stated in that formula.

The map W and equality of squares do not by themselves establish a physical
trace density, the half/copy factor, the global spin and magnetic pullbacks,
the moving-cut limit, or a renormalized determinant. A left-unitary map of
first-order operators is not a unitary conjugation of their heat operators;
the heat equality here follows from equality of their positive squares.
No numerical or Lean check is claimed.

Remaining to-do list: verify global physical product and domain matching,
match source normalization and all angular vertices, establish the rough
remainder and regulator, finish novelty and manuscript, and certify the
supported results in Lean on GCP.