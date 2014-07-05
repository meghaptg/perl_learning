#!usr/bin/perl
 use strict;
 use warnings;
 use feature ':5.12';
 use Data::Dumper;

=comment
 use utf8; 
 my $fh;
 binmode STDOUT, ':utf8';

 binmode $fh,':utf8';
    my $unicode_string = $fh;

    binmode STDOUT, ':utf8';
    say "$unicode_string";
    #say "STDOUT";
=cut

 my @given= ( 1, 2, 3, 4, 5, 6 );
 say Dumper "@given";
=comment
 if ( $given eq $reversed )
 {
    say "$given is a Palindrome";
 
 }  else
 {
    say "$given is not a palindrome";
 }
=cut
