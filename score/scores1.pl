#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;
use List::MoreUtils qw/ uniq /;

{open(my $fh, "<", "score.txt")
or die "cannot open > score.txt: $!";

my %score;
#while reading file
  #split each line and store the return into an array
  # use exists to see if name is already in the hash score
  # if name is not in hash create key as the name and value is an empty array ref ( [])

  # else name is already in hash , use push to push the score onto the array ref

# end while


# at this point the %score looks like this 
# %score ( tom => [ 60,70], bob => [80,60]);

# go through score hash
my @temp;
while(my $row = <$fh>) {
    chomp $row;
    say $row;
    @temp = split (',',$row);
    if (!exists ($score{$temp[0]})) {
        $score{$temp[0]}=[];
    }
push(@{$score{$temp[0]}},$temp[2]);
say Dumper \%score;
}
my $x;
foreach my $key(keys %score) {
    my $add=0;
    $x=scalar @{$score{$key}};
    foreach my $element(@{$score{$key}}) {
        $add=$add + $element;
    }

my $avg=$add/$x;
say "average of $key is $avg\%";
}
}
 




=co
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

