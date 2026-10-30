# Product-orbit half-density trace and scalar insertions

This extends the local operator calculation in
`physical-auxiliary-collar-match.md` to its trace density and scalar
insertions on a fixed compact orbit model. It does not identify that model
with the physical source regulator or prove a noncompact/short-time limit.

Let an orbit have metric dy^2+a(y)^2 d tau^2, a>0, with fixed thermal
period T and compatible spin bundle and boundary domains. Let H_g be L2 in
measure a dy d tau and H_flat be L2 in dy d tau. The unitary
W:H_g->H_flat is W psi=a^(1/2) psi. Suppose the closed first-order
realization and its adjoint are carried by W to the stated half-density
realizations; their composition squares satisfy

  L_flat=W L_g W^(-1),  K_flat(t)=W K_g(t) W^(-1).      (1)

The composition domain is transported by the unitary; it is not assumed to
be a fixed second-order domain. If U,V are bounded scalar multipliers, they
commute with W. Whenever the products are trace class, unitary invariance
gives exactly

  Tr_Hg[U K_g(t)] = Tr_Hflat[U K_flat(t)],
  Tr_Hg[U K_g(t-s)V K_g(s)]
     =Tr_Hflat[U K_flat(t-s)V K_flat(s)].                (2)

Dividing both sides by T gives the same time-reduced convention. A separate
per-exterior or folded-copy factor must be applied according to the source;
(2) does not select it.

If K_g(t;x,y) denotes a kernel integrated against the geometric measure and
K_flat the kernel integrated against dy d tau, then in this local frame

  K_flat(t;x,y)=a(x)^(1/2) K_g(t;x,y) a(y)^(1/2).     (3)

Thus its diagonal is a(x) K_g(t;x,x), and integrating the flat diagonal is
exactly the geometric density integral. Equation (3) is local; (2) is the
coordinate-free trace statement when the global unitary and domains exist.
The thermal spin transition and the boundary projector are unchanged by the
positive scalar W in the stipulated local frame.

For a differentiable real family a_z and scalar U_z, suppose the transported
heat operators and insertions are differentiable in the required trace and
operator norms and the domain equalities above hold for every z. Equality
(2) holds at every z, so its derivatives agree. In particular, holding U_z
fixed as a scalar insertion introduces no additional standalone density
term on the flat side: the change of density is already contained in the
transported operator and unitary. If U_z itself moves, its derivative is a
separate product-rule term. This observation does not establish the source's
particular moving-coordinate convention or justify differentiating a
non-trace-class or renormalized expression.

The corrected auxiliary in `seam-correction-orbit-form-bound.md` uses this
flat half-density model. Its trace can be compared by (2) only where the
actual operator, spin/copy map, boundary domain and measure are identified.
The regular bolt and periodic auxiliary have different global geometries;
local agreement does not imply global heat-trace equality. Common cutoff,
contacts, counterterms and source normalization remain open. No numerical
run or Lean certificate is claimed.

Remaining to-do list: verify the global physical and auxiliary identification
or a justified locality comparison, complete the regulator and prior-art
audits, prepare the manuscript, and certify supported claims in Lean on GCP.