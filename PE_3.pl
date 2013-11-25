#!/user/bin/perl
#
# Project Euler #3
use strict;
use warnings;

my $n = 13_714;
my $i = 1;

while (++$i < $n)
{
    $n /= $i if ($n % $i == 0);
}

print "$n\n"