# Localized contact traces on a noncompact double

This supplies a sufficient trace-class construction for the noncompact auxiliary double in `paired-reflection-two-insertion-trace.md`. It assumes a Gaussian heat-kernel bound and does not prove that bound for the source's actual rough operator or identify its global bolt.

Let L>=0 be self-adjoint on a rank-r bundle over a complete d-dimensional manifold. Assume its heat kernel K_a(x,z) exists for 0<a<=t0 and, for a fixed C,c>0,

  |K_a(x,z)|_op <= C a^(-d/2) exp[-dist(x,z)^2/(c a)].  (1)

Assume also the Gaussian convolution estimate

  integral exp[-dist(x,z)^2/(c a)-dist(x,z)^2/(c b)] dz
       <= C0 (ab/(a+b))^(d/2),  0<a,b<=t0.                 (2)

These are explicit geometric and kernel hypotheses. Let U be a compactly supported bounded real scalar multiplier, V a bounded scalar multiplier, and define A=|U|^(1/2), E=sgn(U). For a=t-s,b=s>0, the localized sandwiched operator

  S_s=A K_a V K_b E A                                      (3)

is trace class. Indeed A K_(a/2) and K_(b/2) E A are Hilbert-Schmidt: integrating the diagonal of K_a and K_b on the compact support of U, or using (1)--(2), gives finite HS norms. Between them are bounded heat factors and V. This factorization proves trace class for each interior s without assuming the global heat semigroup is trace class.

Moreover, the kernel formula and (1)--(2) give the endpoint-uniform bound

 |Tr S_s| <= C1 ||U||_1 ||V||_infinity (a+b)^(-d/2),     (4)

where C1 depends on r,C,c,C0 and the measure convention. To see this, use |tr(K_a(x,z) V(z) K_b(z,x))| <= r ||V|| |K_a(x,z)|_op |K_b(z,x)|_op and integrate z; the factors a^(-d/2)b^(-d/2) cancel against (ab/(a+b))^(d/2). Thus the trace is absolutely integrable in s on [0,t], although individual Hilbert-Schmidt bounds need not be uniform at either endpoint. The same bound holds with a unitary bundle involution inserted into the fiber trace.

Suppose reflection J and grading Gamma satisfy the commutations and anticommutation in the preceding note and commute with A,E,V. Then S_s commutes with Gamma, so Tr(J S_s)=0 and Tr(P S_s)=Tr(S_s)/2. Under a unitary identification of the J-even sector with the half-domain realization, this proves the half/double identity for the sandwiched localized contact. If the unsandwiched product U K_a V K_b is independently trace class, cyclicity identifies its trace with Tr S_s. Without that additional fact, (3) defines the localized trace and no claim is made that the unsandwiched product is trace class.

For the cylindrical auxiliary geometry, verifying (1)--(2) uniformly for the reflected rough operator, including spin and thermal data, remains a required source-specific step. This lemma does not establish a bound on the spatial gluing error, the geometric vertex, the angular sum or the renormalized response. No Lean certification is claimed.

Remaining to-do list: establish the needed source kernel estimates and domain identification, control gluing and the full response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.