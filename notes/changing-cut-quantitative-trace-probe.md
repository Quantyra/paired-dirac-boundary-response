# Quantitative trace probe for the smoothed cut resolvent

This combines `changing-cut-full-space-smoothed-resolvent.md` with the
Hilbert--Schmidt probing idea in `changing-cut-trace-probes.md`. It concerns
the separated half-line model and an explicit auxiliary probe, not the
unweighted physical trace or a Lean certificate.

On the common full Hilbert space H=H_rad tensor H_ang, put

    D_ell(z)=J_ell* R_ell(z) J_ell-R(z).

Assume the separated model and its angular heat factor as in the
full-space note, so D_ell(z) commutes with the angular operator A. For fixed
nonreal z and fixed coefficient bound, that note gives, for 0<tau<=1,

    ||D_ell(z) exp(-tau A²/2)|| <= C_z sqrt(ell) tau^(-3/4). (1)

Let S_rad be a fixed Hilbert--Schmidt operator on H_rad, including any finite
radial spin factor, and define the explicit probe

    S_tau=S_rad tensor exp(-tau A²/2).

Assume Tr exp(-s A²)<=H s^(-m/2) for 0<s<=1. The source's magnetic sphere
mode count supplies this for m=2 under its stated conventions. The tensor
product S_tau is Hilbert--Schmidt, and S_tau* D_ell(z) S_tau is trace class.
Because D_ell commutes with A, split both probe heat factors in half:

    S_tau* D_ell S_tau
      =(S_rad* tensor exp(-tau A²/4))
       [D_ell exp(-tau A²/2)]
       (S_rad tensor exp(-tau A²/4)).                      (2)

The two outer factors are Hilbert--Schmidt, with squared norm
||S_rad||_2² Tr exp(-tau A²/2). Schatten Holder and (1) yield

    ||S_tau* D_ell(z) S_tau||_1
       <= C_z H ||S_rad||_2² sqrt(ell)
                            tau^(-m/2-3/4).                (3)

For the two-dimensional angular sphere this is O(sqrt(ell) tau^(-7/4));
ell=o(tau^(7/2)) is a sufficient joint condition for this bound to vanish.
For fixed positive tau the rate is O(sqrt(ell)). The rate is a sufficient
bound for this explicitly probed resolvent, not a necessary physical cutoff
condition.

A radial multiplication operator alone is generally not Hilbert--Schmidt on
L² of an interval or half-line. The choice and removal of S_rad therefore
require a separate physical argument. Nor does (3) establish that the
angular heat multiplier is the physical common regulator, control a contour
uniformly in z, or prove the mixed heat response and its subtractions. The
actual bundle, boundary and bolt identification also remain open. No
numerical computation is used.

Remaining to-do list: identify and remove or justify the physical probe,
prove the boundary and full response, resolve prior art, prepare the
manuscript, and certify supported claims in Lean on GCP.