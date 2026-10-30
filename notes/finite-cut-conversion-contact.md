# Fixed-cut positive-time conversion contact

This establishes the fixed-cut contact integral appearing in the pinned
`current-variable-contact-conversion.md`, section 1, under an ordinary trace
and bounded insertions. Its physical-half interpretation and regulator
matching remain separate. It complements
`finite-cut-smeared-heat-first-variation.md`.

Let L>=0 on a Hilbert space H, K_s=exp(-sL), with K_s trace class for every
s>0. For bounded operators U,V and fixed t>0 define

  I_t(U,V)=integral_0^t Tr[U K_(t-s) V K_s] ds.          (1)

For 0<s<=t/2, Schatten ideal estimates give

  |Tr[U K_(t-s) V K_s]|
      <= ||U|| ||V|| ||K_(t/2)||_1;                     (2)

for t/2<=s<t use the other heat factor. Thus (1) is absolutely convergent,
with |I_t(U,V)|<=t ||U|| ||V|| ||K_(t/2)||_1. Cyclicity and s->t-s give
I_t(U,V)=I_t(V,U), including noncommuting bounded insertions.

For self-adjoint U, the diagonal contact has a definite sign:

  Tr[U K_(t-s) U K_s]
    = ||K_((t-s)/2) U K_(s/2)||_2^2 >= 0.             (3)

Both sides are finite because the indicated factors are Hilbert--Schmidt
for positive s and t-s. Hence I_t(U,U)>=0. This statement concerns the
mathematical contact integral; it does not assert the sign of the complete
physical response, whose geometric and other terms are separate.

On a fixed compact cut, let P_N be spectral projections of L increasing
strongly to the identity. The matrix contacts

  I_(t,N)(U,V)=integral_0^t Tr[P_N U P_N K_(t-s)
                                  P_N V P_N K_s P_N] ds (4)

converge to (1). At each interior s the trace-norm convergence follows by
strong convergence of P_N acting on trace-class factors; (2) supplies a
common integrable majorant. Thus the full positive-time contact can be kept
in the same finite spectral regulator as the first geometric variation.
This does not establish a common moving-cut or proper-time limit.

For the source's convergent massive tower Theta(t)=sum_n d_n exp(-t M_n^2)
with d_n>=0, M_n^2>=0, and termwise differentiation justified at t>0,
Theta'(t)=-sum_n d_n M_n^2 exp(-t M_n^2)<=0. Consequently the isolated
source contact 2 Theta'(t) I_t(U,U) is nonpositive under the trace convention
of (1). The complete source conversion additionally contains both geometric
variations, physical-half and time-reduced normalization, and all required
subtractions. These must be matched before interpreting any physical sign.
No finite angular truncation, numerical approximation, or Lean certificate
is claimed.

Remaining to-do list: identify the actual physical trace and common-regulator
limits, handle density and local-restoration terms, resolve prior art, prepare
the manuscript, and certify supported claims in Lean on GCP.