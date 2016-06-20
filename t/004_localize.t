#!/usr/bin/perl -w

use strict;
use warnings;
use Test::More;
use Test::More::UTF8;
use Math::Currency qw($LC_MONETARY);

# monetary_locale testing
use POSIX;

plan tests => 2;

my $format = {};

# hard coded keys to make sure they are all present in formats
my @items = qw(
    INT_CURR_SYMBOL
    CURRENCY_SYMBOL
    MON_DECIMAL_POINT
    MON_THOUSANDS_SEP
    MON_GROUPING
    POSITIVE_SIGN
    NEGATIVE_SIGN
    INT_FRAC_DIGITS
    FRAC_DIGITS
    P_CS_PRECEDES
    P_SEP_BY_SPACE
    N_CS_PRECEDES
    N_SEP_BY_SPACE
    P_SIGN_POSN
    N_SIGN_POSN);

subtest 'en_GB locale' => sub {
    use_ok("Math::Currency::en_GB");

    plan_locale(en_GB => 21);

    pass 'Initalized with en_GB locale';

    Math::Currency->localize( \$format );

    like $format->{INT_CURR_SYMBOL}, qr/\bGBP\b/, 'POSIX format set properly';
    is $format->{CURRENCY_SYMBOL}, '£', 'Currency Symbol set properly';

    my $pounds = Math::Currency->new('98994.95', 'GBP');

    is $pounds, '£98,994.95', 'object format changed correctly';
    my $newpounds = $pounds + 10000;
    is ref($newpounds), ref($pounds), 'autoupgrade to object';

    check_params('en_GB');
};


subtest 'en_US locale' => sub {
    plan_locale(en_US => 18);

    Math::Currency->localize(\$format);
    my $dollars = Math::Currency->new('12345.67');
    is $dollars, '$12,345.67', 'POSIX format reset properly';
    is $format->{CURRENCY_SYMBOL}, '$', 'Currency symbol Set properly';
    like $format->{INT_CURR_SYMBOL}, qr/\bUSD\b/, 'Intl currency symbol set properly';

    check_params('en_US');
};

sub plan_locale {
    my ($wanted, $tests) = @_;

    $tests += 1; # add 1 for the "Re-initialized" test pass

    my $locale = POSIX::setlocale( &POSIX::LC_ALL, $wanted ) || '';
    if ($locale ne $wanted) {
        plan skip_all => 'locale en_GB is not available on this system';
    }
    elsif (! Math::Currency->localize()) {
        plan skip_all => 'No locale support';
    }
    else {
        plan tests => $tests;

        pass "Re-initalized locale with $wanted";
    }
}

sub check_params {
    my $locale = shift;

    for my $param (@items) {
        my $global_param = $LC_MONETARY->{$locale}->{$param};
        ok( $format->{$param} eq $global_param,
            sprintf( " \t'%s'\t= '%s'", $format->{$param}, $global_param ) );
    }
}
