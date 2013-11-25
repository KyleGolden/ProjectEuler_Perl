#!/usr/bin/perl -w
#
# Project Euler #1

use strict;
use List::Util qw(sum);

print multiple_sum(3,5,1000);

sub multiple_sum
{
    my($num1, $num2, $limit) = @_;
    my @nums = (1..$limit-1);
    my @multiples = grep{$_%$num1==0 or $_%$num2==0}@nums;
    return sum(@multiples);
}