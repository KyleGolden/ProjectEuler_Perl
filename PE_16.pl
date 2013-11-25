#!/usr/bin/perl -w
#
# Project Euler #16

use List::Util qw(sum);
use bigint;

print power_digit_sum(15);

sub power_digit_sum
{
    my $exp = shift;
    return sum( map{$_}split '',2**1000 );
}