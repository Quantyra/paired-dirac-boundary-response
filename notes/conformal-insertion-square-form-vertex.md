# Conformal insertion in the first square-form vertex

This carries the finite-cut first-order identities of
`conformal-insertion-first-vertex-commutator.md` into the first form vertex
used in the mixed heat response. It does not assert a trace identity or a
cut-uniform bound.

Let D=D_beta on the common domain V, V_v its scalar-direction derivative,
and C_b=[D,b], as in the cited note. Use the inner-product convention linear
in the first slot and let b and v be real multipliers preserving V. Define

  q_v(x,y)=<V_v x,D y>+<D x,V_v y>,       x,y in V.           (1)

For x,y in V, the two ordered commutator identities and D(bx)=b Dx+C_b x
give the exact form identity

  q_v(bx,y) = q_(bv)(x,y)
     - (1/2)<v C_b x,D y>
     + <C_b x,V_v y>
     + (1/2)<D x,v C_b y>.                                   (2)

For example V_v(bx)=V_(bv)x-(v/2)C_b x, and
b V_v y=V_(bv)y+(v/2)C_b y. Self-adjointness of the real scalar multiplier
b moves it across the inner product in the second term. The identity for
q_v(x,by) is obtained by conjugating (2) and interchanging x,y, since the
real first form derivative is Hermitian. It need not equal (2) term by term.

On a fixed finite cut, assume v, C_v and C_b are bounded multipliers. The
correction in (2) is continuous in the graph norm: using
||V_v y||<=||v||_infinity||Dy||+(1/2)||C_v||_infinity||y|| gives

 |q_v(bx,y)-q_(bv)(x,y)|
  <= (1/2)||v C_b||_infinity ||x|| ||Dy||
     +||C_b||_infinity ||x|| [||v||_infinity||Dy||
                                  +(1/2)||C_v||_infinity||y||]
     +(1/2)||v C_b||_infinity ||Dx|| ||y||.                  (3)

This estimate requires the stated first-order products to lie in V and does
not require identifying the changing square operator domains. If b is the
conformal logarithm, (3) is a finite-cut form statement. Passing to the
unbounded limiting b needs additional weighted-domain and trace estimates;
the L2 tail of v C_b from the preceding note is useful input but cannot be
substituted for the operator-norm factors in (3) without a separate
Hilbert--Schmidt argument.

The mixed heat response also contains a second first-vertex ordering and
the mixed second form vertex. Equation (2) tracks one insertion into one
first form vertex; it does not authorize commuting b through an entire
semigroup or discarding other terms. Physical boundary traces, all contacts,
regulator limits and Lean certification remain open. No numerical
calculation is used.

Remaining to-do list: establish the complete weighted mixed trace and
physical regulator, resolve novelty, complete the manuscript, and certify
supported claims in Lean on GCP.
