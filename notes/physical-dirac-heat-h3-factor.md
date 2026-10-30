# Dirac heat-factor bound from the H3 volume diagonal

This derives the Dirac heat factor needed for the fixed-positive-time mixed
second form vertex from the volume diagonal in
`physical-contact-h3-literature-closure.md`. It assumes the actual finite-cut
partner identity and pointwise unitary partner map. It does not establish
ordered first-vertex derivative bounds, source matching, a short-time
subtraction, or Lean certification.

Fix one cut and smooth field approximant, and suppress their indices. Let D
be closed and densely defined, J a unitary involution acting fiberwise, and
assume D*=-JDJ as a closed-operator identity. Put Q=JD and L=D*D. Then Q is
skew-adjoint and L=-Q^2 on the natural composition domain, as established
in `paired-square-resolvent.md`. For K_s=exp(-sL), spectral calculus gives

    ||Q K_(s/2)|| <= C s^(-1/2),  s>0,                 (1)

with a universal C, independent of cut and field. The functional calculus
also gives, as bounded operators,

    D K_s = J K_(s/2) Q K_(s/2).                        (2)

Indeed Q commutes with K_(s/2), and the product Q K_s is bounded; the
natural-domain identities justify (2) without freezing a square domain.

Assume the uniform H3 estimate and local trace/fiber hypotheses of
`physical-contact-h3-literature-closure.md`. In particular, for each x,
point evaluation of K_(s/2) is a bounded map L2->E_x with norm at most
C(1+s^(-3/2)). Since J is fiberwise unitary, evaluation after J has the same
norm. Combining (1)-(2) yields

  ||evaluation_x D K_s||
     <= C s^(-1/2)(1+s^(-3/2)),                        (3)

uniformly in x, cut and field. Finite fiber rank turns (3) into the
pointwise Hilbert--Schmidt diagonal bound

  tr[(D K_s)(D K_s)*](x,x)
     <= C s^(-1)(1+s^(-3/2))^2.                         (4)

The equality between this diagonal and the squared Hilbert--Schmidt norm
of the evaluation map uses the heat-kernel representation. One may define
the diagonal through the Riesz representatives of evaluation first; smooth
finite-cut coefficients and the H3 estimate supply the stated kernel
representatives. The numerical C depends on the fixed fiber rank and chart
bounds but not the cut or approximation. The rough time power is only an
upper bound, not a claim of sharp heat asymptotics.

For any scalar a in physical L2, (4) gives

    ||M_a D K_s||_2^2 <= C_s ||a||_2^2.                 (5)

Together with the volume heat diagonal and the field-norm bounds, (5)
verifies the A_t and B_t inputs of `physical-mixed-second-vertex-trace.md`
at each fixed positive t for this stipulated family. Consequently that
note's local mixed second form-vertex trace and O_t(delta^3) outer-tail
estimate apply uniformly in the field cutoff and cut, provided the form
product rules and common geometry hypotheses there hold. The subscript t
matters: (4) is not a proper-time integrability estimate.

The argument requires J to act pointwise between the relevant fibers with
uniformly bounded norm, not just as an abstract Hilbert-space unitary.
The common-bundle model has this property, but the actual global physical
copy identification and the source's physical-half/time-reduced normalization
are still separate checks. No claim about arbitrary gradients or Hessians of
the heat kernel follows from a bound on D K_s alone; ordered vertices and
the full regulator remain open.

Remaining to-do list: verify the physical partner and cut prescription,
control ordered response terms and common-regulator limits, complete the
novelty audit and manuscript, and certify supported claims in Lean on GCP.