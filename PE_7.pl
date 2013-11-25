#!/usr/bin/perl -w
#
# Project Euler #7
#

print find_nth_prime(10_001);

sub find_nth_prime
{
    my $limit = shift;
    my($count,$num )= (1,2);
    while($count < $limit){
        $num++;
        $count++ if isPrime($num);
    }
    return $num;    
}

sub isPrime 
{
    my $num = shift;
    for(2..int(sqrt($num))) {
        return 0 if ($num % $_ == 0);
    }
    return 1;
}