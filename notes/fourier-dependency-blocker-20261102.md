# Blocker: the two Fourier inputs need the Mathlib `Analysis.Fourier` stack, which the pinned build does not contain

Date: 2026-11-02 UTC. Affects: Proposition 4.3's two remaining Fourier inputs —
(a) Plancherel in the draft's `exp(-i k y)` normalization and (b) the third
derivative identity `g = (i k)³ uhat`.

## Status

`lean/ManuscriptFourier.lean` and its runner are prepared but **not compiled**.
They must not be cited as certified. No Lean source was changed to work around
the blocker.

## What was tried, with exact output

1. The Space reference build (the one every manuscript receipt uses) contains no
   `Mathlib.Analysis.Fourier.FourierTransformDeriv.olean`:

   ```text
   $ ls .../packages/mathlib/.lake/build/lib/lean/Mathlib/Analysis/Fourier
   BoundedContinuousFunctionChar.olean  FourierTransform.olean  ...
   ```

   Compiling against it fails immediately:

   ```text
   ManuscriptFourier.lean:1:0: error: object file '.../Mathlib/Analysis/Fourier/FourierTransformDeriv.olean'
   of module Mathlib.Analysis.Fourier.FourierTransformDeriv does not exist
   ```

2. `lake build` cannot repair it: the builder is offline by protocol, and lake
   tries to fetch a dependency.

   ```text
   $ lake build Mathlib.Analysis.Fourier.FourierTransformDeriv
   info: plausible: cloning https://github.com/leanprover-community/plausible
   fatal: unable to access 'https://github.com/.../plausible/': Failed to connect to github.com port 443
   error: external command 'git' exited with code 128
   ```

3. Manual module-by-module compilation (recursive over the source import graph,
   `lean -o` into the retained build directory) also fails, because the retained
   olean tree is stale rather than merely partial:

   ```text
   BUILD(1) Mathlib.Analysis.Calculus.ContDiff.Bounds
   .../Mathlib/Analysis/Calculus/ContDiff/Bounds.lean:6:0: error: object file
   '.../Mathlib/Data/Nat/Choose/Multinomial.olean' of module
   Mathlib.Data.Nat.Choose.Multinomial does not exist
   ```

   `Mathlib.Data.Nat.Choose.Multinomial` is not in `Bounds.lean`'s source import
   graph, so an *existing* olean was built against a tree that had it. Repairing
   that requires rebuilding a large part of Mathlib, not adding one module.

4. Disk headroom rules out a speculative large rebuild anyway:

   ```text
   /dev/root  193G  189G  4.5G  98% /
   ```

## What is prepared

- `lean/ManuscriptFourier.lean`: `draftFourier u k = 𝓕 u (k/(2π))`;
  `symbol_identity` from `Real.fourier_iteratedDeriv` (n = 3);
  `plancherel_l2` from `MeasureTheory.Lp.inner_fourier_eq` + `Lp.inner_def` +
  `integral_re`; `plancherel_draft` from `MeasureTheory.integral_comp_div`.
- `lean/cloud-manuscript-fourier-20261101.sh`: exact-source runner, pinned to
  the current source SHA-256.

## What would unblock it

One of:

- provision a complete pinned Mathlib build that includes
  `Mathlib.Analysis.Fourier.FourierTransformDeriv` and
  `Mathlib.Analysis.Fourier.LpSpace` (a full `lake build` performed once with
  network access, or a restored complete artifact directory), then re-run the
  prepared runner against it; or
- authorize a one-off, network-enabled `lake build` of that module stack on a
  builder with enough free disk, recorded as a separate infrastructure action
  with its own provenance.

Neither is a mathematical gap: the statements and proofs are written; only the
compiled dependency is missing.

Remaining to-do list: obtain a Mathlib build containing the Fourier derivative
stack; compile `ManuscriptFourier.lean`; then assemble the unconditional
complex-valued form of `(4.8)`.
