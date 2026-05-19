# Directory of NYCHA community facilities

Directory of community facilities (child care, senior centers, health
centers, community centers, etc.) located on or sponsored by NYCHA
properties.

## Usage

``` r
nyc_community_facilities_df
```

## Format

### `nyc_community_facilities_df`

A tibble with 441 rows and 16 columns:

- funding_agency:

  Agency providing funding for the facility.

- borough:

  New York City borough (title case).

- program_type:

  Type of program (e.g., “Senior Center”, “Day Care”).

- status:

  Facility status (e.g., “Active”).

- development:

  Associated NYCHA development.

- address:

  Street address.

- sponsor:

  Sponsoring organization.

- postcode:

  ZIP code.

- latitude:

  Latitude (WGS 84).

- longitude:

  Longitude (WGS 84).

- community_board:

  Community Board.

- council_district:

  New York City Council district.

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
<https://data.cityofnewyork.us/Housing-Development/Directory-Of-NYCHA-Community-Facilities/r6n9-zw2y>

## Author

Kieran Healy
