# Three-region decomposition of the conversion response

This records how to retain the non-collar terms left open in
`corrected-orbit-conversion-locality.md`. It is an exact decomposition at a
fixed cutoff, not a bound on the full subtracted response.

Let J_t''[u,v] be the source conversion bilinear at fixed t>0, with both
geometric variations and the contact term retained. Assume the form
variations are linear in their directions and all traces are defined with the
same fixed cutoff and normalization. Choose smooth scalar functions
p_0,p_1,p_2 with p_0+p_1+p_2=1: p_0 is supported in the common boundary
collar; p_2 vanishes on a larger collar; p_1 is the transition region.
Choose them so supp(p_0) and supp(p_2), including the supports of their first
derivatives needed by the first-order vertices, are separated by a positive
distance. Put u_i=p_i u and v_j=p_j v. Bilinearity gives exactly

  J_t''[u,v]=sum_(i,j=0)^2 J_t''[u_i,v_j].            (1)

The same partition must be applied to every local subtraction and moving
insertion according to its own bilinear formula. In particular, derivatives
of p_i are part of the geometric vertices; replacing p_i D_v by a vertex
without its cutoff derivatives is incorrect.

The (0,0) term is eligible for the corrected common-collar locality theorem,
provided its support lies inside the smaller set K and all listed domain,
normalization and uniformity hypotheses hold. The (2,2) term is an interior
contribution, and the terms involving index 1 retain the transition and its
overlaps. None of these is removed by (0,0) locality. The (0,2) and (2,0)
terms have separated scalar/vertex supports by construction. Off-diagonal
heat and derivative estimates may make those cross terms exponentially
small at positive time, but proving that requires the actual first-form
vertex factorization, its endpoint bounds, and uniform constants. It is not
implied solely by disjoint scalar supports.

For the contact part alone the separated cross terms are directly controlled
under the complex-independent off-diagonal Hilbert--Schmidt estimates of
`complex-offdiagonal-hilbert-schmidt.md`. For example, with u_0 and v_2
supported in separated sets E,F, write

  Tr[u_0 K_(t-s) v_2 K_s]
    =Tr[(u_0 K_(t-s)1_F)(v_2 K_s 1_E)].               (2)

Schatten Holder gives a product of the two off-diagonal Hilbert--Schmidt
norms (using the relevant adjoint orientation). Their Gaussian endpoint
factors make the integral in s bounded by C t^(-N) exp(-c/t), with constants
depending on the fixed separation and multiplier bounds. This is a contact
cross-term estimate on the stipulated compact model; the full angular factor
only changes its polynomial prefactor. It says nothing about the transition
or interior diagonal pieces.

The decomposition avoids counting the collar result twice and makes the
remaining fixed-direction complement explicit. It does not prove a uniform
curved subtraction, source matching or regulator limit. No numerical run or
Lean certificate is claimed.

Remaining to-do list: control the transition, interior and geometric cross
terms with the common subtractions, verify physical source and regulator,
resolve prior art, prepare the manuscript, and certify claims in Lean on GCP.