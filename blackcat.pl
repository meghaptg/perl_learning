#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';

my $string = 'the black cat climbed the green tree';
my $length = length $string;
say $string;
say "length=$length";
say "\U $string \E";
my $word = 'dog';
my $index = index ( $string , $word );
say "index of $word is $index";
my $part = substr $string, 14, 22;
say $part;
my $replace = substr $string, 14, 7, "jumped from";
say $string;
