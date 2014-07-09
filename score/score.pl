#! usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;

{open(my $fh, "<", "score.txt")
or die "cannot open > score.txt: $!";
my %hash;
my @vals;
my @array;
my $count=0;
while (my $row = <$fh>) {
    chomp $row;
    my $name = substr $row,0,3;
    $array[$count]=$row;
    $count++;
}
my $count1=0;
#my @temp;
say Dumper \@array;
foreach my $key(@arr)  {
    my @temp;
    my $count1=0;
    while ($key=~m/$array[$count1]/gi) {
   # if (exists($hash{$key}))  {
   # my @temp;
    push(@temp, $array[$count1]);
    $count1++;
    }
    $hash{$key}= @temp;
#    say Dumper \%hash;
}
say Dumper \%hash;
}

=c
my $count1=0;
my $count2=0;
my $count3=0;
foreach my $r(@arr) {
    if (grep /$r/, @array} ) {
            my @tom[$count1]= $array};
    

#say Dumper \@tom;
foreach my $m(@array)  {
    while ($m=~/$arr[$count1]/i) {
        if (exists($vals[$count2][$count3]))  {
        $count3++;
        push (@vals[$count2][$count3],$m) ;
        } else  {
        push (@vals[$count2][$count3],$m);
        }
    }
$count2++;
$count1++;
}
say Dumper \@vals;
}


#my @name = split(',',@array);
#say Dumper \@name;
#my @arr = sort { substr($a,1,3) cmp substr($b,1,3) } @array;
#say Dumper \@arr;
=cut
