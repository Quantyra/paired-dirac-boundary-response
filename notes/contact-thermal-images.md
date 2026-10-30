# Thermal-image tail for the two-insertion bridge

Status: conditional positive-time bound for the source's scalar auxiliary
bridge, not a proof of its physical paired realization or a Lean certificate.
The image factor is recorded in Eq. (3) of the pinned
[curved paired heat bridge](https://github.com/Quantyra/quantyra-wormhole-semiclassical/blob/f0eab59063422c80ccc7c8e281170c75cc3afc71/notes/current-curved-paired-heat-bridge.md).

## Claim

Assume the source's Poisson image representation applies to the
[two-insertion scalar bridge](bridge-exponential-tail.md), with normal-only
insertions u∈L¹ and v∈L∞, real f satisfying m≤|f|≤F and ||f'||∞≤G,
and fixed antiperiodic thermal period T>0. Write I_thermal(t) for the sum
of all nonzero image contributions, in the source's 1/(2π) time-reduced
normalization. Let a(t)=T²/(4F²t), c=G²/(4m²). Then

    |I_thermal(t)| ≤ [||u||₁||v||∞/(πm)] e^(ct)
                         e^(−a(t))/(1−e^(−3a(t))).        (1)

This retains the entire infinite image sum. For 0<t≤t₀, the denominator is
bounded below by 1−exp[−3T²/(4F²t₀)]. If additionally the matching angular
weight obeys −Theta'(t)≤24C_angular/t², then

    |2Theta'(t) I_thermal(t)|
       ≤ [48 C_angular ||u||₁||v||∞/(πm)]
          t^(−2)e^(ct)e^(−a(t))/(1−e^(−3a(t))) →0.        (2)

The bound is uniform for a family with common m,F,G,T,t₀ and insertion
norms. It is a symbolic upper bound, not a physical admission margin.

## Derivation

For each bridge path, A_h∈[m²,F²], |B_h|≤G and the shifted v average is
bounded by ||v||∞. The nonzero image multiplier is

    Σ_{k≠0} (−1)^k exp[−k²T²/(4tA_h)]
                            cos[kTB_h/(2A_h)].

The cosine has modulus at most one for real data, so the absolute image sum
is bounded by 2Σ_{k≥1}exp[−k²a(t)]. Since k²≥1+3(k−1) for k≥1, it is
at most 2e^(−a)/(1−e^(−3a)). Also A_h^(−1/2)≤m^(−1) and
exp[tB_h²/(4A_h)]≤e^(ct). Integrate |u| and use the 1/(2π) prefactor to
obtain (1). Multiplication by the angular estimate gives (2), whose limit
follows because e^(−constant/t) dominates every fixed negative power of t.

The normal-only insertion does not change the Gaussian integration in the
thermal momentum under the assumed representation; it changes the radial
bridge factor that is bounded above. This observation must be rederived with
the actual domain and trace conventions before using (1) as a physical
result. The estimate does not cover derivatives with respect to the metric,
complex coefficient tubes, a vanishing thermal period, the bolt, auxiliary
cutoff defects, or a different regulator measure. No individual thermal or
angular mode has been discarded, and no numerical test replaces the bound.

Remaining to-do list: establish the two-insertion image representation for
the actual paired realization, control metric variations and auxiliary
boundary defects, close the common regulator, audit novelty, and certify
supported claims on GCP.
