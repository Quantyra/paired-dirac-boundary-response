# Spin-lift extension on the disk--sphere model

This complements `global-magnetic-partner-matching.md` for the spin part of
the common-bundle construction. It removes a topological ambiguity under a
specified oriented isometry; it does not identify the source's physical
copy diffeomorphism or prove the first-order boundary domains.

Let X be the smooth finite-cut model D² x S², with the regular disk bolt
included. The disk has its standard spin structure and S² is spin because
its oriented tangent Euler class evaluates to 2, whose reduction modulo 2
is zero. Their product gives a spin structure on X. Since X is simply
connected, H1(X;Z2)=0, so every spin structure on X is isomorphic to that
product structure. This is uniqueness up to spin-structure isomorphism;
it is not a choice of a physical identification between two copies.

Suppose the two pulled-back metrics and oriented tangent bundles are related
by a specified orientation-preserving isometry F:X_R->X_L, including the
bolt, and each copy carries a spin structure. Pulling the left spin
structure back along F gives a spin structure on X_R. Uniqueness supplies a
spin-bundle isomorphism covering the induced oriented orthonormal-frame map.
There are exactly two such lifts once one is chosen: their ratio is a
continuous map into the kernel {+1,-1} of Spin(4)->SO(4), hence is constant
on connected X. Because F is an isometry, either lift intertwines the
Levi-Civita spin connections and Clifford actions. These statements do not
apply to an arbitrary orientation-reversing map without its own orientation
and representation conventions.

The finite outer boundary is connected, S1 x S2. Suppose the source's
specified boundary spin identification is a spin lift of the *same* induced
oriented frame isometry. Its ratio to the restriction of either global lift
is a continuous {+1,-1}-valued function and is therefore one constant sign.
Choosing that sign gives a unique global spin lift agreeing with the
specified boundary lift. This argument requires the boundary map actually to
cover the same frame isometry; a generic unitary boundary matrix need not be
a spin lift, and the topology does not prove that condition.

The thermal circle bounds a disk in X. The restricted spin structure on that
circle is therefore the bounding one; in a rotating polar frame its
components have the corresponding antiperiodic transition. This is a
spin-frame statement, not an extra magnetic Wilson line. Coupling to the
monopole line bundle requires, independently, the connection-preserving
magnetic map of `global-magnetic-partner-matching.md`. If both the spin and
magnetic maps satisfy these hypotheses, their tensor product is a global
parallel Clifford-intertwining unitary map agreeing with the specified
boundary map. It can be used in the common-bundle partner construction,
subject to the additional copy-orientation and domain checks there.

The source states identical pulled-back data and an identity boundary map,
but its actual oriented copy isometry and the fact that the displayed
boundary matrix covers its frame map still require verification. Nor does
this topological result prove a mixed trace, regulator limit, physical
existence or Lean certification. No numerical calculation is used.

Remaining to-do list: verify the source copy and boundary frame maps,
complete the paired domain and response audit, resolve novelty, prepare the
manuscript, and certify supported claims in Lean on GCP.
