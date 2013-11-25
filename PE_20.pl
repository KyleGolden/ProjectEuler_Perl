#!/usr/bin/perl 
# kyle golden
# PRoject Euler problem 20

use strict;
use List::Util qw(sum);
use Math::BigInt;

print factorial_digit_sum(100);

sub factorial_digit_sum
{
    my $num = shift;
    return sum(map{$_}split '', Math::BigInt->new($num)->bfac());
}