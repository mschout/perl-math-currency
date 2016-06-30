package Math::Currency::JPY;

# ABSTRACT: JPY Currency Module for Math::Currency

use strict;
use warnings;
use base 'Math::Currency::ja_JP';

$Math::Currency::LC_MONETARY->{JPY} =
    $Math::Currency::LC_MONETARY->{ja_JP};

1;
