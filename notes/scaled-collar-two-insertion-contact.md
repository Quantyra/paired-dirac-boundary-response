# Shrinking-collar locality for a two-insertion contact

This carries the scaled compressed-heat bound through the contact-time
integration. It is conditional on the common-domain and uniform locality
hypotheses in `scaled-collar-duhamel-integral.md` and
`scaled-offdiagonal-schatten.md`. It does not identify the physical paired
model, control the fixed-insertion complement or prove a Lean theorem.

Let T(r), T0(r) be nonnegative self-adjoint heat semigroups on compact
models identified on the collar, and let K_ell contain the supports of
bounded scalar u_ell,v_ell. Assume for 0<r<=c ell² the compressed heat
comparison satisfies

    D_ell(r):=||1_K (T(r)-T0(r)) 1_K||_1
       <= C ell^(-2a) r^(1-2N) exp(-b ell²/r),           (1)

with constants independent of ell. This is the conclusion of the scaled
Duhamel estimate under its stated Hilbert--Schmidt assumptions. Define the
unweighted contact on each model by

    I_ell(t)=integral_0^t Tr[M_u T(t-s) M_v T(s)] ds,

and analogously I_ell,0. Compress each heat factor to K between the
insertions. The compressed heat operators have norm at most one. Telescoping
the two products and using trace duality gives, at 0<s<t,

    |integrand difference| <= ||u_ell||_infinity ||v_ell||_infinity
                                [D_ell(t-s)+D_ell(s)].   (2)

The trace-class products and cyclicity follow from the compact heat trace
bounds in the locality hypotheses; one does not integrate a formal kernel
before checking trace class. For t<=b ell², put q=b ell²/t>=1 and r=tx.
Splitting the exponential as in `scaled-collar-duhamel-integral.md` gives

    integral_0^t r^(1-2N) exp(-b ell²/r) dr
       <= C_N t^(2-2N) exp(-b ell²/(2t)),                (3)

where C_N=integral_0^1 x^(1-2N) exp(-1/(2x)) dx is finite for every fixed
N. Thus, for sufficiently small t/ell²,

 |I_ell(t)-I_ell,0(t)|
   <= C' ||u_ell||_infinity ||v_ell||_infinity
          ell^(-2a) t^(2-2N) exp(-b ell²/(2t)).          (4)

With the sufficient exponents a=2 and N=1/2+d/4 from the scaled Schatten
argument, and two cubic insertions of sup norm O(ell³), this becomes

    |I_ell(t)-I_ell,0(t)|
       <= C'' ell² t^(1-d/2) exp(-b ell²/(2t)).          (5)

For the two-dimensional orbit the polynomial time factor in (5) is one.
Along ell=t^p with 0<p<1/2 the bound tends to zero faster than any power,
even after multiplication by fixed polynomial thermal/angular weights and
proper-time powers. Those weights must themselves be justified for the
actual physical observable; this calculation does not supply them.

The contact includes neither metric/geometric vertices nor density and
coincidence terms outside its definition. The equal-collar and uniform
first-order estimates, physical boundary/domain matching, actual regulator,
and fixed-direction complement remain separate. The time-dependent
shrinking directions in (5) cannot replace the original fixed directions
without an additional argument. No numerical calculation is used.

Remaining to-do list: establish the physical locality hypotheses and complete
mixed response, resolve prior art, prepare the manuscript, and certify the
supported claims in Lean on GCP.