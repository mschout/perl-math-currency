package Math::Currency::GBP;

use strict;
use warnings;
use base 'Math::Currency::en_GB';

our $VERSION = '0.49';

$Math::Currency::LC_MONETARY->{GBP} = $Math::Currency::LC_MONETARY->{en_GB};

1;
