# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -dev,-has-icu,-has-llvm

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Unicode normalization"
HOMEPAGE="https://github.com/composewell/unicode-transforms"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="amd64 ~arm64 ~ppc64 ~riscv ~x86"
IUSE=""

RDEPEND=">=dev-haskell/text-1.1.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2
	test? ( >=dev-haskell/getopt-generics-0.11 <dev-haskell/getopt-generics-0.14
		>=dev-haskell/hspec-2.0 <dev-haskell/hspec-3
		>=dev-haskell/quickcheck-2.1 <dev-haskell/quickcheck-2.15
		>=dev-haskell/split-0.1 <dev-haskell/split-0.3 )
"

CABAL_CHDEPS=(
	'ghc-prim >= 0.2 && < 0.7' 'ghc-prim >= 0.2'
)

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev \
		--flag=-has-icu \
		--flag=-has-llvm
}
