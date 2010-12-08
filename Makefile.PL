use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Parse::Flexget',
    AUTHOR              => q{Magnus Woldrich <trapd00r@trapd00r.se>},
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
      #    'Test::More' => 0,
      #  'Audio::MPD' => 0,
      #  'Term::ExtendedColor' => 0.16,
    },
    #MAN1PODS            => {
    #    'pimpd' => 'blib/man1/pimpd.1',
    #  },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    #clean               => { FILES => 'pimpd-*' },
);
