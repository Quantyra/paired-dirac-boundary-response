# Conformal insertion directly at a boundary vertex

This establishes the portion of the weighted boundary analysis where the conformal logarithm has already been placed immediately next to a Green boundary form. It uses the unweighted estimates and exact conventions in `finite-cut-boundary-joint-proper-time-path.md`. It does not move the insertion through heat operators or bound the resulting commutator corrections.

On the fixed RN radial cut U=delta, the conformal insertion b=log U is constant on the boundary, b_delta=log delta. With B_v=-(1/2) gamma* h_v gamma as a boundary form, multiplication by b at either boundary argument gives exactly

 B_v(b p,q)=b_delta B_v(p,q),   B_v(p,b q)=b_delta B_v(p,q). (1)

This uses the scalar trace product rule on the smooth finite-cut form domain; the actual boundary realization must preserve multiplication by b. The same scalar multiplies a boundary-boundary or bulk-boundary ordered trace when b is adjacent to that boundary form in its form-trace representation. No heat commutation or cyclicity across an unbounded operator is asserted by (1).

Under all uniform graph, trace, heat-smoothing, domain and field hypotheses of the cited joint-path note, its unweighted bound therefore gives for precisely these adjacent-insertion pieces

 |R_adj(delta,t)| <= C |log delta|
                [delta^(3/2)t^(-9/4)+delta^3 t^(-3/2)], 0<t<=1. (2)

The factors include both orderings only when each ordering is independently represented with b adjacent to one boundary vertex. For the four-dimensional proper-time weight dt/t, choose delta=epsilon^p with p>3/2. Integrating (2) from epsilon to one yields

 O(|log epsilon| [epsilon^(3p/2-9/4)+epsilon^(3p-3/2)]) -> 0. (3)

Thus the extra logarithm does not change that sufficient strict path condition for these pieces. If a smooth radial cut coordinate differs from U by a fixed positive smooth factor, the same estimates hold with |log delta| replaced by C(1+|log delta|). Constants depend on the fixed seed and stipulated uniform bounds, not on delta or epsilon.

A general insertion at an arbitrary location in the heat simplex is not covered: moving b to the boundary produces heat commutators, and the nonlocal bulk terms can generate further contributions. The estimate also excludes nonradial cuts, moving insertion derivatives, bulk-bulk and second-vertex terms, product-frame normalization and the complete regulator. It is not a physical admission margin or Lean certificate.

Remaining to-do list: control all heat-commutator corrections and other vertices on the actual domains, prove the physical regulator and normalization, complete novelty and manuscript, and certify supported claims on GCP.
