# Interior mixed-response locality for the physical cut

This assembles the cut/complete heat locality estimates for the fixed-time
interior mixed response in `physical-cut-tail-locality-reduction.md`. It is
conditional on the uniform physical bundle, domain, form, H5, weighted Davies
and finite-cover hypotheses in `physical-cut-interior-operator-locality.md`
and `physical-cut-localized-schatten.md`, and on the stated form-trace
identities. It does not identify the source's product-frame/time-reduced
observable, establish its renormalized finite part, or certify Lean.

Let v,w be the smoothly truncated interior directions, supported in the
common set u>=c delta^a, 0<a<1. Their physical derivatives through order
two and the relevant local frame coefficients are uniformly bounded; their
L2 norms are controlled as in the tail/locality reduction. They vanish in
a neighborhood of the finite cut, so the first-vertex boundary form there
is zero. On their support the cut and complete differential expressions,
bundle and direction data are identical. Let V_v,V_w denote the resulting
Hermitian bulk forms and local differential expressions of order at most two.
The Duhamel commutator cutoff transitions near u=delta^b with a<b<1.

Choose c_* with a<c_*<b and put P_near=1_{u>=delta^(c_*)}; its complement
is a positive physical distance from the interior direction supports. Let
p>0 and V_v K_p mean the weighted differential heat factor, with the
cut semigroup embedded by zero extension. We claim

 ||V_v K_(delta,p)-V_v K_p||_2
   <= C delta^(-M) p^(-N) exp[-c_0 |log delta|^2/p],    (1)

for 0<p<=1, with constants independent of delta and the field approximant.
To see this, split the input into P_near and 1-P_near. On P_near, the
localized differentiated Hilbert--Schmidt estimate (6) of
`physical-cut-localized-schatten.md` applies to each order-at-most-two term
of V_v: both input and output remain separated from the commutator region
u~delta^b. The product-rule coefficients, smooth support cutoffs and their
physical derivatives are bounded; the finite chart cover and any partition
summation contribute at most a polynomial delta^(-M).

For the complementary input, each individual heat operator obeys the
weighted Davies off-diagonal L2 bound between u<delta^(c_*) and the interior
output support. Its distance is at least c(c_*-a)|log delta|-C. Apply the
same local H5 interpolation and singular-value splitting used to derive (6)
in the cited Schatten note, now to a single heat semigroup instead of their
difference. This yields the same form of Hilbert--Schmidt bound for
V_v K_p(1-P_near), both on the finite cut and on X. This argument uses the
uniform H5 and bounded-geometry cover assumptions, not a global heat trace.
Combining the two input pieces proves (1); the same holds for w and for the
order-at-most-one weighted factors v D K_p and C_v K_p in the second vertex.

For 0<s<=t/2 let r=t-s and T_v=V_v K_(r/2). The Hermitian form
factorization of `finite-cut-ordered-bulk-endpoints.md` gives

 F_uw(s)=Tr[K_s T_w T_u*].                                (2)

The ranges of T_u,T_w lie in the interior direction supports. Thus the
short-heat comparison may be compressed to that common support; the
operator-norm estimate of `physical-cut-interior-operator-locality.md`
controls its difference exponentially. Telescope (2) between the cut and
complete problems. One term uses that compressed short-heat difference and
two unperturbed Hilbert--Schmidt long factors; the other terms use (1), a
bounded short heat operator and one unperturbed long factor. Since r/2>=t/4,
the estimates imply

 |F_uw,delta(s)-F_uw(s)|
   <= C delta^(-M) t^(-N) exp[-c_1 |log delta|^2/t].    (3)

The reverse half of the s interval follows by interchanging the vertices and
heat times, using Hermiticity of the forms; the second ordering is analogous.
The exponent c_1 may be reduced to absorb the fixed factors involving
b-a and c_*-a. No frequency or angular truncation is used.

For the mixed second form vertex, split the products into the weighted
Hilbert--Schmidt factors v D K_(t/2), w D K_(t/2), C_v K_(t/2) and
C_w K_(t/2), as in `physical-fixed-time-mixed-response-assembly.md`.
Their ranges are supported in the same interior region, and the individual
cut/complete differences obey (1)'s order-one or order-zero version.
Telescoping their Hilbert--Schmidt pairings gives the same form of bound as
(3), multiplied by the outer factor t. Integrating the ordered terms with
the bounded time-simplex weight proves

 |R_delta,int(t)-R_complete,int(t)|
    <= C delta^(-M') t^(-N') exp[-c_2 |log delta|^2/t],  (4)

for 0<t<=1, after enlarging finite exponents. The localized direction cutoff
and all of its derivative terms are already part of V_v and V_w; the
cut-versus-complete commutator is included in the heat-locality estimate.
This is the physical-model estimate required by the tail/locality reduction,
under its combined hypotheses. It treats the full listed mixed form response,
including both ordered terms and all four second-vertex terms.

Combining (4) with the separate tail and boundary bounds gives the conditional
joint cut comparison along the example delta=epsilon^5, eta=epsilon^8 for
ordinary dt/t. This does not establish that the complete physical response
has a renormalized finite part or equals the source's product-frame orbit
observable. Physical bundle and boundary realization, canonical source,
subtraction terms and all uniform hypotheses still require verification.
No numerical run or Lean certification is claimed.

Remaining to-do list: verify the physical source/bundle and subtraction
matching, prove existence of the required small-time finite part, finish the
novelty audit and manuscript, and certify supported claims in Lean on GCP.