# Logarithmic insertion fails the positive gapless trace hypothesis

This tests the unweighted conformal insertion in `gapless-mixed-upper-endpoint.md` on the physical endpoint model of `physical-endpoint-long-cylinder-gap.md`. It shows that the positive-trace criterion cannot be applied to that insertion as stated. It does not establish divergence of the mixed response, where the source directions and cancellations can provide additional localization.

On the physical end x->-infinity, the fixed-mode first-order operator is P=-i sigma_2 partial_x+V(x), with V bounded and tending to zero. The conformal insertion is b=log U=x/L4+O(1), so S=sqrt(|b|) satisfies S²>=c |x| on a sufficiently distant end, with |S'| bounded there. Let A=P*P be any nonnegative square whose form domain contains smooth compactly supported interior spinors. Assume the local differential expression and form agree with P on that core.

Fix a normalized smooth spinor bump phi supported in an interval of length one, and let phi_k be disjoint translates into intervals centered at -k for all sufficiently large integer k. Then phi_k is an orthonormal family. Put v_k=S phi_k. The asymptotics of S and its derivative, boundedness of V, and the fixed bump give constants c,C>0 such that

 ||v_k||² >= c k,       ||P v_k||² <= C k.                (1)

The form version of Jensen's inequality for the convex function exp(-t lambda), applied to the spectral measure of A and the normalized vector v_k/||v_k||, yields for every fixed t>0

 <v_k, exp(-t A) v_k>
   >= ||v_k||² exp[-t ||P v_k||²/||v_k||²] >= c_t k.   (2)

Thus the diagonal sum over the orthonormal family diverges. If S exp(-t A) S were a well-defined positive trace-class operator, its trace would dominate that sum, a contradiction. Equivalently exp(-t A/2) S cannot have a Hilbert--Schmidt extension on this end. This conclusion holds for either sign split that includes the negative logarithmic tail, and already for a single fixed angular/thermal mode. Finite-cut positive traces cannot converge to a finite limiting localized trace of this kind.

The same argument quantifies the obstruction on finite cuts. Let the endpoint be cut at y=delta, and let L_delta=x0-x_delta=L4 log(1/delta)+O(1). Choose c L_delta disjoint unit bump supports in the interior portion of the end where |x| is between fixed positive fractions of L_delta. For each normalized bump phi, both ||S phi||² and the upper bound on ||P S phi||² are comparable to L_delta, with constants uniform in the cut. Equation (2) therefore supplies a lower bound c_t L_delta per bump. For every fixed t>0,

 Tr[S_delta exp(-t A_delta) S_delta] >= c_t L_delta²
                                         >= c'_t log(1/delta)². (3)

Here S_delta is the restriction of the bare logarithmic weight and A_delta is any finite-cut square whose form contains these interior test functions. The estimate uses only one fixed mode and does not require identifying its outer projector. It is a lower bound for a positive *bare insertion*, not for the signed mixed response or a physical admission margin. In particular, it rules out a cut-uniform bound for the bare positive trace, not a cancellation or direction-weighted estimate.

Consequently assumptions 1 and 2 of the gapless mixed-endpoint criterion fail for the bare physical conformal log, even if the kernel and domain identities are established. The fact that b times a cubic source direction is physically L2, as in `conformal-log-direction-physical-volume.md`, does not repair this bare trace: the directions must be incorporated into an actual mixed-vertex or commutator factorization before positivity or Schatten estimates are used. A cancellation between partners or a renormalized difference would also require a separate proof; (2) does not rule either out. The finite positive-cutoff bridge can remain meaningful on its stated compact domains.

The argument uses only the endpoint expression, the stated form core and standard spectral calculus; it does not prove physical bundle matching, a response divergence or a complete regulator statement. No Lean certification is claimed.

Remaining to-do list: derive and bound the localized mixed vertices or a justified partner cancellation, establish physical and regulator matching, complete the novelty audit and manuscript, and certify supported claims on GCP.
