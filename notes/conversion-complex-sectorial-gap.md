# Complex sectorial mass gap for the conversion form

This supplies the complex neighborhood missing from
`conversion-mass-weighted-coercivity.md`, for the stipulated compact model.
It establishes an operator-norm heat decay, not a trace-norm moving-cut
estimate or an angular-summed response.

Use the common domain V, real b_delta, skew-adjoint Q_delta and uniform
hypotheses of the mass-weighted note. Let u_delta,w_delta be real scalar
fields whose W1,infinity norms, domain multiplier norms and commutator
bounds with Q_delta are uniform. For z=(z1,z2) put
b_delta,z=b_delta+z1 u_delta+z2 w_delta and define A_delta,r,z and the
holomorphic form q_delta,r,z as in
`conversion-moving-cut-form-fixed-mass.md`. Assume M>=1 and r in [0,1].

For |z1|+|z2|<=1, exponential product estimates in W1,infinity and the
first-order commutator rule give, uniformly in delta, r and M,

  ||(A_delta,r,z-A_delta,r,0)v||
        <= C (|z1|+|z2|)(||v||_V+M||v||).                    (1)

The same holds with z replaced by its complex conjugate. The real-field
coercivity result gives ||v||_V+M||v||<=C_*||A_delta,r,0 v||. Telescoping
the two factors in the complex form therefore yields

  |q_delta,r,z(v,h)-q_delta,r,0(v,h)|
     <= C' (|z1|+|z2|) ||A_delta,r,0 v|| ||A_delta,r,0 h||.  (2)

In particular, choose a radius rho>0, independent of delta, r and M, so
that C' rho<=1/2. For |z1|+|z2|<=rho,

  Re q_delta,r,z(v,v) >= (1/2)||A_delta,r,0 v||^2
                         >= c (||v||_V^2+M^2||v||^2),         (3)
  |Im q_delta,r,z(v,v)| <= C' rho ||A_delta,r,0 v||^2
                          <= 2 C' rho Re q_delta,r,z(v,v).      (4)

Thus the forms are closed and uniformly sectorial on V: the real part is
uniformly equivalent to the real positive closed form, and the imaginary
part has the displayed sector bound. The comparison is form-theoretic and
does not identify the operator square domains. The associated m-sectorial
operator L_delta,r,z satisfies Re <L v,v> >= c M^2||v||^2 on its domain.
Consequently its analytic semigroup obeys

  ||exp(-t L_delta,r,z)||_(H->H) <= exp(-c M^2 t),  t>=0.      (5)

One proof of (5) applies the contraction semigroup theorem to the
m-accretive operator L_delta,r,z-c M^2, then restores the scalar
exponential. The constants are uniform only under the explicitly stated
uniform graph, multiplier and commutator hypotheses. For each fixed M the
forms and semigroups are holomorphic in z by the common-domain holomorphic
form theorem.

This is a spectral estimate in the compact mathematical model, not a
physical admission margin. It does not establish a trace-class smoothing
bound with uniform mass constants, a moving-cut semigroup difference, the
massive tower sum, or the M=0 sector. Nor does it identify the physical
boundary and normalization, prove a regulated curved remainder, or provide
Lean certification. Those are independent steps.

Remaining to-do list: obtain mass-uniform trace and cut-difference bounds,
sum the angular modes with the zero sector retained, match the physical
conversion and curved response, complete the novelty audit and manuscript,
and certify supported claims in Lean on GCP.
