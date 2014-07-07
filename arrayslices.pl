#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;

my @given=( 1 .. 9 );
say Dumper \@given;
my @index=( 2, 4, 6, 7 );
say Dumper \@index;

my @required= @given[@index];
say Dumper \@required;
