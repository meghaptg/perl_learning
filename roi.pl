#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;

my %hash;
my @key = (1 .. 5);
foreach my $k(@key)  {
    $hash{$k} = ($k+1);
}
say Dumper \%hash;

my $principal = $ARGV[0];
my $year = $ARGV[1];
say "the principal is $principal";
say "years = $year";

my $roi1 = $principal + ( $principal * ($hash{$year}* 0.1));
say "the roi for an year is $roi1";
