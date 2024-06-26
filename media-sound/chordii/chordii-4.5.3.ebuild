# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Guitar music typesetter"
HOMEPAGE="https://chordii.sourceforge.net/"
SRC_URI="
	https://downloads.sourceforge.net/${PN}/${P}.tar.gz
	doc? ( https://downloads.sourceforge.net/${PN}/user_guide-${PV}.pdf )"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

PATCHES=( "${FILESDIR}"/${PN}-4.5.3-fno-common.patch )

src_install() {
	default

	dodoc -r examples
	docompress -x /usr/share/doc/${PF}/examples

	use doc && dodoc "${DISTDIR}"/user_guide-${PV}.pdf
}
