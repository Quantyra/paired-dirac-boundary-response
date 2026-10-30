# Square-domain draft: failed GCP checks

Source `8fb66f9` was checked using the prior development dependencies. The first run exited 1 before typechecking because the Lean output file was outside the project root; raw log SHA-256 `322ce395332d904fa0f270ecdbfd0b4ce0faec714ca52d612ba619efe5233d56`. The retry exited 1 because the draft began with a UTF-8 byte-order mark, which Lean rejected; raw log SHA-256 `d32ecd1067a7c8d776ad4d15943799d9f17a7ac7c4701af29908c70580e1f0b7`. Neither run certifies the square-domain statements or their reported axioms. Commit `3c2b655` removes the marker for a subsequent check.

Remaining to-do list: typecheck the corrected draft, complete clean source-only acceptance, and finish the physical and response arguments.
