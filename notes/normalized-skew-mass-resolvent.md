# Normalized skew operator and positive-mass resolvent

This completes the ordinary normalization argument underlying `MassSkewScalingDraft.lean`. It assumes an abstract skew-adjoint Q; identifying the physical paired realization and formalizing this argument remain open. No numerical computation is needed for the argument.

Let Q be a densely defined closed operator on a complex Hilbert space H, with Q*=-Q as an equality of operators and domains. Let m>0 and put c=1/m and R=cQ on Dom(R)=Dom(Q). The graph of R is

    graph(R) = {(x,y) : (x,y/c) belongs to graph(Q)}.       (1)

The map (x,y) -> (x,y/c) is continuous, so (1) and closedness of graph(Q) show that R is closed. Its domain is the dense domain of Q.

For the adjoint identity, use the defining Green witness rather than a formal distributional calculation. If y belongs to Dom(Q*), then for every x in Dom(Q),

    <c Q* y,x> = <y,c Q x>,

with c real, so y belongs to Dom(R*) and R*y=cQ*y. Conversely, if y belongs to Dom(R*) and w=R*y, then

    <w/c,x> = <y,Q x>

for every x in Dom(Q), so y belongs to Dom(Q*) and Q*y=w/c. Thus Dom(R*)=Dom(Q*) and R*=cQ*=-cQ=-R, including domains. Nonzero c is essential in the reverse direction.

The graph-projection result `positiveSquare_add_one_surjective_draft` and the checked development argument in `MassSkewSurjectiveDraft.lean` give surjectivity of I+R. Given f, choose u with (I+R)u=f/m; then (m+Q)u=f. If (m+Q)u=0, the ordinary skew lower estimate m||u||<=||(m+Q)u|| forces u=0. Therefore m+Q is bijective from Dom(Q) to H, and its inverse obeys

    ||(m+Q)^(-1) f|| <= ||f||/m.                           (2)

The same argument applied to -Q proves the corresponding statement for m-Q. These are first-order operator bounds, not trace bounds or a conclusion about the physical boundary response. The existing GCP checks support constituent declarations under stated hypotheses; the normalized-operator closedness and adjoint identities, their connection to physical Q, and the assembled inverse theorem are not yet Lean-certified.

Remaining to-do list: formalize normalization and the assembled inverse on GCP, check the physical domain and partner identity, complete the tangent response and prior-art review, and finish the manuscript and certification.
