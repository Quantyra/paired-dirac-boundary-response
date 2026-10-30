# Trace of the physical mixed second form vertex

This gives a conditional positive-time trace estimate for the mixed second
square vertex in `mixed-heat-vertex-inventory.md`, using the physical decay
in `physical-cubic-bilinear-integrability.md`. It does not control the two
ordered first-vertex terms, establish the physical heat-kernel bounds below,
or prove a regulator limit or Lean certificate.

Let D_b be a closed first-order Dirac realization on the complete physical
Hilbert space, with the scalar product rule and real bounded multiplier b.
Let L_b=D_b*D_b and K_s=exp(-s L_b). Take real directions u,w with u,w,
du,dw in physical L2 intersect L-infinity, and assume the displayed
first-order and mixed derivatives exist on a common form core. Put
c_b(dv)=E_b^2 c(dv). The product rule gives

    D_v=-v D_b-(1/2)c_b(dv),
    D_uw=uw D_b+(1/2)[u c_b(dw)+w c_b(du)].            (1)

The mixed form vertex is

 q_uw(p,q)=<D_uw p,D_b q>+<D_b p,D_uw q>
              +<D_u p,D_w q>+<D_w p,D_u q>.            (2)

For fixed t>0 suppose the positive-time heat kernels obey the uniform
diagonal estimates

    sup_x tr[K_t(x,x)] <= A_t,
    sup_x tr[(D_b K_(t/2))(D_b K_(t/2))*](x,x) <= B_t, (3)

with finite A_t,B_t, and suppose the indicated kernels and form-core traces
admit the standard Hilbert--Schmidt identities. These are explicit analytic
hypotheses; bounded local coefficients or L2 decay alone are not a proof of
(3). For a scalar weight a in L2 they imply

    ||M_a K_(t/2)||_2^2 <= A_t ||a||_2^2,
    ||M_a D_b K_(t/2)||_2^2 <= B_t ||a||_2^2.         (4)

For matrix Clifford weights, apply the same estimate with the fixed fiber
norm bound. The convention for K_t in (3) follows from K_(t/2)^2=K_t.

Use an orthonormal basis {e_j} and define the form trace as
sum_j q_uw(K_(t/2)e_j,K_(t/2)e_j). The D_u,D_w pair is absolutely summable
by Hilbert--Schmidt Cauchy--Schwarz and (4). For D_uw, split each local
coefficient into square-root weights: for example uw=sgn(uw)sqrt(|uw|)
sqrt(|uw|), and use two weighted D_b K_(t/2) factors. The u dw and w du
terms use one weighted K_(t/2) and one weighted D_b K_(t/2) factor. The
coefficients |uw|, |u||dw| and |w||du| are L1 by Cauchy--Schwarz. This
proves absolute convergence and yields

 |Tr_form(q_uw K_t)| <= C_t
   (||u||_2+||du||_2)(||w||_2+||dw||_2),               (5)

where C_t depends on A_t,B_t, bounded b and the Clifford convention. If
u,w obey the cubic collar bounds, the full right side is finite on the fixed
physical geometry with controlled interior extensions.

Moreover the contribution to this form trace with its local coefficient
restricted to 0<u_coord<delta is O_t(delta^3), uniformly for the recorded
raw cutoff family: each such coefficient is a product of two terms of size
O(u_coord^3), and its physical L1 tail is O(delta^3). This statement applies
to the *local second form vertex* before any nonlocal splitting. It does not
say that the full mixed response has the same tail.

Under an independently justified form-Duhamel differentiation, the single
mixed-vertex contribution to the heat trace is -t times this form trace.
That differentiation, the two ordered q_u/q_w terms, t-dependence of A_t and
B_t, finite-cut uniformity, and physical regulator subtraction remain to be
proved. No numerical calculation is used.

Remaining to-do list: establish the physical heat-diagonal hypotheses,
control the ordered vertices and common regulator, match boundary/source
normalization, resolve prior art, prepare the manuscript, and certify
supported claims in Lean on GCP.