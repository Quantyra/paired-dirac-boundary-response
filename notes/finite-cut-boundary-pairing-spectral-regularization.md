# Spectral regularization of the boundary and first-vertex pairing

This supplies a finite-cut regularization for the boundary-form pairing in
`finite-cut-first-vertex-boundary-pairing.md`. It assumes the estimates in
that note, and does not by itself justify replacing the full physical ordered
vertex by its formal bulk and boundary parts.

On a fixed compact smooth cut, suppose L=D*D has compact resolvent. Let
(e_n) be an orthonormal eigenbasis, L e_n=lambda_n e_n, and P_N the
projection onto the first N eigenvectors. Assume that these eigenvectors
have the boundary and interior regularity needed for the Green identity.
Write Q_h(f,g)=<gamma f,h gamma g> and let v be any one of the three
first-order forms V_A,V_B,V_C in the pairing note. With the convention that
inner products are conjugate-linear in the first slot, define for s,r>0

  T_N(s,r) = sum_(m,n<=N) exp(-r lambda_m-s lambda_n)
                         Q_h(e_n,e_m) v(e_m,e_n).       (1)

This is exactly the trace of the finite matrix product

  Q_N exp(-r L_N) V_N exp(-s L_N),                     (2)

where (Q_N)_(n,m)=Q_h(e_n,e_m), (V_N)_(m,n)=v(e_m,e_n), and
L_N=P_N L P_N. No unbounded boundary adjoint is used in (1)-(2).

For example, for V_A the same finite sum is the boundary trace

  Tr[(M_h gamma K_(r/2) P_N)
     (P_N K_(r/2) D* M_A D K_s P_N gamma*)],          (3)

with the last factor interpreted on the finite-dimensional span. The
coefficient and adjoint conventions are those of the cited form note. More
conveniently, insert P_N on both bulk spectral indices in its three-factor
trace-class expression: the two Hilbert--Schmidt factors converge in
Hilbert--Schmidt norm when multiplied on the appropriate side by P_N,
because P_N converges strongly to the identity; the remaining short-time
factor stays bounded. The same argument applies to V_B and V_C. Thus, for
each fixed s,r>0, T_N tends to the trace-class boundary factorization in
the pairing note, independently of the choice of eigenbasis ordering whose
projections increase strongly to identity. In applying this argument, one
must keep P_N adjacent to its corresponding heat factor; it cannot be
commuted through a coefficient multiplier.

For s in (0,t/2], the Hilbert--Schmidt bounds are unchanged by the spectral
projections, and the short factor is bounded by the same s^(-3/4) or
s^(-1/4) majorant. The adjoint argument gives the corresponding bound on
the other half. Dominated convergence therefore passes the N limit through
integral_0^t T_N(s,t-s) ds at each fixed t>0, under those same assumptions.
The constants need not be uniform as t approaches zero.

On smooth eigenvectors the Green identity may be inserted term by term:
for the square-domain input e_m its principal boundary pairing vanishes and
the remaining term is Q_H, with H specified in
`finite-cut-first-vertex-green-identity.md`. This validates the finite-matrix
boundary contribution and its positive-time limit. It does not establish
convergence of the separate formal bulk trace, show that the original
Duhamel form trace has this spectral representation without further
hypotheses, or justify the physical cut and proper-time limits. No numerical
calculation or Lean certificate is claimed.

Remaining to-do list: prove the complete trace-transfer and uniform analytic
hypotheses, match the physical regulator and source, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.