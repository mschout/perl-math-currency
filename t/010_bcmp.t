#!/usr/bin/env perl

use strict;
use warnings;
use Test::More tests => 13;

use_ok 'Math::Currency' or exit 1;

my $small = Math::Currency->new(10);
my $large = Math::Currency->new(100);

# ensure bcmp works the way documented in Math::BigFloat:
# $x->bcmp($y);           # compare numbers (undef, < 0, == 0, > 0)
cmp_ok $small->bcmp($large), '==', -1;
cmp_ok $small->bcmp($small), '==', 0;
cmp_ok $large->bcmp($small), '==', 1;

cmp_ok $small->bcmp(100), '==', -1;
cmp_ok $small->bcmp(10), '==', 0;
cmp_ok $large->bcmp(10), '==', 1;

# float tests.
$small = Math::Currency->new(10.01);
$large = Math::Currency->new(100.01);

cmp_ok $small->bcmp($large), '==', -1;
cmp_ok $small->bcmp($small), '==', 0;
cmp_ok $large->bcmp($small), '==', 1;

cmp_ok $small->bcmp(100.01), '==', -1;
cmp_ok $small->bcmp(10.01), '==', 0;
cmp_ok $large->bcmp(10.01), '==', 1;
