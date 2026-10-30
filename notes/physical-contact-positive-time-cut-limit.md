# Positive-time physical-cut limit of the contact integral

This extends the interior-localized fixed-seed heat convergence to bounded
physical L2 insertions, under the uniform finite-cut heat diagonal estimates
of `physical-finite-cut-uniform-heat-diagonal.md`. Those boundary estimates
are assumptions, not proved here. The result is a fixed-positive-time contact
limit, not the physical-half normalization or a proper-time subtraction.

Let X be the complete fixed smooth physical seed, X_delta its increasing
finite-cut exhaustion, and K_delta,s the positive square heat semigroup
embedded by restriction and zero extension into H=L2(X). Let K_s be the
complete-space heat semigroup. Assume the strong positive-time convergence
in `physical-euclidean-finite-cut-strong-limit.md`, the localized trace-norm
convergence in `physical-localized-heat-trace-cut-limit.md`, and a uniform
volume diagonal bound for K_delta,tau and K_tau at every tau in [t/2,t],
for each fixed t>0. The latter follows only under the explicit graph and
boundary elliptic assumptions of the finite-cut diagonal note.

For real bounded scalar u,v in physical L2(X), define

  I_delta,t(u,v)=integral_0^t Tr[M_u K_delta,t-s M_v K_delta,s] ds. (1)

The multipliers are implicitly restricted to X_delta. If r=t-s>=t/2,
split K_delta,r at r/2 and use Schatten Holder:

  |Tr[M_u K_delta,r M_v K_delta,s]|
   <= ||M_u K_delta,r/2||_2 ||K_delta,r/2 M_v||_2
   <= C_t ||u||_2 ||v||_2.                               (2)

The Hilbert--Schmidt squares are integrals of |u|^2 or |v|^2 against the
K_delta,r diagonal. For s>=t/2 apply the same bound after cyclically
exchanging u,v and s,r. The same inequalities hold for K, and yield an
integrable majorant independent of delta at each fixed t.

For compactly supported u, the strong convergence of M_u K_delta,r/2 to
M_u K_r/2 improves to Hilbert--Schmidt convergence. Indeed, approximate u
by a compactly supported smooth multiplier; the diagonal bound controls the
L2 error uniformly. For a smooth multiplier, localized trace-norm
convergence of M_u K_delta,r M_u (with the complex conjugate on the first
multiplier if needed) gives convergence of the Hilbert--Schmidt norms, while
strong convergence gives weak convergence in the Hilbert--Schmidt space.
Weak convergence plus convergence of norms implies Hilbert--Schmidt
convergence. Taking adjoints supplies K_delta,r/2 M_v convergence. In (2),
the remaining short heat factor converges strongly and is uniformly bounded;
products with the converging Hilbert--Schmidt factors therefore converge in
trace, for each 0<s<t.

For general u,v in L2 intersect L-infinity, compactly supported truncations
converge in L2. The uniform bound (2), applied bilinearly to the tails,
passes the pointwise convergence to the full insertions. Dominated
convergence in s then gives

  I_delta,t(u,v) -> I_t(u,v)                             (3)

for each fixed t>0. The limiting contact is defined by the same trace
integral, with the trace-class factorization above even when K_t itself is
not trace class. In particular, the fixed-seed cubic/log fields have the
required L2 decay where established in the physical norm notes. This does
not identify the source's physical-half/time-reduced trace with the full
four-dimensional trace; that separate bundle, mode and normalization map
must be supplied before applying (3) to the physical conversion formula.

The constants C_t may diverge as t->0, and the argument is for a fixed seed,
not automatically uniform for rough approximants. It does not prove the
curved subtraction, angular sum interchange, or determinant limit. No
numerical run or Lean certificate is claimed.

Remaining to-do list: prove the uniform boundary estimates and rough-family
extension, identify the physical trace and common regulator, handle other
vertices, resolve prior art, prepare the manuscript, and certify supported
claims in Lean on GCP.