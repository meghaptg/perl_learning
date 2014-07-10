#!usr/bin/perl
use warnings;
use strict;
use feature ':5.12';

my $string = 'old is gold';
$string =~ s/old/ate/ig;
say $string;

my $hat = qr/hat/;
say $hat;

