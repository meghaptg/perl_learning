#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;

=comment
my @letters=('a' .. 'z');
#say Dumper \@letters;
my @numbers=(1 .. 26);
#say Dumper \@numbers;
my $s1=0;
my $s2=0;
my $data= 'ab';

sub encrypt {
    my @val1= split(undef,$data);
    foreach my $c1(@val1)  {
        print "$c1\n";
        $s1= grep
        #my %len1=map { $c1=> length $c1 } @numbers;
        #print "$len1{$c1}\n";
    }
}
=cut

#my %hash(even) =('a'..'z');
#my %hash(odd) =(1 .. 26);
my %hash=(1,'a',2,'b');
say Dumper \%hash;
my $data='ab';
say "$data";
my $key=0;
my @s1;
my $value=0;
my @dec;
my $p;

sub encrypt {
    my @val1= split(undef,$data);
    my $count=0;
    foreach my $c1(@val1)  {
            print "$c1 -> ";
           # $s1[$count]=$c1;
           # $count++;
=comment
            $key= $hash{$c1};
            print "$key\n";
    while (($key,$value)=each %hash)  
            if ($value eq $c1) {
            my $key=$hash{$c1};
            print "$key";
    }
say Dumper \@s1
=cut
            while (my ($k, $v) = each %hash) {
                if ( $v eq $c1 ) {
                $dec[$count]=$k;
                print "$k\n";
                $count++;    
            } 
            
}
}
} 
say Dumper \@dec;


sub decrypt {
   # while (my ($k1, $v1)=each %hash)  {
   # my $p= %hash{$k};
   foreach my $n(@dec)  {
        $p = $hash{$n};
        print "$p\n";
    }
}


encrypt();
say Dumper \@dec;
decrypt();
