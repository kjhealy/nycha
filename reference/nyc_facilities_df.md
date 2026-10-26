# NYCHA facilities and service centers

Occupied and vacant facilities in NYCHA's portfolio drawn from Facility
Planning (commercial spaces) and Community Operations (community
centers, senior centers, day care centers, health centers, etc.),
including the five Community Operations borough offices.

## Usage

``` r
nyc_facilities_df
```

## Format

### `nyc_facilities_df`

A tibble with 536 rows and 16 columns:

- borough:

  New York City borough (title case).

- development_name:

  Associated NYCHA development.

- address:

  Street address.

- status:

  Facility status (e.g., “Occupied”, “Vacant”).

- sponsor:

  Sponsoring organization.

- postcode:

  Five-digit ZIP code (character).

- type:

  Facility type (e.g., community center, senior center, day care, health
  center, commercial space).

- latitude:

  Latitude (WGS 84).

- longitude:

  Longitude (WGS 84).

- community_board:

  Community Board.

- community_council:

  Community Council district.

- census_tract:

  Census tract as given in the source (character), with the same two
  encodings as `census_tract_2020` in
  [nyc_addresses_df](https://kjhealy.github.io/nycha/reference/nyc_addresses_df.md).
  Use `tract_geoid` to join to census data.

- tract_geoid:

  11-digit 2020 census tract GEOID (character). Assigned from `latitude`
  and `longitude` with `nycmaps::nyc_census_tracts_2020_sf`. `NA` for
  facilities without coordinates.

- bin:

  Building Identification Number (BIN), seven digits (character).

- bbl:

  Borough-block-lot identifier, ten digits (character).

- nta:

  Neighborhood Tabulation Area.

## Source

NYC OpenData:
<https://data.cityofnewyork.us/Housing-Development/NYCHA-Facilities-and-Service-Centers/d4iy-9uh7>

## Details

Source data reflects NYCHA's property directory as of December 2012. Two
commercial spaces in the directory are not part of the Facility Planning
portfolio.

The NYC Open Data export formats `bin`, `bbl`, and some `census_tract`
values with thousands separators, e.g. BBL `"4,021,590,002"`. The
separators are removed.

## Author

Kieran Healy
