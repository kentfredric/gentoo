# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=1.004
inherit perl-module

DESCRIPTION="produce tied (and other) separate but combined variables"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

# r: Symbol, strict, warnings -> perl
RDEPEND="
	virtual/perl-Carp
"
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		>=virtual/perl-Test-Simple-0.960.0
	)
"
SRC_TEST="do parallel"
