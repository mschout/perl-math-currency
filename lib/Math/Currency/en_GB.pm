package Math::Currency::en_GB;

# ABSTRACT: en_GB Locale Module for Math::Currency

use utf8;
use strict;
use warnings;
use Math::Currency qw($LC_MONETARY $FORMAT);
use base qw(Exporter Math::Currency);

our $LANG  = 'en_GB';

$LC_MONETARY->{en_GB} = {
    INT_CURR_SYMBOL   => 'GBP ',
    CURRENCY_SYMBOL   => '£',
    MON_DECIMAL_POINT => '.',
    MON_THOUSANDS_SEP => ',',
    MON_GROUPING      => '3',
    POSITIVE_SIGN     => '',
    NEGATIVE_SIGN     => '-',
    INT_FRAC_DIGITS   => '2',
    FRAC_DIGITS       => '2',
    P_CS_PRECEDES     => '1',
    P_SEP_BY_SPACE    => '0',
    N_CS_PRECEDES     => '1',
    N_SEP_BY_SPACE    => '0',
    P_SIGN_POSN       => '1',
    N_SIGN_POSN       => '1'
};

require Math::Currency::GBP;

1;
