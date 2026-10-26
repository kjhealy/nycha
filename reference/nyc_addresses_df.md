# NYCHA residential addresses

All residential addresses associated with NYCHA developments, including
building, stairhall, and tax-lot identifiers, plus geographic and
administrative boundary information.

## Usage

``` r
nyc_addresses_df
```

## Format

### `nyc_addresses_df`

A tibble with 2,955 rows and 27 columns:

- development:

  Development name.

- tds_num:

  Tenant Data System (TDS) development number.

- building_num:

  Building number within development.

- stairhall_num:

  Stairhall number within building.

- borough:

  New York City borough (title case).

- house_num:

  Street number portion of the address.

- street:

  Street name.

- address:

  Full street address.

- city:

  Postal city (typically Bronx, Brooklyn, New York, etc.).

- state:

  State (NY).

- zip_code:

  Five-digit ZIP code, e.g. `"10456"` (character).

- bin:

  Building Identification Number (BIN), Department of City Planning.

- block:

  Tax block.

- lot:

  Tax lot (character).

- bbl:

  Borough-block-lot identifier (10-digit concatenation).

- census_tract_2020:

  2020 census tract as given in the source (character). The source uses
  two encodings. A whole tract has its label, e.g. `"145"` for
  tract 145. A split tract has its six-digit tract code without the
  leading zero, e.g. `"15101"` for tract 151.01. Use `tract_geoid` to
  join to census data.

- tract_geoid:

  11-digit 2020 census tract GEOID (state, county, and tract), e.g.
  `"36005014500"` (character). Assigned from `latitude` and `longitude`
  with `nycmaps::nyc_census_tracts_2020_sf`.

- nta_code:

  2020 Neighborhood Tabulation Area code.

- nta_name:

  2020 Neighborhood Tabulation Area name.

- community_district:

  Community District.

- city_council_district:

  New York City Council district.

- state_assembly_district:

  New York State Assembly district.

- state_senate_district:

  New York State Senate district.

- us_congressional_district:

  U.S. Congressional district.

- privately_managed:

  `TRUE` if the property is privately managed under the Rental
  Assistance Demonstration (RAD/PACT), otherwise `FALSE` (logical).

- latitude:

  Latitude (WGS 84).

- longitude:

  Longitude (WGS 84).

## Source

NYC OpenData:
<https://data.cityofnewyork.us/Housing-Development/NYCHA-Residential-Addresses/k6ya-3sk4>

## Details

The NYC Open Data export formats some identifier fields with thousands
separators, e.g. ZIP code `"10,456"`. The separators are removed.

The coordinates are address points at the building frontage: the median
distance to the building footprint with the same BIN is about 3 feet.
Other geocoders place the same addresses differently. 311 service
requests (`nyc311`) are geocoded to the street centerline: for 311
requests at NYCHA addresses in 2022-2025, the 311 point is a median of
26 m from the building, and about 100 m at the 90th percentile, because
many NYCHA buildings are set back from the street in superblocks.
Distance joins to these points, and point-in-polygon joins to
[nyc_developments_sf](https://kjhealy.github.io/nycha/reference/nyc_developments_sf.md),
miss most such records.

To match other data to NYCHA addresses, join on `bbl` (`nyc311` has it
from version 0.0.3.9000, `nycpluto` throughout), or on `bin` where the
other data have it. Matching on `zip_code` and a normalized `address`
(upper case, ordinal suffixes dropped, so `"12TH STREET"` becomes
`"12 STREET"`) also works, but finds about 10% fewer 311 requests than
`bbl`.

## Author

Kieran Healy
