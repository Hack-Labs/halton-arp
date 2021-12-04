# Hack-Labs Research's

EAPI=7

ADA_COMPAT=( gnat_202{0..1} )
inherit ada

DESCRIPTION="Bob is a Non-Intelligent console assistant."
HOMEPAGE="https://www.laeran.pl/repositories/bob/"
SRC_URI="https://www.laeran.pl/repositories/bob/tarball/trunk/download.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/download"


RDEPEND="
	dev-lang/gnat-gpl
"
DEPEND="
	${RDEPEND}
"


src_prepare() {
    default
}
src_compile() {
    gprbuild -P bob.gpr -XMode=release
}

src_install() {
    dobin bin/bob || die
}
