package String::Fraction;
use base qw(HTML::Fraction);

use strict;
use warnings;

our $VERSION = "0.20";

my %name2char = (
  '1/4'  => "\x{00BC}",
  '1/2'  => "\x{00BD}",
  '3/4'  => "\x{00BE}",
  '1/3'  => "\x{2153}",
  '2/3'  => "\x{2154}",
  '1/5'  => "\x{2155}",
  '2/5'  => "\x{2156}",
  '3/5'  => "\x{2157}",
  '4/5'  => "\x{2158}",
  '1/6'  => "\x{2159}",
  '5/6'  => "\x{215A}",
  '1/8'  => "\x{215B}",
  '3/8'  => "\x{215C}",
  '5/8'  => "\x{215D}",
  '7/8'  => "\x{215E}",
);

sub _name2char { shift; $name2char{shift()} }

=head1 NAME

String::Fraction - convert fractions into unicode chars

=head1 SYNOPSIS

  use String::Fraction;
  print String::Fraction->tweak( <<ENDOFTEXT );
    When this is run through tweak things like 1/4 and 0.25 and 6.33
    will be converted to unicode chars that represent the fractional parts
  ENDOFTEXT

=head1 DESCRIPTION

This module functions identically to its superclass B<HTML::Fraction>,
but rather than converting fractions into HTML entities they are replaced
by the unicode characters for those fractions.

=head1 AUTHOR

Copyright Mark Fowler <mark@twoshortplanks.com> and Fotango 2005.

This module is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=head1 BUGS 

None Known

=head1 SEE ALSO

L<HTML::Fraction>

=cut

1;