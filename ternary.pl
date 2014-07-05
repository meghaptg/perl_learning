   #!usr/bin/perl
   use strict;
   use warnings;
   use feature ':5.12';
  
  # my @given=(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);
   my @given = ( 1 .. 20);
  
   foreach my $number(@given)
   {
       ( $number % 3 == 0 && $number % 5 == 0 )  ?
       say "FIZZBUZZ $number":
       ( $number % 3 == 0 ) ? say "FIZZ $number":
       ( $number % 5 == 0 ) ? say "BUZZ $number": print '';
   }                                                                                                                                 
