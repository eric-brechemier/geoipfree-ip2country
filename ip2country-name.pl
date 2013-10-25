#!/usr/bin/perl
# Convert an IPv4 address to a 2-letter country code
#
# Usage: ip2country-code.pl ipAddress
# where ipAddress is an IPv4 address (###.###.###.###)
my $ipAddress = $ARGV[0];
# Config
my $geoipfreeDataPath='data/IpToCountry.dat';

if ( $ipAddress eq '' ) {
  print "Usage: ip2country-code.pl ipAddress\n";
  exit 1;
}

use File::Basename;
use Geo::IPfree;

chdir dirname($0);

my $geoIpFree = Geo::IPfree->new( $geoipfreeDataPath );
my ( $countryCode, $countryName ) = $geoIpFree->LookUp( $ipAddress );

print $countryName."\n";
