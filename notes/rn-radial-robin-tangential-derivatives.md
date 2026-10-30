# Tangentially differentiated Robin data on radial cuts

This specializes the boundary step in `physical-h4-from-mixed-h3.md` and `physical-h5-from-mixed-h3.md` to the radial finite-cut model of `rn-mixed-robin-coefficient-bounds.md`. It does not establish the source's physical square domain or the complete mixed response.

Assume the actual square boundary condition on r=R is

 (1-P) gamma f=0,    P(nabla_n+S_R) gamma f=0,
 S_R=(K_R-partial_n b_R)/2,                              (1)

with a parallel projector splitting, the convention and hypotheses of the cited Robin note, and a radial scalar b_R. The fixed RN geometry and radial b_R make K_R and partial_n b_R constant along each thermal-sphere boundary, so S_R is a real scalar constant on that boundary. Choose local frames with P constant and parallel-transport them along normal geodesics. In that frame nabla_n=partial_n on the collar and the boundary operator is P(partial_n+S_R), with all tangential derivatives of P and S_R zero at the boundary.

For every tangential coordinate multi-index beta, smooth f satisfying (1) therefore obeys

 (1-P) gamma(partial_tan^beta f)=0,
 P(partial_n+S_R) gamma(partial_tan^beta f)=0.           (2)

The tangential coordinate derivatives commute with partial_n and with the constant matrix P and scalar S_R. For the one and two tangential differentiations used by the H4 and H5 notes, their inhomogeneous terms involving partial_tan S_R vanish. Local scalar cutoffs used in the nested estimates must still have zero normal derivative at the boundary; their commutators with the interior operator and their tangential derivatives are retained.

Thus the boundary-data part of those differentiated arguments reduces to the homogeneous mixed H3 estimate from `rn-radial-cut-conditional-h3.md` in this radial model. The interior commutators [L,partial_tan] and [L,partial_tan²], recovery of normal derivatives, uniform coefficient/atlas bounds and weak approximation remain necessary; (2) does not eliminate them. If the physical field, projector, twist or boundary coupling is nonradial or the chosen frame does not satisfy the stated conditions, the inhomogeneous terms in the general H4/H5 notes must be retained.

This is an exact boundary identity under the stipulated realization, not a proof that it is the transported physical infinity condition, a regulator theorem or Lean certification.

Remaining to-do list: establish the actual physical square and uniform frames, finish the differentiated interior and full response estimates and regulator, complete novelty and manuscript, and certify supported claims on GCP.
