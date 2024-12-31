use strict;
use warnings;
use File::ReadBackwards;

my $file="Dora.txt";

my $bw=File::ReadBackwards->new($file) or die "Cant open file $file\n";

while (my $line =$bw->readline)
{
	print $line;
}

$bw->close();
