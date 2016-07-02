package Math::Currency::de_DE;

# ABSTRACT: de_DE Locale Module for Math::Currency

use utf8;
use strict;
use warnings;
use Math::Currency qw($LC_MONETARY $FORMAT);
use base qw(Exporter Math::Currency);

our $LANG = 'de_DE';

$LC_MONETARY->{de_DE} = {
    CURRENCY_SYMBOL   => '€',
    FRAC_DIGITS       => '2',
    INT_CURR_SYMBOL   => 'EUR ',
    INT_FRAC_DIGITS   => '2',
    MON_DECIMAL_POINT => ',',
    MON_GROUPING      => '3',
    MON_THOUSANDS_SEP => '.',
    NEGATIVE_SIGN     => '-',
    N_CS_PRECEDES     => '0',
    N_SEP_BY_SPACE    => '1',
    N_SIGN_POSN       => '1',
    POSITIVE_SIGN     => '',
    P_CS_PRECEDES     => '0',
    P_SEP_BY_SPACE    => '1',
    P_SIGN_POSN       => '1'
};

require Math::Currency::EUR;

1;
