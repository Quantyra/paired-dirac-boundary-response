# Infrared cut removal for the heat-smoothed canonical mode tower

This establishes the low-mass cut-removal limit for the canonical half-line
model under the integrability condition below. It extends the zero-mode
argument in `zero-mode-infrared-cut-comparison.md`. It does not identify the
physical Euclidean operator or determinant regulator and is not Lean certified.

Let H_mu=-i sigma_2 partial_x+mu a(x) sigma_1 on a half-line, with the local
sigma_1 projector at its finite endpoint, and let H_mu,ell be the same
operator and projector at a cut ell inward. Assume a is real, bounded and
integrable on the whole half-line, and use the same direct-sum angular heat
weight exp(-tau mu^2), tau>0, and multiplicities as
`rn-regulated-low-mass-cut-integral.md`. Let u>=0 be bounded and integrable,
S=sqrt(u), U=integral u, and R_mu(M)=(H_mu^2+M^2)^(-1), with R_mu,ell
and restriction J_ell defined analogously.

For fixed M_*>0 and 0<=epsilon<=1, the trace-norm integral

  I_ell=integral_0^M_* 2M exp(-epsilon M^2)
     [direct sum_mu exp(-tau mu^2) S(J_ell* R_mu,ell J_ell-R_mu)S] dM
                                                                  (1)

exists, and ||I_ell||_1 -> 0 as ell->0, uniformly in epsilon. Here S in the
cut term is understood by restriction and extension. No positive infrared
cutoff is needed in this model difference. The statement makes no assertion
about either unsubtracted resolvent integral separately.

To prove the bound, write the full half-line from its finite endpoint using
coordinate x and define

    T_mu(x)=exp[-mu sigma_3 integral_endpoint^x a(s) ds].

The sign may reverse with the inward coordinate; all bounds below use
absolute values. T_mu(endpoint)=1 and
H_mu(T_mu v)=-i sigma_2 T_mu v'. Thus multiplication by T_mu maps the free
H1 projector domain bijectively to the interacting one, since it is bounded,
has bounded inverse and derivative, and is identity at the endpoint. Put
A=integral |a| and K_mu=exp(|mu| A); both ||T_mu|| and ||T_mu^-1|| are at
most K_mu. For any free-domain v,

    ||H_mu T_mu v||^2+M^2||T_mu v||^2
       >= K_mu^(-2) (||v'||^2+M^2||v||^2).             (2)

The right-hand form is the free square with its one Neumann and one Dirichlet
component. Form inverse monotonicity, applied after the bounded invertible
change of variables, bounds the interacting resolvent by the corresponding
T_mu-conjugated free resolvent. The free diagonal kernel in each component is
at most 1/M. Consequently, for an absolute constant C,

    Tr[S R_mu(M) S] <= C K_mu^4 U/M.                    (3)

The same estimate holds for the cut realization with the integral defining
T_mu based at the cut: its half-line integral is at most A, and its localized
insertion has integral at most U. Positivity and the triangle inequality then
give

    ||S(J_ell* R_mu,ell(M) J_ell-R_mu(M))S||_1
       <= C K_mu^4 U/M.                                 (4)

The right side of 2M times (4), including the angular heat weight, is
integrable on (0,M_*] and summable over modes: the recorded magnetic sphere
count has polynomial growth, while exp(-tau mu^2+4A|mu|) is summable for
fixed tau>0. This remains a majorant when exp(-epsilon M^2) is replaced by 1.
For every fixed mu and M>0, the changing-cut and removed-collar results in
`rn-boundary-square-retained-correction.md` and
`rn-regulated-low-mass-cut-integral.md` give trace-norm convergence of the
localized difference to zero as ell->0; their low-mass comparison uses a
fixed positive M and does not require a global angular gap. Dominated
convergence for the mass integral and angular counting measure proves (1),
uniformly in epsilon by the preceding absolute majorant.

For the fixed nonextremal RN-AdS canonical coefficient a=sqrt(f)/r, the
pinned collar estimate makes its integral finite near conformal infinity;
`rn-bolt-global-radial-gap.md` gives exponential decay toward the bolt in
canonical coordinate, so the integral is also finite there. This verifies
the integrability condition for that fixed seed, not uniformly for a varying
family. The result gives no rate uniform as tau->0: the majorant can grow
rapidly there. It also does not match the transported physical boundary,
Euclidean lapse, thermal sectors, vertices or common counterterms. No
numerical calculation is used.

Remaining to-do list: obtain useful joint angular/cut rates, establish
physical boundary and Euclidean matching, prove the full response and common
regulator, resolve prior art, prepare the manuscript, and certify supported
claims in Lean on GCP.