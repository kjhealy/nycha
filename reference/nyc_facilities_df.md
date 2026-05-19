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

A tibble with 536 rows and 15 columns:

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

  ZIP code.

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

  Census tract.

- bin:

  Building Identification Number (BIN).

- bbl:

  Borough-block-lot identifier.

- nta:

  Neighborhood Tabulation Area.

## Source

NYC OpenData:
<https://data.cityofnewyork.us/Housing-Development/NYCHA-Facilities-and-Service-Centers/d4iy-9uh7>

## Details

Source data reflects NYCHA's property directory as of December 2012. Two
commercial spaces in the directory are not part of the Facility Planning
portfolio.

## Author

Kieran Healy
