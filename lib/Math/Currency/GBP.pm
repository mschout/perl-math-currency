package Math::Currency::GBP;

# ABSTRACT: GBP Currency Module for Math::Currency

use strict;
use warnings;
use base 'Math::Currency::en_GB';

$Math::Currency::LC_MONETARY->{GBP} =
    $Math::Currency::LC_MONETARY->{en_GB};

1;
