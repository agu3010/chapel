#!/usr/bin/perl

use File::Basename;

$utildirname = dirname($0);

$preset_comm=$ENV{'CHPL_COMM'};

if ($preset_comm eq "") {
    $platform = `$utildirname/platform.pl --target`;
    chomp($platform);

# eventually, we'll want to pick defaults based on platforms, but for
# today things are impoverished enough for us to want to pick "none"
# by default

    $comm = "none";
} else {
    $comm = $preset_comm;
}


print "$comm\n";
exit(0);
