#!usr/bin/perl
use warnings;
use strict;
use feature ':5.12';
use Data::Dumper;
use List::MoreUtils qw/ uniq /;

my @given=( 1, 2, 2, 2, 3, 4, 5, 5, 6 );
my %result; 

foreach my $num ( @given ) {
    if ( exists $result{$num} ) {
         $result{$num} ++;
    } else {
         $result{$num} = 1;
    }
   
}
=comment
my @unique= uniq @given;
say Dumper \@unique;
my %result; 
foreach my $repeat (@unique)  {
    my $count=0;
    foreach my $check (@given)  {
        ($repeat == $check) ? ($count++) : "" ;
    }   
        $result{$repeat}="$count";
}
=cut
say Dumper \%result;
