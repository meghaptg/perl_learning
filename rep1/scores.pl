#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;
use List::MoreUtils qw/ uniq /;

{open(my $fh, "<", "score.txt")
or die "cannot open > score.txt: $!";
my %hash;
my @keys;
my @vals;
my @array;
my $count=0;
while (my $row = <$fh>) {
    chomp $row;
    my $name = substr $row,0,3;
    $array[$count]=$row;
    say $row;
    my @temp=split(',',$row);
    push (@keys,$temp[0]);   
    push (@vals,\@temp);
    @vals= sort{($a) cmp ($b)} @vals;
}
my @key=uniq @keys;   
say Dumper \@key;
say Dumper \@vals;
my $count1=0;
my @tem;
foreach my $k(@key) {
foreach my $val(@vals) {
    if ( exists ( $hash{$k} ) ){  
    push(@tem,@val);
    $hash{$k}=@tem;
    } else {
    $hash{$k}=@val;
    }
$count1++;
}}
say Dumper \%hash;

=cut
}
