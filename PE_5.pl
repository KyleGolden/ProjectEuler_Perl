#!/usr/bin/perl -ws
#
# Project Euler #5
#
print smallest_multiple(20);

sub smallest_multiple
{
    my $limit = shift;
    my ($num, $count) = ($limit, 2);
    
    until($count > $limit){
        if($num % $count == 0){ $count++;}
        else{$num++; $count = 2;}
    }
    return $num;
}