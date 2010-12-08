package Parse::Flexget;

require Exporter;
@ISA = qw(Exporter);
our @EXPORT = qw(flexparse);

use strict;

sub flexparse {
  my @data;
  if(ref($_[0]) eq 'ARRAY') {
    push(@data, @{$_});
  }
  else {
    push(@data, @_);
  }

  my @downloads;
  for my $element(@data) {
    if($element =~ m/Downloading: (\S+)/) {
      push(@downloads, $1);
    }
  }

  return wantarray() ? @downloads : scalar(@downloads);
}

