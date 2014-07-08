#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';

{
open(my $fh, "<", "tom.txt")
or die "cannot open > tom.txt: $!";
#my $math = 60;
#my $science = 70;
#my $average = (($math+$science)/2);
#say "tom's $average\%";
while (my $row = <$fh>) {
    chomp $row;
    print "$row\n"
}
close $fh;
}

{
open(my $fh, "<", "bob.txt")
or die "cannot open > bob.txt: $!";
#my $math = 76;
#my $science = 90;
#my $average = (($math+$science)/2);
#say "bob's $average\%";
while (my $row = <$fh>) {
    chomp $row;
    print "$row\n"
}
close $fh;
}
