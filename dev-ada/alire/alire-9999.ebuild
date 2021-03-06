# Hack-Labs Research's

EAPI=7

ADA_COMPAT=( gnat_202{0..1} )
inherit ada git-r3 

DESCRIPTION="ALIRE: Ada LIbrary REpository"
HOMEPAGE="https://alire.ada.dev"
EGIT_REPO_URI="https://github.com/alire-project/alire"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"


RDEPEND="
	dev-lang/gnat-gpl
"
DEPEND="
	${RDEPEND}
"

src_compile() {
    gprbuild -j0 -P alr_env
}

src_install() {
    dobin bin/alr || die
}
