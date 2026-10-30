# Source-cutoff rate for the product-orbit geometric variation

This complements `product-contact-source-cutoff-weight.md` for the two
geometric terms of the pinned conversion formula. It is a conditional
comparison of the specified compact product-orbit models, not an identification
of the physical source, local counterterms or full renormalized response.

On the common pulled-back orbit Hilbert space, let L_eta(z) and L_0(z) be
the holomorphic form families for a geometric direction v, with common form
domain and a fixed complex disk |z|<=r. Let U_eta,U_0 be the fixed smearings
in that derivative. Assume their operator norms are uniformly bounded and
||U_eta-U_0||<=C eta. Assume the common sectorial estimates, H1 smoothing,
S_3 embedding bound and uniform complex-family form comparison needed for
`product-orbit-contact-cutoff-rate.md`, including

  ||exp(-t L_eta(z))-exp(-t L_0(z))|| <= C eta,
  0<t<=1, |z|<=r.                                     (1)

The same interpolation and four-factor argument used in the contact note
gives, uniformly on a smaller closed disk,

  ||K_eta,z(t)-K_0,z(t)||_1 <= C eta^(1/4) t^(-15/8),
  ||K_0,z(t)||_1 <= C t^(-2).                          (2)

Cauchy's formula for the trace-norm holomorphic family yields the first bound
for the z derivative, multiplied by a fixed reciprocal disk radius. Applying
the product rule for fixed smearings then gives

  |D_v Tr[U_eta K_eta(t)] - D_v Tr[U_0 K_0(t)]|
     <= C eta^(1/4) t^(-2), 0<t<=1.                   (3)

The insertion-difference term uses the second bound in (2) and its Cauchy
derivative; eta<=eta^(1/4) for eta<=1. The normalization factor 1/T and
any established per-exterior factor are absorbed into C. The direction is
fixed with respect to z, but its eta-dependent approximation and the common
Cauchy radius must be included in (1).

The source angular counting bound in `product-contact-source-cutoff-weight.md`
gives Theta(epsilon)<=4C_sphere/epsilon. Therefore each of the two geometric
terms in its positive-cutoff conversion differs by at most

  C eta^(1/4) epsilon^(-3).                            (4)

Together with the isolated contact estimate in that note, the complete
*unsubtracted model conversion expression* has this comparison rate when
all three terms use the same eta, cut and trace convention. On the particular
path e_field=epsilon^9 and delta=exp(-4L/epsilon), assuming
eta<=C[delta+e_field^3(1+|log e_field|)], the bound tends to zero at the rate
O(epsilon^(15/4)(1+|log epsilon|)^(1/4)) plus an exponential term.

This compares the two model expressions before local counterterm and density
matching. It assumes the complex-family bounds and does not establish that
the local-projector orbit is the physical source problem or that the source's
conversion identity holds for the rough limit. It does not prove a
path-independent regulator removal, a finite curved remainder, or a Lean
certificate. No numerical run is used.

Remaining to-do list: verify physical source and trace normalization,
control all subtractions and regulator terms, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.