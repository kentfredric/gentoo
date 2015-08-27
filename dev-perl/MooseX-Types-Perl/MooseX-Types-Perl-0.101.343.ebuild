# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=5
MODULE_AUTHOR=RJBS
MODULE_VERSION=0.101343
inherit perl-module

DESCRIPTION="Moose types that check against Perl syntax"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
# MooseX::Types::Moose -> MooseX-Types
RDEPEND="
	dev-perl/MooseX-Types
	dev-perl/Params-Util
	>=virtual/perl-version-0.820.0
"
# t: charnames, strict, warnings -> perl
DEPEND="${RDEPEND}
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	test? (
		>=virtual/perl-Test-Simple-0.960.0
	)
"
SRC_TEST="do parallel"
