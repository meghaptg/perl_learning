#!usr/bin/perl
use warnings;
use strict;
use feature ':5.12';
use Data::Dumper;

my %ADDRESS;                           
$ADDRESS{1}{First} = "First1";
$ADDRESS{1}{Last} = "Last1";
$ADDRESS{1}{Email} = 'flast1@this.com';
$ADDRESS{2}{First} = "First2";
$ADDRESS{2}{Last} = "Last2";
$ADDRESS{2}{Email} = 'flast2@this.com';
say Dumper \%ADDRESS;

my @add;
my $count = 0;
foreach my $key1(keys %ADDRESS)  {
     $add[$count][0] = $ADDRESS{$key1}{First};
     $add[$count][1] = $ADDRESS{$key1}{Last};
     $add[$count][2] = $ADDRESS{$key1}{Email};
     $count ++;
}
say Dumper \@add;
