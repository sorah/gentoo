# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

KDE_HANDBOOK="true"
KDE_SELINUX_MODULE="games"
inherit kde5

DESCRIPTION="Tactical one or two player game"
HOMEPAGE="
	https://www.kde.org/applications/games/kjumpingcube/
	https://games.kde.org/game.php?game=kjumpingcube
"
KEYWORDS="amd64 ~x86"
IUSE=""

DEPEND="
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep kconfigwidgets)
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep kdelibs4support)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kwidgetsaddons)
	$(add_frameworks_dep kxmlgui)
	$(add_kdeapps_dep libkdegames)
	$(add_qt_dep qtgui)
	$(add_qt_dep qtsvg)
	$(add_qt_dep qtwidgets)
"
RDEPEND="${DEPEND}"

PATCHES=(
	"${FILESDIR}/${P}-deps.patch"
	"${FILESDIR}/${P}-dbus.patch"
)
