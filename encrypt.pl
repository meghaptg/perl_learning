#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;

my %encrypt;

my $count = 1;
foreach my $char ( 'a' .. 'z' ) {
   $encrypt{$char} = $count ++;
}

say Dumper \%encrypt;

my $strint_to_encrypt='megha';

my @encrypted_string;
foreach my $char_str ( split //,lc $strint_to_encrypt ) {
     if ( exists ( $encrypt{$char_str} ) ) {
            push @encrypted_string , $encrypt{$char_str};
     }
}

my $str_to_decrypt = join '#',@encrypted_string;


## to decrypt

my @decrypt = split /#/,$str_to_decrypt;

say Dumper \@decrypt;

my %decrypt = reverse %encrypt;
foreach my $char_dec ( @decrypt ) {
        say $char_dec . "=" . $decrypt{$char_dec} ;
}
