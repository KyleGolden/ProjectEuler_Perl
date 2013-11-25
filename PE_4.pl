#!/usr/bin/perl -ws
#
# Project Euler #4
#
use List::Util qw(max);

print largest_palin_prod(1);

sub largest_palin_prod
{
    my $digit = shift;
    my @palins = ();
    
    my ($min, $max) = (10**($digit-1), 10**$digit - 1);
    foreach my $x($min..$max){
        foreach my $y($min..$max){
            next unless is_palin($x*$y);
            push @palins, ($x*$y);
        }
    }
    return max(@palins);
}

sub is_palin
{
    my $num = shift;
    "$num" eq reverse("$num") ? return 1: return 0;
}