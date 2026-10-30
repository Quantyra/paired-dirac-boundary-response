# Conditional physical contact remainder from the auxiliary bridge

This combines `rn-auxiliary-contact-joint-limit.md` with
`physical-bridge-contact-normalization.md`. It is a conditional transfer
statement: the physical bundle, domain, collar equality and uniform
locality inputs listed below remain hypotheses, not newly verified facts.
It is not a full response theorem or Lean certificate.

For each scalar cutoff e and sufficiently small t>0, suppose:

1. The physical paired H¹/adjoint realizations and the auxiliary half-cylinder
   have the common collar, scalar insertions and uniform graph, heat and
   cutoff-commutator estimates required by the cited locality theorem.
2. The reflection equality and radial winding estimate apply uniformly,
   with a fixed thermal period and the same physical-half/time-reduced
   normalization. The two rank-four copy sectors have the unitary trace
   equivalence stated in the normalization note.
3. The auxiliary zero-radial-image bridge and its local coefficients
   a_{0,e},a_{1,e},a_{2,e} satisfy the joint-limit hypotheses in the RN
   auxiliary note. The source's smooth coefficient formula and its weak
   extension are accepted only to the extent specified there.

Let I_phys,e(t) be the source-normalized per-exterior contact and let
I_line,e(t) be the rank-two line bridge in the normalization of the
auxiliary note, including all thermal images. The normalization note gives

 |I_phys,e(t)-(1/2)I_line,e(t)| <= A t^(-N) exp(-c/t),       (1)

with uniform constants after absorbing the radial-winding estimate. The 1/2
is the stated half-line/per-exterior result for this rank-two line bridge;
no further division of sphere degeneracies is made. From the auxiliary
bound it follows that

 |I_phys,e(t)-(1/2)(a_{0,e}+t a_{1,e}+t² a_{2,e})|
    <= (K/2)t^(5/2)+A' t^(-N') exp(-c'/t).                 (2)

All coefficients in (2) are the auxiliary line coefficients in precisely
that convention, including their weak seam measure. The matching collar
hypothesis permits using their physical restriction as local coefficients;
if a different extension or boundary convention changes a local term, that
identification must be checked separately. Multiplying (2) by the common
2Theta'(t), with |Theta'|<=C_ang t^-2, yields a remainder tending to zero
uniformly in e. The cutoff-then-time and joint limits of that *subtracted
contact remainder* are consequently zero.

No new finite-part value follows merely from (2): the explicit local terms
must be combined with the geometric contribution and actual counterterms.
The result is conditional on a uniform locality bound for the varying
cutoff family, not only the fixed-seed result. It also does not justify
holding limiting coefficients fixed before the joint limit, and does not
establish the source's separate P1-D mixed-response bound. No numerical
calculation is used.

Remaining to-do list: verify the physical bundle/domain and uniform matching
hypotheses, prove the geometric response and complete common-regulator
conversion, decide novelty, prepare the manuscript, and certify in Lean on
GCP.
