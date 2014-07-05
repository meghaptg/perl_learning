#!usr/bin/perl
use warnings;
use strict;
use feature ':5.12';
use Data::Dumper;
use List::Util qw( min max );

my @given=( 3, 4, 5, 8, 2, 12 );
my $minimum = min @given;
my $maximum = max @given;
say "$minimum";
say "$maximum";

my $min =  $given[0];
foreach my $comp(@given)  {
    if ( $comp <= $min)  {
        $min = $comp;
    }
}
say "minimum is $min";  

my $max = $given[0];
foreach my $check(@given)  {
    if ( $check >= $max )  {
        $max = $check;
    }
}
say "maximum is $max";      
