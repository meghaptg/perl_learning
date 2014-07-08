#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;

{
open(my $fh, "<", "fox.txt")
or die "cannot open > fox.txt: $!";
my %hash;
my $row = <$fh>;  
chomp $row;
say $row;
my @array = split (' ',$row);
foreach my $words (@array) {
    print "$words\n";
} 
foreach my $words ( @array ) {
    if ( exists $hash{$words} ) {
        $hash{$words} ++;
    } else {
        $hash{$words} = 1;
    }
}
say Dumper \%hash;
@array = sort { $hash{$b} <=> $hash{$a} } keys %hash;
foreach my $val (@array)  {
        say "$val => $hash{$val}";
}


=co
foreach my $value (sort values %hash) {
    say $value;
    say $hash;
    }
say Dumper (sort values \%hash);
my @values;
my $count=0;
while (my ($key, $value) = each %hash) {
    $values[$count]=$value;
    $count++;
}
say Dumper \@values;
my @values = sort @values;
say Dumper \@values;
say Dumper \%hash;
#my @values = sort { $hash{$a} <=> $hash{$b} } values %hash;
#say Dumper (sort \%hash);
=cut
}

