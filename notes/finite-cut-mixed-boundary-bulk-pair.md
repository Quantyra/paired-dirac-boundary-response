# Fixed-time ordered bulk-boundary cross term

This applies `finite-cut-first-vertex-boundary-pair.md` and the H5 heat
factor estimates to the two mixed bulk-boundary terms. It concerns the
stipulated smooth finite-cut model with uniform physical chart, domain,
trace and field bounds. It does not establish the bulk-bulk ordered term,
the physical source identification, a common-regulator limit or Lean
certification.

Use the Green convention and decomposition from the boundary-pair note:
for real v, q_v=q_v^bulk+B_v, where on smooth square-domain sections

 q_v^bulk(p,q)=<p,V_v^bulk q>,
 B_v(p,q)=-(1/2) integral_boundary <gamma p,h_v gamma q>,
 h_v=E^4(partial_n v)P.                                  (1)

Because q_v and B_v are Hermitian, q_v^bulk is Hermitian on the square
domain. The displayed V_v^bulk is a differential expression acting on the
second argument; its extension is the form q_v^bulk, not an assumed
self-adjoint operator with a new boundary condition.

Expanding its product rules in a uniformly controlled local frame gives a
finite sum of terms M_a A, where A has order at most two with uniform smooth
coefficient bounds and a is a component of v, dv, or nabla^2 v multiplied
by uniformly bounded seed and base-field coefficients. In particular

 sum ||a||_2 <= C N(v),
 N(v)=||v||_2+||dv||_2+||nabla^2 v||_2.                  (2)

Connection terms and derivatives of the fixed base multiplier are included;
no Clifford matrix is commuted through a Dirac operator without its product
rule. This is an expansion on the smooth core, with local frame factors and
partitions retained. Assume the common chart and frame bounds needed for (2)
and the weighted H5 heat bounds of `physical-h5-from-mixed-h3.md`.

For fixed t>0 let r=t-s. On the smooth compact cut, define the cross trace
by the form heat sandwich and use (1) with its factor -1/2. For
0<s<=t/2, its boundary-space representative is

  -1/2 Tr_boundary[h_w gamma K_s V_v^bulk K_r gamma*].     (3)

Split K_r=K_(r/2)K_(r/2). For each M_a A in (2), equation (3) is a term
of the T_0 family in `finite-cut-green-heat-factor-family.md`, with the
bounded sign and projector factors retained. Its Schatten bound yields

 |(3)| <= C_t s^(-1/4) N(v)
             ||h_w||_infinity^(1/2)||h_w||_1^(1/2).        (4)

The trace formula is first justified at 0<s<t on a fixed smooth cut by
heat smoothing and the form identity; the stated weighted Hilbert--Schmidt
bounds give the required absolute trace convergence.

The opposite endpoint uses Hermiticity, not an unproved integration by
parts of V_v^bulk through a boundary. On the fixed cut, expanding the
heat-sandwiched forms in an orthonormal eigenbasis of L gives

  overline{Tr_form[B_w K_s q_v^bulk K_r]}
       = Tr_form[B_w K_r q_v^bulk K_s].                  (5)

This follows from Hermiticity of both forms and exchanging the two spectral
indices; convergence follows from the positive-time heat estimates. Thus
(4), with s and r exchanged, controls t/2<=s<t as well. The other mixed
bulk-boundary term is obtained by interchanging v and w. All factors and
the coefficient -1/2 are retained; equation (5) is a conjugacy relation,
not a cancellation assertion.

For the recorded radial cubic/log fields,
||h_w||_infinity<=C delta^3 and ||h_w||_1<=C, uniformly in the physical-side
field cutoff, while N(v) is uniformly bounded on the fixed physical seed.
Integrating the two endpoint estimates gives

  integral_0^t |Tr_form[B_w K_s q_v^bulk K_(t-s)]| ds
       <= C_t delta^(3/2) N(v),                           (6)

with the -1/2 included in B_w. Together with the O_t(delta^3) boundary pair,
this controls all terms containing at least one boundary form in the
ordered pair, under the stated model and form-trace hypotheses. The
bulk-bulk trace, mixed second vertex, and actual common regulated physical
observable are separate; C_t can diverge as t->0 and (6) does not justify
removal of a proper-time regulator. No numerical or Lean check is claimed.

Remaining to-do list: complete the bulk-bulk ordered argument and its cut
limit, establish physical source and regulator matching, finish novelty and
manuscript, and certify supported claims in Lean on GCP.