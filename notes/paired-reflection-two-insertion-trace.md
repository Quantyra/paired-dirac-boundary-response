# Paired reflection with two scalar insertions

This extends the one-heat-kernel reflected spin-trace cancellation recorded in the frozen [stationary boundary-layer source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-massive-boundary-layer.md) to the two-heat-factor contact, under explicit operator and trace hypotheses. It does not prove the source's global domain or gluing hypotheses.

Let H be a doubled Hilbert space, J a unitary self-adjoint reflection involution, P=(1+J)/2, and L>=0 a self-adjoint operator whose domain and spectral calculus commute with J. Let Gamma be a second unitary self-adjoint involution with Gamma J Gamma=-J and Gamma L Gamma=L. Let U,V be bounded scalar insertions commuting with both J and Gamma. Assume, for 0<s<t, that

  T_s=U exp[-(t-s)L] V exp[-sL]

is trace class and that the integrated trace is well defined. Gamma commutes with every factor of T_s, so conjugation gives

 Tr(J T_s)=Tr(Gamma J T_s Gamma)=Tr(-J T_s)=0.           (1)

Consequently

  Tr(P T_s)=Tr(T_s)/2.                                    (2)

Since P commutes with every factor, the left side is the trace of the same product restricted to P H. This holds for each 0<s<t and therefore under the time integral whenever the assumed trace integrability holds. For a compact doubled realization with trace-class heat semigroup, the endpoint bound in `graded-odd-commutator-trace-class.md`, with the bounded operator V in place of the commutator, supplies that integrability. On a noncompact auxiliary double, a separate localized trace-class estimate is required; bounded U alone does not supply it.

If restriction from P H to the physical half is a unitary identification of L|_(P H) with the half-domain square, and U,V are even extensions of the physical scalar insertions, equation (2) yields

  I_half(t;u,v) = (1/2) I_double(t;u_even,v_even).        (3)

The unitary identification includes the usual square-root-of-two normalization of even-sector extension; it is not an extra division of the diagonal spin trace. Equation (3) is consistent with equality of half and double diagonal spin traces at a fixed positive y: the full double integrates both reflected halves, whereas the half trace integrates one.

For the source's local model J is the stated spin-copy reflection and Gamma is two-dimensional chirality. The source records the needed commutations and anticommutation for the separated square. Extending its one-kernel assertion to (3) additionally requires that the actual contact insertions are scalar and even, the physical square domain is unitarily the J-even sector, and localized products are trace class. These are hypotheses to verify for the actual bundle, angular decomposition and auxiliary caps, not consequences of a formal image formula. Any physical-half, copy, thermal-time or angular normalization in the source must be applied once at its own definition of trace.

The result does not identify the global bolt geometry with a double, bound gluing errors, prove the geometric variation or common-regulator limit, or certify Lean claims.

Remaining to-do list: verify the source-domain and localized trace hypotheses, control gluing and the full response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.