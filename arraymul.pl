#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;

my @arr1 = ( 1, 3, 5 );
my @arr2 = ( 2, 4, 6 );
say Dumper \@arr1;
say Dumper \@arr2;
my $count1=0;
my $count2=0;

sub changearr{
    foreach my $num1(@arr1)  {
        $arr1[$count1]=2 * $num1;
        $count1++;
    }
    foreach my $num2(@arr2)  {
        $arr2[$count2]=3 * $num2;
        $count2++;
    }
}

changearr();
say Dumper \@arr1;
say Dumper \@arr2;

