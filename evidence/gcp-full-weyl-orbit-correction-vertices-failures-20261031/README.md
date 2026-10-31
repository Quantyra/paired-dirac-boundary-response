# GCP full-Weyl orbit correction vertex: retained failures

Status: all four runs below failed. They are retained as required evidence.
No result from any of them may be cited. The succeeding run is
[`gcp-full-weyl-orbit-correction-vertices-20261031`](../gcp-full-weyl-orbit-correction-vertices-20261031/README.md).

All four used Lean `4.30.0`, commit
`d024af099ca4bf2c86f649261ebf59565dc8c622`, on `quantyra-lean-builder-01` in
project `quantyra-lean-cert-20260915`, zone `us-central1-a`. Each directory
preserves the exact failing source, the run log and the nonzero exit code;
the three earlier runs predate the current runner format and so carry no
separate version, hash or finish-time files.

## `earlier-20261031a`

- GCP run directory: `p1-full-weyl-orbit-correction-vertices-20261031a`
- Source SHA-256: `5bd2efed8d0368bd386353637f3a4e85c6cf9f46bea0b852bf500fa7e188e502`
- Exit code: `1`

Failed before elaboration: `expected token` at 1:0 and
`invalid 'import' command, it must be used in the beginning of the file`. The
transferred file carried a UTF-8 BOM, written by PowerShell output encoding.

## `earlier-20261031b`

- GCP run directory: `p1-full-weyl-orbit-correction-vertices-20261031b`
- Source SHA-256: `6fc163baad8ba193568c8fd835f330dcf85546540bc825123058571dd214dac9`
- Exit code: `1`

The BOM was removed, but Lean elaboration failed. `mixed_commutator_vertex`
and `angular_mass_first_vertex` were never created, so the trailing
`#print axioms` requests reported them as unknown constants. This revision
predates the current commutator hypotheses.

## `earlier-20261031c`

- GCP run directory: `p1-full-weyl-orbit-correction-vertices-20261031c`
- Source SHA-256: `db561345aac4c8acbac8876e9462b7aa7f21c884f3764cd11ee23d6d99030530`
- Exit code: `1`

`mixed_commutator_vertex` reported
`[propext, sorryAx, Quot.sound]`. The proof left exactly the residual goal

```text
4 • (D * (w * u)) + (-1 • (w * (u * D)) + -3 • (u * (w * D)))
  = 4 • (D * (w * u)) + -4 • (u * (w * D))
```

## `cc24abf8-noncomm-ring-residual`

- GCP run directory: `paper1-full-weyl-orbit-correction-vertices-cc24abf8-20261031`
- Source SHA-256: `cc24abf8d01802bf44e8e4b0da6dc67d11f96213decdc85acb60fd0453a17119`
- Exit code: `1`
- Finished: `Sat Oct 31 23:06:40 UTC 2026`

This is the source that the planning handoff recorded as awaiting a replay
once GCP authentication was restored. It is the first run of this declaration
on the restored credentials. It failed with the same residual goal as
`earlier-20261031c`, and `mixed_commutator_vertex` again reported
`[propext, sorryAx, Quot.sound]`.

## Diagnosis and fix

The residual reduces to `w * u * D = u * w * D`, which is immediate from the
hypothesis `huw : u * w = w * u`. `noncomm_ring [huw, hduw, hdwu]` did not
apply it: after `noncomm_ring` normalizes products to right-associated form,
`huw` no longer matches the subterms `w * (u * D)` and `u * (w * D)`
syntactically, so it was never used.

The fix adds the bridging step in the normalized form the residual displays,

```text
have hassoc : w * (u * D) = u * (w * D) := by
  rw [← mul_assoc, ← huw, mul_assoc]
```

and passes `hassoc` to `noncomm_ring`. The theorem statement, the definition
of `twiceDiracJet`, and the documented scope limits are unchanged; the
retained sources in these receipts show the difference.

## Hash verification caveat

The repository has `core.autocrlf=true`, so the text files here are stored in
Git with LF endings and checked out on Windows with CRLF. The recorded
SHA-256 values are for the LF bytes that GCP produced and that Git stores.
Recompute them against the stored blob (for example `git show` or
`git cat-file blob`), not against a CRLF working copy. The `.olean` files are
binary and are stored and restored verbatim.
