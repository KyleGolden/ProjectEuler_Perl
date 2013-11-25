#!/usr/bin/perl

use strict;
use warnings;

print scalar keys distinct_powers(100);

sub distinct_powers
{
    my $limit = shift;
    my %hash= ();

    for my $x (2..$limit){
        for my $y (2..$limit){
            unless (defined $hash{$x**$y}){
                $hash{$x**$y} = 1;
            }            
        }
    }
    return \%hash;
}