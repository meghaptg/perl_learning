package BasicMath4;

require Exporter;

@ISA = qw ( Exporter );
@EXPORT = qw( add difference );
@EXPORT_OK = qw (divide product );

sub add {
   my ($test1,$test2) = (shift,shift);
   my $sum = 0;
   $sum = $test1 + $test2;
   print "sum is $sum \n";
}

sub difference {
   my ($test1,$test2) = (shift,shift);
   my $diff = 0;
   $diff = $test1-$test2;
   print "difference is $diff \n";
}


sub divide {
   my ($test1,$test2) = (shift,shift);
   my $div = $test1/$test2;
   print "Quotient is $div\n";
}

sub product {
   my ($test1,$test2) = (shift,shift);
   my $prod = $test1*$test2;
   print "Product is $prod\n";
}
