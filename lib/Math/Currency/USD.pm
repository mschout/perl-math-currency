package Math::Currency::USD;

use strict;
use warnings;
use base 'Math::Currency::de_DE';

our $VERSION = '0.49';

$Math::Currency::LC_MONETARY->{USD} = $Math::Currency::LC_MONETARY->{de_DE};

1;
