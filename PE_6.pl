#!/usr/bin/perl -w
# Project Euler #6
use List::Util qw(sum);
use strict;

print square_of_sum(100)-sum_of_squares(100);

sub sum_of_squares
{
    my $limit = shift;
    return sum(map{$_**2}(1..$limit));
    
}

sub square_of_sum
{
    my $limit = shift;
    return sum(map{$_}(1..$limit))**2;
}