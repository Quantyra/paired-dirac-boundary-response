# P1-C source normalization and sector audit

Status: pinned-source bookkeeping audit against `f0eab59063422c80ccc7c8e281170c75cc3afc71`. It checks ranks, angular multiplicities, partner averaging, zero-mode allocation and period conventions. It does not prove the physical curved-to-flat observable limit or the common-regulator response, and it is not Lean-certified.

## Source conventions

The source's stationary massive boundary-layer note declares its mode formulas per exterior. After separating the monopole sphere, the orbit spinor has rank two. For positive integer charge `q`, the nonzero sphere eigenvalues have both signs already counted in

    M_n^2 = n(n+q)/b_sphere^2,
    d_n = 2(q+2n),  n >= 1.

Thus the source's massive angular heat weight is

    Theta(t) = sum_(n>=1) d_n exp(-t M_n^2).

The source angular spectrum assigns `q` chiral zero modes to the LLL. They are a separate block, with their own cocycle; they are not included in `Theta` and are not two copies of `q`. Replacing `Theta` by `Theta+q` in the massive conversion identity is not justified without deriving the LLL conversion and its common-regulator endpoint separately.

The source's variable-contact conversion, Eq. (3), is stated at positive common cutoff with the physical-half, time-reduced trace and the original paired domains, bolt and thermal period:

    J_t''[u,v] = Theta(t)/2 [D_v T_t(u) + D_u T_t(v)]
                  + 2 Theta'(t) I_t(u,v).

The symmetrized geometric term carries the partner average. The `2 Theta' I_t` product-gradient contact is a distinct term and must be retained. The final normalized action multiplies `J` by its separately stated `-2G/B^2`; that action factor is not part of the displayed identity and must be applied once.

## Flat orbit factor

The orbit fiber of the paired phase representation is rank four, while the irreducible flat Clifford calculation defining `H_2` is rank two. Under the even scalar, projector, domain and trace-class hypotheses in `flat-paired-folding.md` and `flat-orbit-fiber-normalization.md`:

| Object | Multiplier |
| --- | ---: |
| Full-line rank-two orbit trace | `H_2` |
| Full-line rank-four orbit trace | `2 H_2` |
| Paired half-line rank-four trace | `H_2` |
| Per-exterior paired half-line trace | `H_2/2` |

The source's per-exterior convention divides the duplicated folded mouth degrees of freedom by two. Combined with the spatial half-trace identity, this gives `H_2/2 = F(t k^2)/(pi t)` for the conditional flat geometric multiplier. The two factors have distinct origins. Do not halve `d_n` again: its factor two is the sphere-sign multiplicity, not the orbit-copy or exterior factor. This matches the declared flat P1-C normalization under the stated hypotheses.

## Period and scope

The source keeps the prescribed finite Euclidean bolt period and the corresponding antiperiodic spin structure; `Tr_bar` is time-reduced. P1-C's Fourier multiplier is a local flat normal-direction density. Fixed-period compact-flat arguments bound nonzero thermal images under their own hypotheses, but do not identify the full curved physical trace, bolt domain, state, contact/counterterm conversion or physical endpoint with that flat density. The factor audit therefore resolves bookkeeping only; it does not close the source-to-observable bridge.

## Disposition

| Item | Audit result | Remaining obligation |
| --- | --- | --- |
| Orbit rank and per-exterior factor | Compatible with `H_2/2` after spatial half-trace and exterior division | Prove the actual physical trace has the limiting flat trace under the common regulator |
| Sphere signs and multiplicity | `d_n=2(q+2n)` already counts both nonzero signs | None for the massive tower; do not divide it again |
| LLL zero modes | `q` chiral modes are separate from `Theta` | Match their physical state, cocycle and regulator once |
| Partner averaging and contact | Geometric average and separate `2 Theta' I_t` occur in the source identity | Identify both terms with the physical curved observable; retain them through cutoff removal |
| Thermal period | Fixed source period, time-reduced trace; flat local multiplier uses a density | Prove full physical-to-tangent/common-regulator transfer |
| Final action normalization | `-2G/B^2` is external to `J_t''` | Apply exactly once in any action-level claim |

Remaining to-do list: prove the physical curved response and common-regulator transfer, finish prior-art comparison and S001.3, complete the supported manuscript, and certify its claims on GCP.
