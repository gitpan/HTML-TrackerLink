#!/usr/bin/perl

# Formal testing for HTML::TrackerLink

use strict;
use File::Spec::Functions qw{:ALL};
use lib catdir( updir(), updir(), 'modules' ), # Development testing
        catdir( updir(), 'lib' );              # Installation testing
use UNIVERSAL 'isa';
use Test::More tests => 5;

# Check their perl version
BEGIN {
	$| = 1;
	ok( $] >= 5.005, "Your perl is new enough" );
}
	




# Does the module load
use_ok( 'HTML::TrackerLink' );





# A couple of very basic tests
my $Linker = HTML::TrackerLink->new();
ok( defined $Linker, "->new() returns defined" );
ok( $Linker, "->new() returns true" );
isa_ok( $Linker, 'HTML::TrackerLink' );

1;
