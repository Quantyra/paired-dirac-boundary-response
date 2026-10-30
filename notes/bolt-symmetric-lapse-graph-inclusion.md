# Bolt regularity and the symmetric-lapse graph-domain inclusion

This establishes a conditional inclusion needed by
`symmetric-lapse-localized-joint-cut-limit.md`, for each fixed antiperiodic
thermal and angular mode. It uses the smooth product-frame and core hypotheses
in `bolt-cartesian-mode.md`; it is not a global physical bundle identification,
a full equality of domains, or a Lean certificate.

Near a nonextremal regular bolt let rho be proper radius, let the orbit
metric be d rho^2+a(rho)^2 d tau^2 with a(rho)=kappa rho+O(rho^3), and set
f=1/a. The canonical coordinate satisfies d rho/ds=1/f=a, up to orientation,
so |ds| is comparable to d rho/rho near rho=0. Let phi_y be the orbit
half-density spinor in L2(d rho), psi_s=f^(-1/2)phi_y its unitary image in
L2(ds), and eta=sqrt(f)psi_s=phi_y as a function of s.

For thermal frequency nu=(j+1/2)kappa, the regular Cartesian spin-frame
calculation in `bolt-cartesian-mode.md` gives component behavior

    phi_y=O(rho^(n+1/2)),   partial_rho phi_y=O(rho^(n-1/2)),
    n in {|j|,|j+1|},                                  (1)

with the sharper regular n=0 expansion recorded there. The smooth sphere
mode and twisting data are fixed in this estimate. Because
partial_s eta=(d rho/ds)partial_rho phi_y and d rho/ds=O(rho), both eta and
partial_s eta are O(rho^(n+1/2)). Therefore

    integral_near_bolt (|eta|^2+|partial_s eta|^2)|ds|
       <= C integral_0^r rho^(2n) d rho < infinity.     (2)

For a fixed mode, the angular coefficient a_mu of the canonical H_mu is
bounded and tends to zero at the bolt for the fixed RN seed. Consequently
eta is in the half-line H1 domain of H_mu near the bolt. At the outer
boundary, positive scalar multiplication by sqrt(f) preserves the local
sigma_1 projector. Under the recorded common spin/copy and boundary
identification, eta belongs to Dom H_mu, where the latter is the self-adjoint
H1 projector realization. A smooth regular disk spinor therefore satisfies
the domain inclusion used in the symmetric-lapse thermal estimate.

Now assume more specifically that a fixed-mode symmetric operator P_phys is
the graph closure of its smooth regular Cartesian mode core, that its local
expression on this core is

    P_phys v=sqrt(f)(H_mu+i nu)sqrt(f)v,                (3)

and that f>=f0>0. The Fourier mode projections must preserve the physical
core and the boundary projector. For core v put eta=sqrt(f)v. Since H_mu is
self-adjoint and nu!=0,

    ||eta|| <= |nu|^(-1) ||(H_mu+i nu)eta||,
    ||H_mu eta|| <= 2 ||(H_mu+i nu)eta||
                  <= 2 f0^(-1/2)||P_phys v||.          (4)

The constant 2 is nonsharp and is valid for real nu. Thus v_n Cauchy in the
P_phys graph norm implies sqrt(f)v_n Cauchy in the H_mu graph norm. Its graph
limit eta belongs to Dom H_mu by closedness. Local boundedness of sqrt(f)
on compact subsets, together with v_n->v in L2(ds), identifies eta with
sqrt(f)v almost everywhere, even if sqrt(f) diverges at the bolt. Similarly,
closedness of multiplication by sqrt(f) identifies the L2 limit of
sqrt(f)(H_mu+i nu)eta_n with sqrt(f)(H_mu+i nu)eta. Hence every v in Dom
P_phys satisfies

    sqrt(f)v in Dom H_mu,
    P_phys v=sqrt(f)(H_mu+i nu)sqrt(f)v.                (5)

The ordinary graph argument therefore supplies the inclusion required for
(4) of `euclidean-canonical-unitary-half-density.md`, and the conditional
thermal lower bound extends from the smooth mode core to its closure. It
does not prove that every vector satisfying the right side of (5) lies in
Dom P_phys, or identify the square's composition domain and its cut trace.

For the actual physical operator one must still establish the stated global
unitary spin and magnetic bundle map, graph-core identification, fixed mode
reduction, and equivalence of the selected local cut projector with the
physical boundary prescription. The argument concerns a single fixed seed;
uniformity across rough families and the common regulator remain separate.
The thermal lower bound is not a physical admission margin. No numerical
calculation is used.

Remaining to-do list: verify the physical core and bundle hypotheses, square
and transported boundary domains, full response and regulator, prior art,
manuscript, and Lean certification on GCP.