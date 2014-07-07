#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';

my $given= 'Brainturk';
say "$given";
my @value= split ( undef, $given );
foreach my $val(@value)  {
    print "\'$val\' ";
}
say "";
