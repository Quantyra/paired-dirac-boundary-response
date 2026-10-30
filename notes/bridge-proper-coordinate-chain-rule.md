# Fixed-time chain rule for the proper-coordinate bridge

This proves the auxiliary bridge chain rule assumed in
`moving-insertion-bridge-remainder.md`, under explicit fixed-coordinate
regularity. It does not prove the small-time complex BV estimate or identify
the auxiliary bridge with the physical paired trace; no Lean certificate is
claimed.

On a fixed periodic coordinate interval let f be real W^{2,infinity},
0<m<=f<=M, and let u be W^{1,infinity}. For h²=t>0 define

 J(f,u;h)=integral u(y) E[H(A_h(y),B_h(y))]dy,
 H(A,B)=A^(-1/2) exp[t B²/(4A)],
 A_h=integral f(y+h xi_s)^2 ds,
 B_h=integral f'(y+h xi_s) ds.

Consider real perturbations g in W^{1,infinity} and p in L1 on the circle.
For sufficiently small real s, f+s g remains positive. Uniform bounds on
f,g and their first derivatives put A and B in a compact subset with
A>=m²/4. Taylor's theorem for the smooth finite-dimensional function H,
combined with the exact quadratic expression for A, gives a uniform
O(s² ||g||_{W¹,∞}²) remainder in the coefficient direction. Since J is
linear in u, it follows that J is Fréchet differentiable in f at fixed h,
with

 D_f J[g]=integral u E[H(A,B) {
    -delta A/(2A) + t B delta B/(2A)
                         -t B² delta A/(4A²)}]dy,          (1)
 delta A=2 integral f(y+h xi_s)g(y+h xi_s)ds,
 delta B=integral g'(y+h xi_s)ds.

The insertion derivative is D_u J[p]=J(f,p;h). The formulas follow by
dominated convergence; the lower bound on A and the boundedness of B give
an integrable majorant, independent of the bridge path.

For the radial Weyl family in `weyl-proper-bridge-direction.md`, let
Y_s(y)=integral_0^y exp(s v(x))dx and y_s its inverse on a common collar.
If f is W^{2,infinity}, v is W^{2,infinity}, and the fixed extensions are
chosen so that the transformations and supports are compatible, the
implicit formula y_s'(Y)=exp[-s v(y_s(Y))] and the chain rule show

 (f_s-f)/s -> g=-v f-W f' in W^{1,infinity},
 (u_s-u)/s -> p=-W u' in L1,  W(y)=integral_0^y v(x)dx.   (2)

For the first convergence, expand f_s(Y)=exp[-s v(y_s(Y))]f(y_s(Y));
its Y derivative is exp[-2s v(y_s)](f'-s v'f)(y_s). Uniform continuity
of f' and v, together with bounded f'', gives the derivative limit. For
u_s=u(y_s), the difference quotient converges in L1 by the Sobolev
translation theorem and uniform boundedness of the coordinate Jacobian;
if u' is continuous, convergence is uniform. Compatible fixed cutoff
extensions are needed to make this a statement on the entire circle.

Combining (1)--(2) proves the fixed-positive-time chain rule

 d/ds J(f_s,u_s;h)|_0 = D_f J[g]+J(f,p;h).                (3)

The first term equals the z derivative along f+z g of the holomorphic
bridge integrand in the complex route, whenever that complex extension is
valid. This comparison uses only the first tangent, not a complex inverse
coordinate map. It does not establish a uniform derivative of the local
Taylor remainder, thermal image representation for the physical operator,
or the paired boundary and regulator matching. No numerical computation is
used.

Remaining to-do list: verify the complex BV remainder and physical unitary
mapping, complete thermal/radial and regulator estimates, decide novelty,
prepare the manuscript, and certify supported results in Lean on GCP.
