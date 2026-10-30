# Zero-sector skew endpoint and its first two jets

This refines `product-conversion-zero-sector-thermal-gap.md` for the stipulated compact product model. It removes an unnecessary grading hypothesis from the zero-mass endpoint: the two partner squares are identical because the interpolating first-order operator is skew-adjoint. It does not identify the resulting functional with the source's complete LLL cocycle, state, or normalization.

Let Q be a closed skew-adjoint operator on its first-order domain V, with trace-class positive-time heat, and let b be a real bounded W1,infinity scalar with exp(+-r b/2) preserving V. For 0<=r<=1 set

  A_r(b)=exp(-r b/2) Q exp(-r b/2),
  P_r=A_r* A_r,  Pbar_r=A_r A_r*.

The bounded-congruence adjoint rule and Q*=-Q imply A_r*=-A_r with the same actual domain V. Consequently

  P_r=Pbar_r=-A_r²                                            (1)

as closed operators, including their composition domains. This equality needs no separate grading operator. Assume the product-frame thermal gap and compact form/heat hypotheses in the previous note. Then the proper-time derivative and upper endpoint are justified there; equation (1) makes the two endpoint traces equal for every bounded scalar insertion b, regardless of a grading commutator. For epsilon>0,

  J_epsilon(b):= Gamma_epsilon(1,b)-Gamma_epsilon(0,b)
      = integral_0^1 Tr[b exp(-epsilon P_r(b))] dr,            (2)
  Gamma_epsilon(r,b)=1/2 integral_epsilon^infinity Tr exp(-tP_r(b)) dt/t.

The scalar trace is the specified model trace; no per-exterior or angular multiplicity has been inserted here. With no thermal gap, an upper zero-mode projection or another infrared treatment must be retained instead of applying (2).

For fixed real directions u,v whose scalar multipliers preserve V, let L=Q*Q and T_epsilon(u;b)=Tr[u exp(-epsilon L_b)], with L_b the positive square of exp(-b/2)Q exp(-b/2). Positive-time form differentiability gives, at b=0,

  J'_epsilon(0)[u] = T_epsilon(u;0),
  J''_epsilon(0)[u,v]
     = [partial_v T_epsilon(u;0)+partial_u T_epsilon(v;0)]/2. (3)

Indeed P_r(b)=L_(r b), so its derivative at the seed in direction v is r times the geometric form derivative. Differentiating the explicit linear insertion contributes the two displayed orderings, and integral_0^1 r dr=1/2. Both first-vertex orderings are present. There is no Theta-prime mass contact in this M=0 model because the interpolating mass vertex is identically zero; this does not eliminate the geometric heat variation or other separately defined LLL contributions.

If a finite zero eigenspace has multiplicity q and the model orbit operator and normalization are identical on its sectors, its model contribution is q times (2)--(3). The source records q sphere zero modes but separately specifies an LLL Polyakov cocycle and state. Equality of this model quantity with that source block requires the precise sphere/orbit factorization, physical-half/time convention, state and common subtraction. It must not be inferred merely from multiplicity or used to add a second LLL term. No ultraviolet cutoff removal, physical stability, numerical result, or Lean certification is claimed.

Remaining to-do list: establish the actual thermal and source-domain hypotheses, match the LLL and massive observables and subtractions, complete the regulator and novelty audit, finish the manuscript, and certify supported claims in Lean on GCP.