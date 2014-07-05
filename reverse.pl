#!usr/bin/perl
 use strict;
 use warnings;
 use feature ':5.12';
 use Data::Dumper;

 my @given= ( 1, 2, 3, 4, 5, 6 );
 my $length = $#given;
 say "$length";
 my @reverse;
 foreach my $element(@given)  {
        $reverse[$length] = $element;
        $length--;
 }
 say Dumper \@given;
 say Dumper \@reverse;          
