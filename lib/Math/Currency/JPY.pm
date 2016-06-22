package Math::Currency::JPY;

use strict;
use warnings;
use base 'Math::Currency::ja_JP';

our $VERSION = '0.49';

$Math::Currency::LC_MONETARY->{JPY} = $Math::Currency::LC_MONETARY->{ja_JP};

1;
