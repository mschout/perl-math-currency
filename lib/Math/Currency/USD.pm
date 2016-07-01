package Math::Currency::USD;

# ABSTRACT: USD Currency Module for Math::Currency

use strict;
use warnings;
use base 'Math::Currency::en_US';

$Math::Currency::LC_MONETARY->{USD} =
    $Math::Currency::LC_MONETARY->{en_US};

1;
