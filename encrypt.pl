#!usr/bin/perl
use strict;
use warnings;
use feature ':5.12';
use Data::Dumper;

my %hash=(1,'a',2,'b',3,'c',4,'d',5,'e',6,'f',7,'g',8,'h',9,'i',10,'j',11,'k',12,'l',13,'m',14,'n',15,'o',16,'p',17,'q',18,'r',19,'s',20,'t',21,'u',22,'v',23,'w',24,'x',25,'y',26,'z');
say Dumper \%hash;
my $data='megha';
say "Data = $data ";
my $key=0;
my @s1;
my $value=0;
my @dec;
my $p;

sub encrypt {
    my @val1= split(undef,$data);
    my $count=0;
    say 'encryption';
    foreach my $c1(@val1)  {
            print "$c1 -> ";
            while (my ($k, $v) = each %hash) {
                if ( $v eq $c1 ) {
                $dec[$count]=$k;
                print "$k\n";
                $count++;    
                } 
            }
    }   
} 


sub decrypt {
    say 'decryption';
    foreach my $n(@dec)  {
        $p = $hash{$n};
        print "$n -> $p\n";
    }
}

encrypt();
#say Dumper \@dec;
decrypt();
