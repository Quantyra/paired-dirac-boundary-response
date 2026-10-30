# An abstract obstruction in an outer heat-simplex sector

The long-middle estimate in `conformal-commutator-long-middle-simplex.md`
cannot be extended to the complementary sectors using only its stated
operator-norm commutator bound and long-heat Hilbert--Schmidt vertex bounds.
The following finite-dimensional example isolates the missing implication.
It is not a counterexample to the physical response: its vertices are not
claimed to arise from the physical local differential expressions.

Set t=1 and work on C^2. For an integer n>=6, take

  D_n=diag(0,sqrt(n)),  L_n=D_n* D_n=diag(0,n),
  K_s=diag(1,exp(-ns)),  B_n=(1/sqrt(n)) [[0,1],[1,0]],
  V_n=diag(0,exp(n/6)),  W=[[0,1],[1,0]].

All operators are bounded and their domains are the whole space. B_n, V_n
and W are Hermitian, ||B_n||<=1, and ||[D_n,B_n]||=1. Thus the
assumptions of the abstract heat commutator estimate hold uniformly in n.
For every p in [1/6,1/2],

  ||V_n K_p||_2=exp(n(1/6-p))<=1,
  ||W K_p||_2=(1+exp(-2np))^(1/2)<=sqrt(2).

These are precisely uniform long-heat Hilbert--Schmidt bounds of the type
used for the two vertices in the long-middle argument. For a+b+c=1,
direct multiplication instead gives

  E_n(a,b,c)=Tr[K_c (B_n K_a-K_a B_n) V_n K_b W]
             =-exp(n/6-nb) (1-exp(-na))/sqrt(n).             (1)

In particular, with a=1/3, b=1/n and c=2/3-1/n, the magnitude of
E_n tends to infinity. The long interval here is c, not the interval b
between the two vertices. There is no conflict with the operator commutator
estimate: the short middle heat leaves the high-energy part of V_n exposed.

The obstruction is not restricted to a single point of the simplex. On the
rectangle 1/3<=a<=5/12 and 0<=b<=1/n, c=1-a-b is positive and, for
large n, c>=1/2-1/n. Equation (1) has one sign there, and

  integral_rectangle |E_n| da db
    >= exp(n/6-1) (1-exp(-n/3))/(12 n^(3/2)) -> infinity.    (2)

Consequently neither a uniform pointwise bound nor a uniform integrated
outer-sector bound follows solely from the displayed abstract hypotheses.
The long-middle proof remains valid in its own sector. To advance the physical
argument one needs an additional estimate that connects the commutator to
the *localized* vertex, for example an appropriately uniform localized
heat-commutator Schatten bound, together with its boundary and regulator
hypotheses. The example does not decide whether such an estimate holds for
the RN geometry and cubic directions, nor whether cancellation in the full
paired response changes the result. No numerical calculation or Lean
certification is used.

Remaining to-do list: prove the physical localized commutator and boundary
estimates, establish the common regulator, finish the manuscript and novelty
audit, and certify supported claims in Lean on GCP.
