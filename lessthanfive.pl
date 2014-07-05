#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;

my @given=( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 );
foreach my $num(@given)  {
    if ($given[$num] <= 5) {
        say "$given[$num]";
    }
}
