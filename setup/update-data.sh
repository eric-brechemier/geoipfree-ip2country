#!/bin/sh
# Update IpToCountry database by Webnet77
#
# Note:
# For typical usage, this database should be updated once a month.
#
# Reference:
# [1] IP to Country Database (IPv4 and IPv6)
# http://software77.net/geo-ip/

# Config
baseDownloadUrl='http://software77.net/geo-ip/?DL='
geoipfreeFormat='4'
geoipfreeDownloadUrl="${baseDownloadUrl}${geoipfreeFormat}"
geoipfreeFilePath='data/IpToCountry.dat'

echo 'Switch to root folder of the project'
cd "$(dirname $0)"
cd ..
echo "$(pwd)"

echo 'Download IpToCountry database in Geo::IPfree format IPV4'
wget \
  --output-document="$geoipfreeFilePath" \
  "$geoipfreeDownloadUrl"
exit
ls -l data
