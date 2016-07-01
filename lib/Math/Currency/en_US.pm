package Math::Currency::en_US;

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
