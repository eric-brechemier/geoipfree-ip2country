geoipfree-ip2country
====================

Shell scripts to convert an IP address to a Country
using [IpToCountry database by Webnet77][IpToCountry].

[IpToCountry]: http://software77.net/geo-ip/

### LANGUAGES ###

Shell (dash), Perl

### TARGET PLATFORM ###

Ubuntu 12.04 LTS

### DEPENDENCIES ###

* [Geo::IPfree][] module by Graciliano M. P. <gm@virtuasites.com.br>
  maintained by Brian Cassidy <bricas@cpan.org>.

[Geo::IPfree]: https://metacpan.org/pod/Geo::IPfree

### USAGE ###

* `setup/install.sh` - install dependencies and download Ip2Country data
* `ip2country-code.sh 8.8.8.8` - convert an IPv4 address to a country code
* `ip2country-name.sh 8.8.8.8` - convert an IPv4 address to a country name
* `setup/update-data.sh` - update Ip2Country data (once a month)

### AUTHOR ###

Eric Bréchemier <github@eric.brechemier.name>

### LICENSES ###

* MIT for this project
* [DonationWare][Ip2CountryLicense] for Ip2Country database by Webnet77
* [Same license as Perl][PerlLicense] (GPL/Artistic) for Geo::IPfree

[Ip2countryLicense]: http://software77.net/geo-ip/?license
[PerlLicense]: http://dev.perl.org/licenses/

