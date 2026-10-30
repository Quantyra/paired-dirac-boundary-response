# Flat zero-sector finite term and the recorded LLL cocycle

This is a conditional normalization comparison between the zero-mass model and the source's stated LLL Hessian. It does not identify the physical LLL state, prove the curved cocycle, or authorize adding an extra zero-mode term to the source ledger.

## Flat model and the half-line factor

Use the rank-two per-exterior flat conversion convention and even localized H3 profiles u,v in `flat-conversion-angular-local-terms.md`. For z zero modes, its equation (7) gives the zero-sector addition to the positive-cut mixed conversion:

  z U0/(2 pi epsilon) - z U1/(24 pi) + O(epsilon),
  Uj=integral_R u^(j)(y) v^(j)(y) dy.                        (1)

This is the complete-frequency flat-model result with the specified Fourier and trace normalization. Set z=q, and suppose u,v are even extensions of scalar directions u_+,v_+ on y>=0. Then

  U1=2 integral_0^infinity u_+'(y) v_+'(y) dy.                (2)

After subtracting the model's divergent U0/epsilon term, the finite model mixed term is therefore

  -q/(12 pi) integral_0^infinity u_+' v_+' dy.                (3)

For stationary directions on a flat cylinder of period beta, the disk/orbit gradient pairing divided by beta is the right-hand integral in (3). The periodic thermal image corrections must be shown not to change the local finite coefficient; `fixed-period-flat-boundary-coefficients.md` supplies the corresponding conditional image comparison for its stipulated model. The distinction between the full-line and physical-half integral accounts for the apparent factor two between the coefficient in (1) and the half-line coefficient in (3); it is not an additional angular degeneracy factor.

## Comparison with the source statement

The frozen [seed form source](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/stationary-seed-quantum-form.md), section 5, records the LLL Polyakov cocycle Hessian

  Gamma_LLL''[T,T]= -q/(12 pi) integral_disk |grad T|².

Polarization gives -q/(12 pi) integral_disk grad u.grad v for real tangent directions. Thus (3) agrees with the time-reduced flat version of that coefficient **if** the model scalar b is the same conformal tangent T, the overall action sign and per-exterior/time conventions agree, the q zero modes are allocated once, and the same local subtraction is used. The source's separate [zero-mode allocation](source-angular-zero-mode-allocation.md) must be retained: this comparison is not a license to add (3) on top of an LLL cocycle already included in the action.

The comparison is a check of one local flat finite coefficient, not an identification of the full LLL functional. The actual disk metric, boundary and bolt domains, HH state, any state-dependent terms, conformal field map, normalization and common regulator still need matching. The positive-cut thermal-gap model in `product-zero-sector-skew-endpoint-jets.md` supplies a compatible endpoint formula only under its own domain and gap assumptions. Neither result proves the curved mixed response, ultraviolet remainder, existence or stability. No numerical or Lean certification is claimed.

Remaining to-do list: verify the physical LLL and massive trace conventions and common subtraction, complete the regulator and novelty audit, finish the manuscript, and certify supported claims in Lean on GCP.