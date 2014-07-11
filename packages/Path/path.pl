#!usr/bin/env perl
use Path qw/ get_lines isdirectory /;
use warnings;
use strict;
use feature ':5.12';

my $x = Path->new ( file_name => 'file.txt',
                    path => '/home/bodhilabs4/Megha/repos/perl_learning/packages');
say $x->path;
$x->get_lines();
$x->isdirectory();

