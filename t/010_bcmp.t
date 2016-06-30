#!/usr/bin/env perl

use Test::More tests => 3;

use_ok 'Math::Currency';

my $small = Math::Currency->new(10);
my $large = Math::Currency->new(100);

# ensure bcmp works the way documented in Math::BigFloat:
# $x->bcmp($y);           # compare numbers (undef, < 0, == 0, > 0)
cmp_ok $small->bcmp($large), '==', -1;
cmp_ok $small->bcmp($small), '==', 0;
cmp_ok $large->bcmp($small), '==', -1;
