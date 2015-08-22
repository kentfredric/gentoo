# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MODULE_AUTHOR=MSCHILLI
MODULE_VERSION=0.23

inherit perl-module

DESCRIPTION="API wrapper around the 'tar' utility"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# r:Cwd -> File-Spec
RDEPEND="
	virtual/perl-File-Spec
	virtual/perl-File-Temp
	dev-perl/IPC-Run
	dev-perl/Log-Log4perl
	virtual/perl-File-Path
	app-arch/tar
"
DEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
"
SRC_TEST="do parallel"
