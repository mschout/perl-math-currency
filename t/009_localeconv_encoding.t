#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use Test::More tests => 12;
use Test::More::UTF8;
use POSIX qw(setlocale);

binmode STDOUT, ':utf8';

use_ok('Math::Currency') or exit 1;

my $format = {};

my %locales = (
    'en_GB'           => '£',
    'en_GB.UTF-8'     => '£',
    'en_GB.ISO8859-1' => '£',
    'ru_RU'           => qr/руб/,  # on some systems, this is 'руб', on others is 'руб.'
    'ru_RU.UTF-8'     => qr/руб/,
    'ru_RU.KOI8-R'    => qr/руб/,
    'zh_CN.GB2312'    => '￥',
    'zh_CN'           => '￥',
    'zh_CN.GB2312'    => '￥',
    'zh_CN.GBK'       => '￥',
    'zh_CN.UTF-8'     => '￥',
    'zh_CN.eucCN'     => '￥'
);

while (my ($locale, $symbol) = each %locales) {
    subtest $locale => sub {
        plan_locale($locale, 1);
        Math::Currency->localize(\$format);

        if ((ref $symbol || '') eq 'Regexp') {
            like $$format{CURRENCY_SYMBOL}, $symbol, 'Currency symbol decoded correctly';
        }
        else {
            is $$format{CURRENCY_SYMBOL}, $symbol, "Currency symbol $symbol decoded correctly";
        }
    };
}

sub plan_locale {
    my ($wanted, $tests) = @_;

    my $locale = POSIX::setlocale(&POSIX::LC_ALL, $wanted) || '';

    unless ($locale eq $wanted) {
        plan skip_all => "locale $wanted is not available on this system";
    }
    else {
        plan tests => $tests + 1;
        pass "locale changed to $wanted";
    }
}
