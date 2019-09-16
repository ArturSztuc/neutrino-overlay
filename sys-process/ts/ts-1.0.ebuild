# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Unix bach system where the tasks spooled run one after the other"
HOMEPAGE="http://vicerveza.homeunix.net/~viric/soft/ts/"
SRC_URI="http://vicerveza.homeunix.net/~viric/soft/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
BDEPEND=""

# collision of /usr/bin/ts
RDEPEND="!sys-apps/moreutils
	!app-misc/timestamp"

src_install(){
	# Built in /usr/bin
	dobin ts

	# Build man pages and further documentation
	doman ts.1
	dodoc Changelog OBJECTIVES PORTABILITY PROTOCOL README TRICKS web/*.html 
}
