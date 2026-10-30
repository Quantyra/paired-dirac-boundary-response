# Two-insertion contact for the auxiliary lapse comparator

This extends `lapse-comparator-trace-bound.md` to the complete contact-time
integral. It concerns the two compact auxiliary operators on the same
Hilbert space and bounded scalar insertions. It is not an identification of
the physical response, a regulator theorem or a Lean certificate.

Let T_ell(r)=exp(-rL_ell), T0(r)=exp(-rL0), and assume the uniform estimates
proved in the cited comparator notes for 0<r<=t0:

    ||T_ell(r)-T0(r)|| <= C ell²,
    ||T_ell(r)-T0(r)||_1 <= C ell² r^(-d/2),
    ||T_j(r)||_1 <= C r^(-d/2),    ||T_j(r)|| <= 1.      (1)

The constants may be enlarged to cover both j=ell,0. Define

    I_j(t;u,v)=integral_0^t Tr[M_u T_j(t-s) M_v T_j(s)] ds.

For positive intermediate times the products are trace class. To obtain a
uniform bound through both endpoints, put r=t-s and expand the difference
into

    M_u (T_ell(r)-T0(r)) M_v T_ell(s)
      + M_u T0(r) M_v (T_ell(s)-T0(s)).                  (2)

At least one of r,s is at least t/2. In each term, use the trace norm of
the heat factor at that longer time if it is an unchanged semigroup; if it
is the difference, use the trace-norm difference bound at that longer time.
Use operator norms for the remaining heat factor and both multipliers.
Thus both terms in (2) together are bounded independently of s by

    C ell² ||u||_infinity ||v||_infinity t^(-d/2).         (3)

Integrating the entire interval gives

    |I_ell(t;u,v)-I_0(t;u,v)|
       <= C ell² ||u||_infinity ||v||_infinity
                              t^(1-d/2).                   (4)

This uses no improper integral of r^(-d/2) at an endpoint: whichever heat
time is short is handled in operator norm. For cubic-localized directions
with ||u_ell||_infinity,||v_ell||_infinity<=K ell³,

    |I_ell(t)-I_0(t)| <= C K² ell^8 t^(1-d/2).           (5)

In the two-dimensional orbit, (5) is O(ell^8). If a separately justified
weight is dt/t² and ell=t^p, this upper bound is integrable near zero for
p>1/8, compatible with the locality condition p<1/2. This statement uses
shrinking directions and does not justify changing the fixed physical
insertions with t. For fixed bounded insertions, the analogous sufficient
condition is p>d/4, which conflicts with p<1/2 when d>=2; failure of that
bound does not establish divergence of the response.

Combining (5) with the physical-to-auxiliary contact bound in
`scaled-collar-two-insertion-contact.md` is conditional on all of that
note's domain, matching and uniform locality hypotheses. The contact here
has no additional angular factor; the actual normalization, geometric and
coincidence vertices, subtractions, complement and common regulator remain
separate. No numerical calculation is used.

Remaining to-do list: verify physical locality and domains, control all
mixed vertices and the fixed complement, resolve novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.