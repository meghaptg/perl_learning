package Path;

{
        use Moose;
        use warnings;
        use Data::Dumper;
        use File::Basename;
        has 'file_name', is => 'rw' , isa => 'Str'; 
        has 'path', is => 'rw' , isa => 'Str';


sub get_lines{
        my $self = shift;
        print $self->path,"\n";
        print $self->file_name,"\n";
        my($file, $dir, $ext) = fileparse($self->file_name,qr/\.[^.]*/);
        my $count = 0;
        if($ext eq '.txt') {
                open(my $fh, "<", $self->file_name)
                or die "cannot open > $self->file_name: $!"; 

                print"Reading the file\n";

                while(my $row = <$fh>) {
                       chomp $row;
                       print $row,"\n";
                       $count++;
                } 
                print "num of lines is ",$count,"\n";
                
        } else {
                print "not a file\n";
        }
        return $count;
}

  sub isdirectory{
        my $self = shift;
        my $fname = $self->path."/".$self->file_name;
        print $fname,"\n";
        my($file, $dir, $ext) = fileparse($self->file_name,qr/\.[^.]*/);   
        print "$ext\n";
        print "$dir\n";
        if($ext eq '.txt') {
            print"False\n";
        } else {
            print"True\n";
            my @file;
            my $count=0;
            opendir (DIR, $dir) or die $!;
            while ($file[$count] = readdir(DIR)) {
                 print "$file[$count]\n";
                 $count++;
            }  
            return @file;
        }
  }
}
1; 


