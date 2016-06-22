package Math::Currency::ja_JP;

use utf8;
use strict;
use warnings;
use Math::Currency qw($LC_MONETARY $FORMAT);
use base qw(Exporter Math::Currency);

our $VERSION = 0.49;
our $LANG  = 'ja_JP';

$LC_MONETARY->{ja_JP} = {
    INT_CURR_SYMBOL   => 'JPY ',
    CURRENCY_SYMBOL   => '¥ ',
    MON_DECIMAL_POINT => '.',
    MON_THOUSANDS_SEP => ',',
    MON_GROUPING      => '3',
    POSITIVE_SIGN     => '',
    NEGATIVE_SIGN     => '-',
    INT_FRAC_DIGITS   => '0',
    FRAC_DIGITS       => '0',
    P_CS_PRECEDES     => '1',
    P_SEP_BY_SPACE    => '0',
    N_CS_PRECEDES     => '1',
    N_SEP_BY_SPACE    => '0',
    P_SIGN_POSN       => '4',
    N_SIGN_POSN       => '4'
};

require Math::Currency::JPY;

1;
