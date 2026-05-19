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

A tibble with 2,955 rows and 26 columns:

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

  ZIP code.

- bin:

  Building Identification Number (BIN), Department of City Planning.

- block:

  Tax block.

- lot:

  Tax lot.

- bbl:

  Borough-block-lot identifier (10-digit concatenation).

- census_tract_2020:

  2020 Census tract.

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

  Logical: whether the property is privately managed under the Rental
  Assistance Demonstration (RAD/PACT).

- latitude:

  Latitude (WGS 84).

- longitude:

  Longitude (WGS 84).

## Source

NYC OpenData:
<https://data.cityofnewyork.us/Housing-Development/NYCHA-Residential-Addresses/k6ya-3sk4>

## Author

Kieran Healy
