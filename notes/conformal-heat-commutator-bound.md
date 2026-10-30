# Heat commutator of a bounded scalar insertion

This supplies a finite-cut operator estimate for moving the conformal
insertion between heat factors in the mixed response. It does not identify
the full weighted trace or remove the cut and regulator.

Let D be closed and densely defined on H, L=D*D with its nonnegative
self-adjoint composition domain, K_t=exp(-tL), and q(x,y)=<Dx,Dy> on
V=Dom D. Let b be a bounded real scalar multiplier preserving V, and suppose

  D(bx)=b Dx+C_b x,       x in V,   ||C_b||<=c.               (1)

Use an inner product linear in the first argument. For x,y in V,

  q(x,by)-q(bx,y)=<Dx,C_b y>-<C_b x,Dy>.                    (2)

This identity is form-level and requires no assumption that b preserves
the operator domain Dom L.

For x,y in H and t>0, consider
F(s)=<K_(t-s)x,b K_s y> for 0<s<t. Heat smoothing places both vectors in
V, and differentiating away from the endpoints gives the form expression

  F'(s)=<D K_(t-s)x,C_b K_s y>
          -<C_b K_(t-s)x,D K_s y>.                            (3)

The endpoint identity follows by integrating over [delta,t-delta] and
letting delta decrease to zero; strong heat continuity and bounded b give
the endpoints. The integrand has an integrable majorant because spectral
calculus yields

  ||D K_s||^2=||L^(1/2) exp(-sL)||^2 <= (2 e s)^(-1).        (4)

Combining (3)--(4) gives the explicit operator-norm bound

  ||b K_t-K_t b|| <= [4/sqrt(2 e)] c sqrt(t).                (5)

The sign of the commutator depends on the slot convention; the norm bound
is unchanged. This estimate does not use ||b|| in its constant, although
boundedness of b and the domain-preservation hypothesis are used in its
proof. For a family of finite cuts, (5) is uniform if c and the stated
form identities are uniform; it does not itself prove the unbounded-b limit.

For b=log(b_sphere/r) on the fixed RN exterior, the local product rule of
`conformal-insertion-first-vertex-commutator.md` and the fixed-seed bound
on |db|_g provide a cut-independent candidate c, provided the base
congruence multiplier and domains have the stated uniform bounds. Equation
(5) then quantifies the extra term in moving b through one heat factor; it
cannot be dropped even though it vanishes as sqrt(t) in operator norm.
To apply it to the mixed trace, the adjacent vertex factors must be in
compatible Schatten classes with an integrable time-simplex majorant. An
operator-norm commutator bound by itself is not a trace or P1-D estimate.
The physical boundary, both partner squares, counterterms and common
regulator remain to be matched. No numerical or Lean certification is claimed.

Remaining to-do list: combine (5) with the full weighted mixed vertices and
physical Schatten estimates, establish the regulator, resolve novelty,
complete the manuscript, and certify supported claims in Lean on GCP.
