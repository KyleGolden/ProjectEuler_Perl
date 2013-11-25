#!/usr/bin/perl

use strict;
use warnings;


print circular_primes(100);


sub circular_primes
{
    my $limit = shift;
    my $count = 0;
    my $rev = 0;
    foreach my $n(2..$limit-1){
        $rev = reverse $n;
        if(isPrime($n) and isPrime($rev)){
            $count++;
        }
    }
    return $count;
}

sub isPrime 
{
    my $num = shift;
    for(2..int(sqrt($num))) {
        return 0 if ($num % $_ == 0);
    }
    return 1;
}