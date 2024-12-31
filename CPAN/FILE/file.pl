use strict;
use warnings;
use File::Path qw(make_path);
use File::Path qw(remove_tree);
use File::Copy qw(copy);
use File::Copy qw(move);
use File::Slurp qw(read_file);
use File::Slurp qw(append_file);
use File::Find qw(find);
use File::Basename qw(basename);
use File::Basename qw(dirname);

make_path("DoraDora.txt");
remove_tree("DoraDora.txt");
copy("Doraemon.txt","DoraDora_bkup.txt");
move("Doraemon.txt","Doraemonismine.txt");
print read_file("Doraemonismine.txt");
append_file("Doraemonismine.txt","I like both of them");
print read_file("Doraemonismine.txt");

sub findfile
{	
if ( $_  eq "Doraemonismine.txt" )
{
	print " file has been found $File::Find::name\n";
}

}


find(\&findfile,".");

print basename("/home/ubuntu/PERL/LetsLearnPerl/CPAN/FILE/file.pl");
print dirname("/home/ubuntu/PERL/LetsLearnPerl/CPAN/FILE/file.pl");
