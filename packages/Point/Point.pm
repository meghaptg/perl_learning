package Point

    {
        use Moose;
        use warnings;
        use Data::Dumper;
        has 'x', is => 'rw' , isa => 'Int';#, Default => test() ; 
        has 'y', is => 'rw' , isa => 'Int';#, Default => test();
       

        sub point{
            my $self = shift;
            my $one = 2;
            my $two = 3;
            warn Dumper($self);
            $self->{x} = $one;
            $self->{y} = $two;
            warn Dumper($self);
            #print "$one\n";
            #print "$two\n";
            #return $one - $self->x();
            #return $two - $self->y();
        }
}   
1;

