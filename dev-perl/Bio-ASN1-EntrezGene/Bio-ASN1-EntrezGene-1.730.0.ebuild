# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DIST_AUTHOR=CJFIELDS
DIST_VERSION=1.73
DIST_EXAMPLES=("examples/*")
inherit perl-module

DESCRIPTION="Regular expression-based Perl Parser for NCBI Entrez Gene"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="
	virtual/perl-Carp
	virtual/perl-Data-Dumper
	virtual/perl-parent
	>=sci-biology/bioperl-1.6.0
"
BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Spec
		virtual/perl-IO
		virtual/perl-Test-Simple
	)
"
PERL_RM_FILES=(
	t/author-{eol,mojibake,no-tabs,pod-coverage,pod-syntax}.t
)
