use lib 'lib';

use Test;
use Config;

my $config = Config.new();

plan 1;

ok($config.read("t/files/config.json"), "Read a JSON file");

# XXX check contents just read

done-testing;
