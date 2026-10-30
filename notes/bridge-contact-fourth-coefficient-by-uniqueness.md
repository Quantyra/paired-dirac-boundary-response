# Smooth interior bridge coefficient by heat-kernel uniqueness

This identifies the h^4 coefficient of the localized zero-image bridge by an independent smooth heat-kernel argument. It assumes the bridge is the exact rank-two local contact kernel of the stipulated untwisted geometric Dirac square; it does not prove that operator identification or a rough-seam limit.

Take the smooth collar, f, u, v and compactly supported chi of `bridge-contact-leading-coefficients.md`, and put w=chi u. Assume the support of w lies in the interior of a smooth two-dimensional realization and that the zero thermal image represents its local contact asymptotics, with the same time-reduced normalization. The thermal-image estimate makes the difference between the zero image and the full thermal expression smaller than every power of t. Locality of heat coefficients then permits any smooth completion away from supp w. Let L be the corresponding untwisted rank-two Dirac square, and perturb it by the fixed scalar potential lambda v.

The Duhamel identity gives I_t(w,v)=-partial_lambda Tr[w exp(-t(L+lambda v))] at lambda=0. Under the standard parameter-differentiable smooth local heat expansion, uniqueness of powers of t forces its t² coefficient to equal the coefficient c4 in the bridge expansion. The independent a6 calculation in `interior-contact-finite-heat-coefficient.md` therefore yields

 c4=(4pi)^(-1) integral w {Delta²v/30
       -[R Delta v+<grad R,grad v>+v Delta R]/60
       -R² v/120} dmu.                                       (1)

Here dmu is the source's time-reduced geometric measure; full thermal period factors must be restored if another trace convention is used. This identification avoids relying on a second expansion of the bridge's lengthy polynomial, but is conditional on exact equality of the two smooth local kernels and on the same normalization.

Since w is compactly supported in the interior, Green's identities give equivalently

 c4=(4pi)^(-1) integral {(-R²/120-Delta R/60) wv
       +R<grad w,grad v>/60+(Delta w)(Delta v)/30} dmu.      (2)

The derivatives of chi inside grad w and Delta w are retained. Summing a genuine partition of unity combines these terms only after every localized contribution, including overlaps and commutator corrections, is present. If w reaches a boundary, (2) must be supplemented by the explicit flux in `interior-contact-boundary-flux.md` and by the separate local boundary heat coefficient; neither follows merely from (1).

For a fixed reflected rough field, the earlier transfer lemma may pass integrated smooth coefficient expressions to a weak limit if its approximation hypotheses are met. That passage needs an independently established distributional interpretation of Delta R and a seam pairing; formulas (1)--(2) alone do not prove it. They also do not verify the actual paired source bridge, magnetic twist, thermal normalization, bolt gluing, P1-D response or common regulator. No Lean certification is claimed.

Remaining to-do list: establish the source kernel identification and weak boundary completion, control gluing and the physical response, resolve novelty, finish the manuscript, and certify supported claims in Lean on GCP.