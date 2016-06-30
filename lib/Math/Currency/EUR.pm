package Math::Currency::EUR;

# ABSTRACT: EUR Currency Module for Math::Currency

use strict;
use warnings;
use base 'Math::Currency::de_DE';

$Math::Currency::LC_MONETARY->{EUR} =
    $Math::Currency::LC_MONETARY->{de_DE};

1;
