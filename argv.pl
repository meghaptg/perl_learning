#!/usr/bin/perl
use strict;
use warnings;
use feature ':5.12';

my $firstname=$ARGV[0];
my $lastname=$ARGV[1];

say "Hello, $firstname $lastname";
say \@ARGC;
