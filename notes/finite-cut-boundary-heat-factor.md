# A boundary heat-factor bound for the finite-cut Green term

This bounds a concrete time-ordered boundary operator arising from the Green
factor in `ordered-vertex-finite-cut-boundary-term.md`. It assumes the uniform
finite-cut graph and heat bounds of
`physical-finite-cut-uniform-heat-diagonal.md`. It does not yet identify every
boundary term in the physical ordered response, prove its common regulator,
or certify Lean.

Let H=L2(X_delta), B=L2(boundary X_delta), gamma:H1(X_delta)->B be the
boundary trace, D=D_(delta,e), L=D*D and K_s=exp(-sL). Assume the uniform
H1 graph estimate for the complementary adjoint domain and the uniform
multiplicative trace inequality on the physical boundary charts. For 0<s<=1,
D K_s maps H into Dom D*, so spectral calculus gives

    ||D K_s|| <= C s^(-1/2),  ||D* D K_s|| <= C s^(-1).

The graph estimate and trace inequality therefore imply

    ||gamma D K_s||_(H->B) <= C s^(-3/4).              (1)

The constant is independent of the moving cut and field cutoff under the
uniform hypotheses. The weaker trace bound for gamma K_s is also at most
C s^(-1/4), with a harmless additional constant on a fixed time interval.

Let h be a real scalar boundary coefficient and v a real bulk multiplier in
physical L2. For 0<s<=t/2 put r=t-s and consider the boundary-space operator

    B_(s,r)=M_sqrt(|h|) gamma D K_s M_v K_(r/2)
                         (gamma K_(r/2))* M_sqrt(|h|). (2)

A bounded sign/projection factor for h can be inserted without changing the
estimate. This is one precise heat factorization, not an assertion that the
whole ordered vertex equals (2). The long heat diagonal bounds give

    ||M_v K_(r/2)||_2 <= C_t ||v||_2,
    ||M_sqrt(|h|) gamma K_(r/2)||_2^2
        <= C_t ||h||_L1(boundary).                      (3)

The second identity uses the boundary restriction of the long heat kernel
and holds under the kernel/trace regularity assumptions in the finite-cut
heat note. The first is the corresponding volume diagonal estimate. Schatten
Holder, (1) and (3) yield

    ||B_(s,r)||_1 <= C_t s^(-3/4) ||v||_2
              ||h||_Linf(boundary)^(1/2)
              ||h||_L1(boundary)^(1/2).                (4)

For h=E_b^4 partial_n w on the radial physical cut u=delta, the cubic bounds
and boundary area give ||h||_infinity<=C delta^3 and ||h||_1<=C, uniformly
in the raw weighted cutoff. Thus

    integral_0^(t/2) ||B_(s,t-s)||_1 ds
       <= C_t delta^(3/2) ||v||_2.                     (5)

The integral converges at s=0 because 3/4<1. The other half of a time
ordering requires the corresponding swapped factorization and domain check.
For a short gamma K_s factor, the same argument gives an integrable
s^(-1/4) estimate. These are positive-time bounds with C_t potentially
singular as t->0.

To use (5) for the physical ordered Green term one must derive its exact
operator factorization and sign, handle all differential and density
vertices and the other endpoint, and verify the assumed uniform boundary
estimates for the chosen realization. Equation (5) itself does not prove a
curved subtraction, common-regulator interchange or determinant limit.
No numerical calculation is used.

Remaining to-do list: identify and bound every ordered boundary factor,
establish physical source and common-regulator matching, resolve prior art,
prepare the manuscript, and certify supported claims in Lean on GCP.