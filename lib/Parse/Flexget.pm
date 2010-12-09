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

=pod

=head1 NAME

Parse::Flexget - Parse the flexget program output

=head1 SYNOPSIS

    use Parse::Flexget;

    ...

    print "$_\n" for flexparse(@logfile);

=head1 DESCRIPTION

Parse::Flexget parses the output from flexget and returns a list of downloaded files.

=head1 EXPORTS

=head2 flexparse()

Parameters: @content, \@content

Returns:    @downloads

=head1 AUTHOR

  Magnus Woldrich
  CPAN ID: WOLDRICH
  magnus@trapd00r.se
  http://japh.se

=head1 REPORTING BUGS

Report bugs on rt.cpan.org or to magnus@trapd00r.se

=head1 COPYRIGHT

Copyright (C) 2010 Magnus Woldrich. All right reserved.
This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut


1;
