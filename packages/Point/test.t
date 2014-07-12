use Test::More tests=>2;
use lib '/home/bodhilabs4/Megha/repos/perl_learning/packages/Point/';


{
   use_ok('Point');
}
 
my $r = Point->new();
 
isa_ok ( $r, 'Point', 'got point');

