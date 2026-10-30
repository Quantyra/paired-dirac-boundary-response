# Fixed-time mixed-response assembly on the stipulated physical model

This assembles the ordered and mixed-second-vertex pieces at one fixed
positive heat time, under the common fixed-seed finite-cut, field, form and
trace hypotheses listed below. It does not identify the source's product-frame
physical-half observable, prove a short-time remainder or common-regulator
limit, establish a novelty verdict, or provide Lean certification.

## Common setup

Use the finite-cut family and limiting complete physical operator of
`finite-cut-bulk-interior-time-convergence.md`, including its strong heat,
H5 smoothing, local coefficient convergence, field convergence in N(v), and
noncompact chart-summation hypotheses. Assume in addition the pointwise
parallel partner and fixed-cut domains needed for
`physical-dirac-heat-h3-factor.md`, the actual projector and Green identities
of `finite-cut-first-vertex-boundary-pair.md`, and the radial weighted cubic
boundary estimates of `finite-cut-mixed-boundary-bulk-pair.md`. The real
smooth approximant fields and their first derivatives converge in physical
L2 and are uniformly bounded as required by those notes. The common form
trace and Duhamel differentiations are assumed valid on each smooth cut, as
in `paired-positive-time-trace-derivatives.md` and the vertex inventory.
These are application hypotheses, not consequences of the fixed-time limit.

For each cut and field approximant write D=D_b, L=D*D, K_s=exp(-sL) and

 D_v=-vD-(1/2)C_v,
 D_uw=uwD+(1/2)(u C_w+w C_u),  C_v=E_b^2 c(dv).         (1)

All quantities vary with the cut and approximant unless explicitly limiting.
The mixed second form q_uw has all four terms displayed in
`physical-mixed-second-vertex-trace.md`, including both product vertices.

## Mixed second-vertex convergence

Let H=K_(t/2). The product-rule and weighted heat estimates give
u D H, w D H, C_u H and C_w H as Hilbert--Schmidt operators, uniformly
in the family for fixed t>0. They converge in Hilbert--Schmidt norm under
the local compactness and L2-multiplier argument of
`finite-cut-bulk-interior-time-convergence.md`: its weighted differential
factors of order at most two include D H, and order zero includes H.
The local coefficients of D and C_v use the stipulated local convergence;
the first-derivative field convergence controls the L2 weights.

Thus D_u H=-u D H-C_u H/2, and D_w H, converge in Hilbert--Schmidt norm.
The other two terms involving D_uw H pair with D H. Split their coefficients
between the two factors rather than requiring D H to be globally
Hilbert--Schmidt. For example, the uw term is the Hilbert--Schmidt pairing
of u D H with w D H, and the u C_w term pairs u D H with C_w H, with the
operator order and adjoints dictated by q_uw. The corresponding conjugate
terms are handled similarly. Each pairing converges by Hilbert--Schmidt
convergence, so

 Tr_form[q_(u_e w_e) K_(j,e,t)] -> Tr_form[q_uw K_t].     (2)

This includes all four terms of q_uw. It neither asserts convergence of the
unweighted global heat trace nor replaces a product term by zero.

## Ordered terms and mixed derivative

For one fixed cut, write F_uw(s)=Tr_form[q_u K_s q_w K_(t-s)]. After the
explicit first-vertex decomposition, the bulk-bulk integral converges by
`finite-cut-ordered-bulk-endpoints.md`; the two bulk-boundary and the
boundary-boundary pieces tend to zero under the fixed-time bounds of
`finite-cut-mixed-boundary-bulk-pair.md` and
`finite-cut-first-vertex-boundary-pair.md`. The same applies to F_wu.
The ordering includes every bulk, boundary and coefficient term.

Under the stated smooth-cut form-Duhamel hypothesis, cyclicity of the heat
trace and integration over the two outer heat times give

 partial_u partial_w Tr K_t
   = integral_0^t (t-s)[F_uw(s)+F_wu(s)] ds
       -t Tr_form[q_uw K_t].                              (3)

The trace on the left is the finite-cut trace; on the noncompact complete
space the right side is interpreted as the convergent relative mixed
response, not as a derivative of an infinite unrenormalized trace. The
bounded weight t-s does not affect the fixed-t endpoint majorants. Equations
(2), the ordered convergence and boundary estimates therefore yield joint
cut/field convergence of the right side of (3) to the corresponding complete
physical form response for every fixed t>0, under the common hypotheses.

No bound uniform as t->0 is obtained; the constants from the long heat
factors may diverge. The assertion does not identify canonical boundary
data, match the product-frame orbit trace or physical-half factor, include
unlisted moving-density/insertion terms, or justify a common proper-time
cutoff. Those must be established before using (3) as the source observable.
No numerical or Lean check is claimed.

Remaining to-do list: verify the physical bundle and source identification,
prove the required subtracted small-time and regulator limit, complete the
novelty audit and manuscript, and certify supported claims in Lean on GCP.