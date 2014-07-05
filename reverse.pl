#!usr/bin/perl
 use strict;
 use warnings;
 use feature ':5.12';
 use Data::Dumper;

 my @given= ( 1, 2, 3, 4, 5, 6 );
 say Dumper "@given";
 my $length = $#given + 1;
 my @reverse;
 foreach my $element(@given)  {
        
