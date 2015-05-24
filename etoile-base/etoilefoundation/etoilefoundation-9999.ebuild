# Copyright 2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: 2015/05/24 18:33:00 lwhebda $

EAPI=5
inherit gnustep-2

DESCRIPTION="Etoile core framework"
HOMEPAGE="http://etoileos.com"

if [[ ${PV} = *9999* ]]; then
	inherit git-2
	EGIT_REPO_URI="git://github.com/etoile/EtoileFoundation.git"
	EGIT_BRANCH="master"
else
	SRC_URI=""
	KEYWORDS="~amd64"
fi

SLOT="0"

RDEPEND="${DEPEND}"
DEPEND="
	gnustep-base/gnustep-make[libobjc2]
	>=virtual/gnustep-back-0.22.0"
