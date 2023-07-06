package Math::Currency::en_US;
$Math::Currency::en_US::VERSION = '0.53';
# ABSTRACT: en_US Module for Math::Currency

use utf8;
use strict;
use warnings;
use Math::Currency qw($LC_MONETARY $FORMAT);
use base qw(Exporter Math::Currency);

our $LANG    = 'en_US';

$LC_MONETARY->{en_US} = {
    CURRENCY_SYMBOL   => '$',
    FRAC_DIGITS       => '2',
    INT_CURR_SYMBOL   => 'USD ',
    INT_FRAC_DIGITS   => '2',
    MON_DECIMAL_POINT => '.',
    MON_GROUPING      => '3',
    MON_THOUSANDS_SEP => ',',
    NEGATIVE_SIGN     => '-',
    N_CS_PRECEDES     => '1',
    N_SEP_BY_SPACE    => '0',
    N_SIGN_POSN       => '1',
    POSITIVE_SIGN     => '',
    P_CS_PRECEDES     => '1',
    P_SEP_BY_SPACE    => '0',
    P_SIGN_POSN       => '1'
};

require Math::Currency::USD;

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Math::Currency::en_US - en_US Module for Math::Currency

=head1 VERSION

version 0.53

=head1 SOURCE

The development version is on github at L<https://https://github.com/mschout/perl-math-currency>
and may be cloned from L<git://https://github.com/mschout/perl-math-currency.git>

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
L<https://github.com/mschout/perl-math-currency/issues>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Michael Schout <mschout@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2001 by John Peacock <jpeacock@cpan.org>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
