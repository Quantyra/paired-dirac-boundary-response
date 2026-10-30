# Zero-sector positive-cut conversion under a thermal gap

This supplements `product-conversion-proper-time-differentiation.md` for the finite angular zero sector of the stipulated compact product model. It does not identify that model contribution with the source's separately allocated LLL cocycle or its state and normalization.

## Transfer of the product-orbit gap

Let D be the closed paired product-orbit operator with the closed partner identity D*=-JDJ and Q=JD skew-adjoint. Suppose its antiperiodic thermal decomposition is complete, reduces the relevant domains and squares, and satisfies the fixed-seed symmetric-lapse hypotheses of `euclidean-canonical-unitary-half-density.md` on every thermal mode. If the lapse obeys f>=f0>0 and the thermal period is T, that note gives

  ||D f|| >= kappa ||f||,  kappa=f0 pi/T>0,                (1)

on the declared domain, provided the mode estimates sum on that domain. Multiplication by the unitary gamma_tau and the radial half-density maps does not change the norm. Equation (1) is a conditional product-frame operator bound; it does not apply to the physical four-dimensional congruence without a separate argument. The required thermal-mode domains, bolt regularity and spectral decomposition are hypotheses, not consequences of the lower bound for f alone.

Because J is unitary, ||Q f||=||D f||, so Q has the same bound. Skew-adjointness gives the same bound for Q*. Let b be real with ||b||_infinity<=B, E_r=exp(-r b/2), and suppose E_r and its inverse preserve Dom Q. For the zero-mass interpolation A_r=E_r Q E_r,

  ||A_r f|| >= kappa exp(-r B)||f|| >= kappa exp(-B)||f||.  (2)

Its adjoint is -A_r on the same domain, so both composition squares P_r=A_r*A_r and Pbar_r=A_r A_r* have the uniform lower bound h=kappa² exp(-2B)>0. This uses only the declared product-frame gap and bounded congruence. No positive angular mass is being inserted into the zero sector.

## Positive cutoff and the complete finite zero sector

Assume the uniform H2/heat hypotheses of `product-h2-uniform-bounded-congruence.md` and the compact form-differentiability and trace identities of `product-conversion-form-differentiability.md`. For any fixed epsilon>0, the real heat trace and its r derivative then satisfy an integrable large-time bound: split exp[-(t/4)P_r] at s0=min(epsilon/8,1) and use (2) to obtain

  Tr exp[-(t/4)P_r] <= C_(B,epsilon) exp(-h t/8),  t>=epsilon.

The r-derivative estimate (3) of `product-conversion-proper-time-differentiation.md` is therefore integrable against dt/t, uniformly on r in [0,1]. The same holds for the partner square, either by skew-adjointness or the closed partner transfer in `product-thermal-gap-partner-transfer.md` under its hypotheses. Thus, for this massless mode at fixed positive cutoff, the positive-cut endpoint identity follows exactly as in that note. A finite number of zero modes may be summed with their actual multiplicity; no angular mass gap or infinite-mode truncation is involved.

The historical source treats the LLL block separately. Even if its recorded sphere multiplicity q matches this finite model multiplicity, the model endpoint identity by itself does not show that it equals the source's LLL Polyakov cocycle, state, per-exterior normalization, or subtraction. The actual global spin/copy maps, regular bolt domains, thermal mode restriction and boundary at conformal infinity remain to be verified. No small-time limit, physical existence or stability, numerical result, or Lean certification is claimed.

Remaining to-do list: match the actual LLL and massive observables, physical boundary and normalization; prove the common-regulator limit; resolve novelty; finish the manuscript; and certify supported claims in Lean on GCP.