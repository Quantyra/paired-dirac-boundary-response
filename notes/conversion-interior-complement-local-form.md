# Explicit local finite coefficient for the non-collar complement

This identifies the local coefficient that must accompany the transition and
interior terms in `conversion-three-region-decomposition.md`. It uses the
finite coefficient recorded in the pinned source
`current-variable-contact-conversion.md`, equation (9), as an input; it does
not prove its heat expansion or its applicability to the physical regulator.

Let p_0,p_1,p_2 be the fixed partition of that note, with p_0=1 near the
outer boundary and supp(p_0), supp(p_2) separated together with the needed
derivatives. Put u_i=p_i u, v_j=p_j v. In the source notation define the
local finite bilinear

  B(u,v)=(4pi)^(-1) integral {
    [8H1+C R^2/15+2C Delta R/15] uv
    -[H0/3+C R/5] <grad u,grad v>
    -(C/15)(Delta u)(Delta v) }.                        (1)

The source's C,H0,H1, measure, R and Delta are retained exactly as stated
there. The term Delta R is understood distributionally on the paired seam;
its admissible test function and all boundary conventions must be those of
the source. The smooth interior expressions alone do not establish that
extension.

By bilinearity and the disjoint-support observation of
`conversion-partition-local-counterterms.md`, the sum of the seven entries
other than (0,0), (0,2), and (2,0) is exactly

  B_complement(u,v)=B(u,v)-B(p_0 u,p_0 v).              (2)

The omitted two cross entries vanish locally. Equation (2) is an identity
of the declared bilinear, not a claim that the corresponding heat trace
vanishes. Since p_0=1 on an open neighborhood of the outer seam, the
integrand difference in (2), including derivatives of p_0, is supported
away from that seam. Hence, when the fixed orbit metric and fields are smooth
on that support, B_complement is an ordinary interior integral. Its support
can include the regular bolt, which must be treated in smooth disk charts;
there is no new boundary term at the bolt.

Expanding (2) explicitly retains transition effects. For example, with
p=p_0,

  <grad(pu),grad(pv)>
   =p^2<grad u,grad v>+p u<grad p,grad v>
    +p v<grad u,grad p>+uv |grad p|^2,                 (3)

and

  Delta(pu)=p Delta u+2<grad p,grad u>+u Delta p.       (4)

The fourth-order product in (1) uses (4) for both arguments. These terms
must be retained in the complement; the cutoff-derivative pieces do not
vanish separately. Because the partition is fixed and supported away from
the moving outer seam in the complement, its smooth coefficient bounds do
not inherit the shrinking seam-correction derivatives.

Equations (1)-(4) identify the candidate finite local complement only. A
uniform interior expansion with the claimed remainder, the physical source
trace and its common counterterms remain independent obligations. The
separated heat cross terms are only conditionally exponentially small as
shown in `separated-geometric-vertex-bound.md`; they are not used to infer
an interior heat remainder here. No numerical run or Lean certificate is
claimed.

Remaining to-do list: prove the interior/transition heat remainders and
physical source matching, resolve prior art, prepare the manuscript, and
certify supported claims in Lean on GCP.