#!usr/bin/perl
use warnings;
use strict;
use feature ':5.12';
use Data::Dumper;

my $string = 'old is gold';
$string =~ s/old/ate/ig;
say $string;

my $name='cheatfieldhrt';
my $hat=qr/(ha+t){1,}/;
say 'found' if $name =~ /$hat/;
say "$&";
say "$'";
#say $1;
say $name;

 my $hot_meal = qr/hot.*?meal/;

    say 'Found a hot meal!'
        if 'I have a hot meal' =~ $hot_meal;

    say 'Found a hot meal!'
        if 'one-shot, piecemeal work!' =~ $hot_meal;

say 'Found a hot meal non greedy'
    if 'ilikeahotmeal' =~ $hot_meal;

my $number= qr/777-999-1234/;
say $number;
next unless $number =~ /\d{3}-?\d{3}-?\d{4}/;
    say "I have your number: $number";

my $ascii_vowels = qr/[aeiou]/;
say "yes!" if $name =~ /h${ascii_vowels}{2}t/;

my $order = 'Vegan brownies!';

say 'yummmm...' #if $order =~ s/Vegan (\w+)/Vegetarian $1/;
   if $order =~ s/Vegan (?<food>\w+)/Vegetarian $+{food}/;

my $spacey_cat = qr/\s+\Kcat/;

    say "1111111111" if 'my cat has been to space'=~ /$spacey_cat/;
    say "2222222" if 'my  cat  has  been  to  doublespace'=~ /$spacey_cat/;
    say "!!!!!!" if 'This is a catastrophe!'=~ /$spacey_cat/;

my @haystack=( 'hay','needle');
my $needle='needle';
my @dup=('hay','needle');
my %hash;
foreach my $k(@dup){
    $hash{$k}=1;
}
say Dumper \%hash;
say 'Grep1 through array' if @haystack ~~ $needle;
say 'Grep2 through array' if $needle ~~ @haystack;
say 'grep3 through array' if @haystack ~~ $needle;
say 'Grep4 through array' if @haystack ~~ @dup;
say 'Grep5 through array' if %hash ~~ @haystack;
say 'Grep6 through array' if @haystack ~~ %hash;

my %hash1;
my @keys=('a' .. 'z');
my $count=1;
foreach my $k(@keys) {
    $hash1{$k}=$count;
    $count++;
}
say Dumper \%hash1;

