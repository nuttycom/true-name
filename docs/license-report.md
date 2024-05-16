**NB**: This captures the licenses associated with a particular set of dependency versions. If your own build solves differently, it’s possible that the licenses may have changed, or even that the set of dependencies itself is different. Please make sure you run [`cabal-plan license-report`](https://hackage.haskell.org/package/cabal-plan) on your own components rather than assuming this is authoritative.

# Dependency License Report

Bold-faced **`package-name`**s denote standard libraries bundled with `ghc-8.10.1`.

## Direct dependencies of `true-name:lib:true-name`

| Name | Version | [SPDX](https://spdx.org/licenses/) License Id | Description | Also depended upon by |
| --- | --- | --- | --- | --- |
| **`base`** | [`4.14.0.0`](http://hackage.haskell.org/package/base-4.14.0.0) | [`BSD-3-Clause`](http://hackage.haskell.org/package/base-4.14.0.0/src/LICENSE) | Basic libraries | *(core library)* |
| **`template-haskell`** | [`2.16.0.0`](http://hackage.haskell.org/package/template-haskell-2.16.0.0) | [`BSD-3-Clause`](http://hackage.haskell.org/package/template-haskell-2.16.0.0/src/LICENSE) | Support library for Template Haskell |  |

## Indirect transitive dependencies

| Name | Version | [SPDX](https://spdx.org/licenses/) License Id | Description | Depended upon by |
| --- | --- | --- | --- | --- |
| **`array`** | [`0.5.4.0`](http://hackage.haskell.org/package/array-0.5.4.0) | [`BSD-3-Clause`](http://hackage.haskell.org/package/array-0.5.4.0/src/LICENSE) | Mutable and immutable arrays | `deepseq` |
| **`deepseq`** | [`1.4.4.0`](http://hackage.haskell.org/package/deepseq-1.4.4.0) | [`BSD-3-Clause`](http://hackage.haskell.org/package/deepseq-1.4.4.0/src/LICENSE) | Deep evaluation of data structures | `pretty` |
| **`ghc-boot-th`** | [`8.10.1`](http://hackage.haskell.org/package/ghc-boot-th-8.10.1) | [`BSD-3-Clause`](http://hackage.haskell.org/package/ghc-boot-th-8.10.1/src/LICENSE) | Shared functionality between GHC and the `template-haskell` library | `template-haskell` |
| **`ghc-prim`** | [`0.6.1`](http://hackage.haskell.org/package/ghc-prim-0.6.1) | [`BSD-3-Clause`](http://hackage.haskell.org/package/ghc-prim-0.6.1/src/LICENSE) | GHC primitives | *(core library)* |
| **`integer-gmp`** | [`1.0.3.0`](http://hackage.haskell.org/package/integer-gmp-1.0.3.0) | [`BSD-3-Clause`](http://hackage.haskell.org/package/integer-gmp-1.0.3.0/src/LICENSE) | Integer library based on GMP | *(core library)* |
| **`pretty`** | [`1.1.3.6`](http://hackage.haskell.org/package/pretty-1.1.3.6) | [`BSD-3-Clause`](http://hackage.haskell.org/package/pretty-1.1.3.6/src/LICENSE) | Pretty-printing library | `template-haskell` |

