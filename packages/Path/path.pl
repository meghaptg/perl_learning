#!usr/bin/env perl
use Path qw/ get_lines isdirectory /;
use warnings;
use strict;
use feature ':5.12';
use Data::Dumper;

my $x = Path->new ( file_name => 'packages',
                    path => '/home/bodhilabs4/Megha/repos/perl_learning');
say $x->path;
my $count = $x->get_lines();
say "the number of lines is $count";
my @fil = $x->isdirectory();
say "the contents of the directory are:" ;
say Dumper \@fil;
