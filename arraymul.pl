#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;

my @arr1 = ( 1, 3, 5 );
my $arr1_ref=\@arr1;
my @arr2 = ( 2, 4, 6 );
my @arr2_ref=\@arr2;
say Dumper \@arr1;
say Dumper \@arr2;

sub changearr {
        my $arr1=shift; 
        my $arr2=shift;
        foreach my $element1(@{$arr1}) {
        my $el1=2 * $element1;
        say $el1;
        }
        foreach my $element2(@{$arr2}) {
        my $el2=3 * $element2;
        say $el2;
        }
    
}

changearr(\@arr1,\@arr2);
#say Dumper \@arr1;
#say Dumper \@arr2;

