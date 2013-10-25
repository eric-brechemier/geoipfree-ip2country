#!/bin/sh
# Install Geo::IPfree module from CPAN
# and download initial data from software77.net
# in data/ folder in current project, if not present already.
#
# Note: the IpToCountry data should be updated once a month for typical usage,
# using a separate script: setup/update-data.sh

echo 'Install Geo::IPfree (using sudo)'
sudo cpan Geo::IPfree

echo 'Switch to root folder of the project'
cd "$(dirname $0)"
cd ..
echo "$(pwd)"

if [ -d data ]
then
  echo 'Folder data/ exists already:'
  ls -l data
  echo 'Use setup/update-data.sh if you wish to update downloaded data.'
else
  echo 'Create data folder'
  mkdir data
  echo 'Download initial data'
  ./setup/update-data.sh
fi
