#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;

my %groups_to_foods = (
  proteins   => { eggs     => 1,
                  beef     => 1,
                  tofu     => 1 },
  carbs      => { bread    => 1,
                  pizza    => 1,
                  twinkies => 1 },
  vegetarian => { tofu     => 1,
                  bread    => 1,
                  twinkies => 1 }
);
say Dumper \%groups_to_foods;  
my $search = 'tofu';
    foreach my $check(keys %{$groups_to_foods{carbs}})  {
        $check = $groups_to_foods{carbs}{$check};
        if (lc($check) eq $search)  {
        say "YES"; 
        }
    }
my $num=0;
foreach my $item(keys %{$groups_to_foods{vegetarian}})  {  
        $num++;
        #say $num;
}
say "number of vegetarian foods is $num";
