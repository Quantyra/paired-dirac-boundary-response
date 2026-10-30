# Exact-tree reconstruction and upstream identity check

On the GCP builder, all nine retained dependency archives were reconstructed
using `lean/normalize-tree-archive.py` into the separate directory
`paper1-exact-tree-archives-20261029`. For each, the independent tree/archive
verifier reported equal path counts, zero missing, extra, or different entries,
and exact Git blob and mode agreement with the retained tree. The archive
SHA-256 values below are for the reconstructed uncompressed tar files.

| Package | Pinned commit | Git tree | Archive SHA-256 |
| --- | --- | --- | --- |
| Cli | `6b907cf12b2e445ccb7c24bc208ef04a1f39e84c` | `8a76534436fb49125055d57998a2907a396186f8` | `93ed2beaf312c788b7fed7cb532fb3a3e3f270cee7c9d7caf0971c65f876303c` |
| LeanSearchClient | `c5d5b8fe6e5158def25cd28eb94e4141ad97c843` | `d0224b6df6c90cc0b4ed2db6218037d31bfd6f52` | `9b0b773dbf760cf3f209ae08f3b7be2ee7462de945736700def87d1210724115` |
| Qq | `a6e6c34c4ef182f83b219a3a5a385f51f44bdc4c` | `3cd6c8c7454ab4cdc4f5c7068250d42e6f072b42` | `256a1ba7f622950e1c08bb31292c7190e6ba5302dce51ce479e4168083dedf29` |
| aesop | `558915ae105bfd8074e22d597613d1961822adc2` | `9f9a222ac975ad751c92bcf0f46de9fd2b0c3cfb` | `b1785d5d61eb5ce18cf0014478c989b295d6066c73c4786f7e65c47f8df260f4` |
| batteries | `32dc18cde3684679f3c003de608743b57498c56f` | `436fbfdcb885492763ccee85e5db580d1995966f` | `41edc4561879f200c0215bfec72258f968e50807679de56ec8d829292f7cd2c8` |
| importGraph | `515cf9d0c00ece5e661f6de4326a53dedc1e8ea1` | `7418207a8b90a9f8e7223c20009d7eab86a4fd53` | `3adaf5ab57848caf32d117910aaed1cbcef3f5ea573f5358c9aaabe373c6571c` |
| mathlib | `c5ea00351c28e24afc9f0f84379aa41082b1188f` | `1fe688f4d9e84fb268a300f8ac33cbca883fbd28` | `e02f9079352fa741592aa8d9fe5c6116064d95c0c7bed87b4f1e94bbf4e603e3` |
| plausible | `a456461b368b71d2accd95234832cd9c174b5437` | `cbfb86e477a2ed89137953b22bbf38149658b672` | `9115d94ad45d38756b8f72c4ad11e6d336f760d4f9d43d2fbc333cda304f20a1` |
| proofwidgets | `a84b3e2475d5c5ab979567b1ad8aea21b764bcf8` | `e0e2c368464f34b36f0db3901ce3c8ab4a1b8a40` | `d7316b08c66d55f32ae0bdf13b5e827d3fd49b37b9096d29faa4ac92e0508a2d` |

The GitHub Git-commit API was queried independently for each repository URL
and revision from the retained Lake manifest. All nine returned the listed
commit and tree IDs. This checks the upstream-reported tree IDs against the
local objects; the exact-byte archives still need to be used in a fresh GCP
build with exact-source and axiom receipts. The attempt to download the
Mathlib codeload archive separately ended with an unexpected EOF; its partial
file is not used as evidence.

Remaining to-do list: run and audit a fresh GCP build with these exact-byte
archives, then formalize the remaining operator and response claims.
