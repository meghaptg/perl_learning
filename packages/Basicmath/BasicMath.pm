package BasicMath;

require Exporter;

@ISA = qw ( Exporter );
@EXPORT = qw( add difference );

#@EXPORT_OK = qw (printb );

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
   print " difference is $diff \n";
}


1;
