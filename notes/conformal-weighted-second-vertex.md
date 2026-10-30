# Weighted mixed second vertex at positive heat time

This extends `physical-mixed-second-vertex-trace.md` to the conformal
insertion b on a fixed cut. It bounds the mixed second-form term, not the
two ordered first-vertex terms or the complete physical response.

Use D=D_beta, V_u,V_w and V_uw from `mixed-heat-vertex-inventory.md` on a
common form domain V, with real directions u,w. Let b be a real bounded
finite-cut multiplier that maps V to itself and has bounded commutator
C_b=[D,b]. Suppose the product and form identities below are valid on heat
outputs. Let L=D*D and H=exp(-tL/2), t>0. Define

  N(v)=||v||_2+||dv||_2,
  N_b(v)=||b v||_2+||b dv||_2,                              (1)

where the norms use the declared physical measure. Assume u,w and their
first derivatives, b u,b w,b du,b dw belong to L2 and that the diagonal heat
and derivative estimates (3)--(4) of `physical-mixed-second-vertex-trace.md`
hold for the scalar and Clifford multipliers used below, with constants A_t,
B_t. Assume C_b is a bounded bundle endomorphism and E_beta is uniformly
bounded on the fixed cut. These are explicit smoothing and domain hypotheses.

The first- and second-Dirac derivatives have the form

  V_v=-vD-C_v/2,
  V_uw=uwD+(u C_w+w C_u)/2,                                 (2)

with C_v=E_beta² c(dv). Since scalar coefficient terms commute with b,

  D(bx)=b Dx+C_b x,
  V_v(bx)=b V_v x-v C_b x,
  V_uw(bx)=b V_uw x+uw C_b x.                               (3)

The complete mixed square form is

 q_uw(x,y)=<V_uw x,Dy>+<Dx,V_uw y>
             +<V_u x,V_w y>+<V_w x,V_u y>.                   (4)

For an orthonormal basis {e_j}, put x_j=H e_j. Substituting (3) in
q_uw(b x_j,x_j) retains four terms and every correction. Each sum is
bounded by Hilbert--Schmidt Cauchy--Schwarz. For example,

  sum_j <b uw D x_j,D x_j>
    = <M_(b u) D H, M_w D H>_HS,                            (5)

up to the displayed inner-product convention; a real sign is retained in
the multiplier. Its absolute value is at most B_t||b u||_2||w||_2. A
mixed-gradient term such as b u C_w is bounded by one weighted D H factor
and one weighted H factor, controlled by ||b u||_2||dw||_2. A commutator
term such as uw C_b is bounded by ||C_b||_infinity times the weighted
u H and w D H factors. The two product vertices in (4) are handled the same
way; terms b C_u use ||b du||_2. Thus the sum converges absolutely and

 |sum_j q_uw(b H e_j,H e_j)|
   <= C_t [N_b(u)N(w)+N(u)N_b(w)+N(u)N(w)].                  (6)

The constant depends on A_t,B_t, the bounded base multiplier and C_b; it is
not asserted uniform as t->0, a cut moves, or the field regulator changes.
The right side does not require b itself to be L1 or bounded on the limiting
exterior, but the derivation of (6) starts with a bounded finite-cut b.

For the fixed RN asymptotic source, the cubic direction estimates and
`conformal-log-direction-physical-volume.md` give finite N(v),N_b(v) for
stationary radial u,w with the stated interior regularity. Their tails tend
to zero in these norms. To pass (6) to the physical limit one must still
prove common heat-diagonal constants, domain/trace convergence, and the
actual conformal insertion identification. Furthermore a weighted trace
with insertion b has an integral over the location of b in the heat
sandwich; it is not automatically equal to the single form sum above. The
ordered terms, moving density, boundary forms, subtractions and proper-time
limit remain open. No numerical or Lean certification is claimed.

Remaining to-do list: control all insertion positions and ordered terms,
match the physical boundary and regulator, resolve novelty, complete the
manuscript, and certify supported claims in Lean on GCP.
