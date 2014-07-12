use Test::More tests=>3;
use lib '/home/bodhilabs4/Megha/repos/perl_learning/packages/Path/';

 
{
   use_ok('Path');
}
 
my $r = Path->new();

isa_ok ( $r, 'Path', 'got path');

   


