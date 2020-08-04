use strict;
use warnings;

use Number::Stars;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Number::Stars->new;
isa_ok($obj, 'Number::Stars');
