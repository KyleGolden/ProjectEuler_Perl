#!/usr/bin/perl
#
use List::Util qw/sum/;

my ($sum, $limit) = (0, 10_000);

foreach(1..$limit-1){
    $sum+=$_ if is_amicable($_);
}
print $sum;

sub is_amicable
{
    my $var = shift;
    my $n = sum(get_divisors($var));
    (sum(get_divisors($n)) == $var and $var!=$n) ? return 1 : return 0;
}

sub get_divisors
{    
    my $num = shift;
    return grep{$_ if $num % $_ == 0}(1..$num/2);
}