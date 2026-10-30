# Long-middle-interval heat commutator correction

This combines `conformal-heat-commutator-bound.md` with the ordered bulk
Hilbert--Schmidt factorization in `finite-cut-ordered-bulk-endpoints.md`.
It controls one explicitly identified part of the mixed heat simplex; it
does not control the complementary regions, boundary forms or the full
regulated response.

Let L>=0, K_s=exp(-sL), and let b satisfy the bounded scalar/Dirac
commutator hypotheses of `conformal-heat-commutator-bound.md`, with
||[D,b]||<=c. Let V_u,V_w be the Hermitian bulk form expressions on a
smooth fixed cut, and assume the form-trace/Galerkin identification in the
ordered-bulk note. Fix t>0 and suppose that for t/6<=p<=t/2,

  T_v(p)=V_v K_p is Hilbert--Schmidt,
  ||T_v(p)||_2<=C_t N(v),       v=u,w.                         (1)

The interval [t/6,t/2] is explicitly required here; the cited endpoint note
states the corresponding fixed-time estimate on [t/4,t/2], so extending its
constant to this compact positive-time interval must be checked from its
heat-smoothing hypotheses. No uniform small-t bound on C_t is assumed.

For a,b_time,c_time>=0 with a+b_time+c_time=t and b_time>=t/3, define the
commutator correction, initially for finite matrices, by

  E(a,b_time,c_time)
    =Tr[K_c_time (b K_a-K_a b) V_u K_b_time V_w].              (2)

This is the correction arising when the insertion b is moved across K_a in
the indicated ordered term. It is only one correction, with the displayed
operator ordering. Split K_b_time=K_(b_time/2) K_(b_time/2) and use the
Hermitian bulk form identity to write

  E=Tr[K_c_time (b K_a-K_a b)
            T_u(b_time/2) T_w(b_time/2)*].                     (3)

For the infinite-dimensional form trace, (3) is the definition after the
same Galerkin/trace convergence and boundary separation used in the cited
bulk note; no self-adjoint realization of the formal V_v expression is
assumed. By Schatten Holder and the heat commutator bound,

  |E| <= [4c/sqrt(2e)] sqrt(a) C_t² N(u)N(w).                 (4)

The triangular region b_time>=t/3 has area 2t²/9 and a<=t, hence

  integral_(b_time>=t/3) |E| da dc_time
     <= [8c/(9 sqrt(2e))] C_t² N(u)N(w) t^(5/2).             (5)

The triangle is parametrized by a,c_time with
b_time=t-a-c_time; there is no extra simplex factorial. The other ordering
u<->w has the same bound. If bounded truncations b_n satisfy the hypotheses
of `conformal-heat-commutator-truncation.md`, then for fixed L,t and fixed
Hilbert--Schmidt vertex factors their commutator corrections converge in
trace norm pointwise; (4) supplies a fixed-t simplex majorant. This limit is
not automatically uniform under a changing cut or field approximation.

Equation (5) covers only the sector in which the heat interval between these
two vertices is long. The complementary simplex sectors, all other
insertion moves, the mixed second vertex, boundary terms and partner traces
must still be handled. C_t may diverge as t decreases, so (5) is not a
small-time P1-D remainder or a proper-time convergence proof. Physical
boundary identification, regulator and Lean certification remain open.
No numerical calculation is used.

Remaining to-do list: control the remaining weighted mixed-response sectors,
match the physical boundary and regulator, resolve novelty, complete the
manuscript, and certify supported claims in Lean on GCP.
