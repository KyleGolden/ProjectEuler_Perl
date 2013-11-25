#!/usr/bin/perl -w
#
# Project Euler #9
#
use strict;

print special_triplet(1000);

sub special_triplet
{
    my $NUM = shift;
    for my $x(1..($NUM/2)){
        for my $y(1..($NUM/2)){
            my $c = $NUM - ($x+$y);
            return $x*$y*$c if is_triplet($x, $y, $c);
        }
    }
}

sub is_triplet
{
    my($a, $b, $c) = @_;
    return ($a**2 + $b**2) == $c**2;
}