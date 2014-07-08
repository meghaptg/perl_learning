#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper qw(Dumper);

my @words = ( 'apple', 'zoo', 'tree', 'pink' );
say Dumper \@words;
my @sorted_words = sort { lc($a) cmp lc($b) } @words;
say Dumper \@sorted_words;

my @numbers = (1, 4, 23, 31, 15,45);
say Dumper \@numbers;
my @sorted_numbers = sort {($a) <=> ($b)} @numbers;
say Dumper \@sorted_numbers; 

my @mixed = qw( my_1 my_12 my_5 my_20 );
say Dumper \@mixed;
my @sorted_mixed = sort { substr($a,3) <=> substr($b,3) } @mixed;
say Dumper \@sorted_mixed;

