# NYCHA public housing developments

Boundary polygons for the New York City Housing Authority's public
housing developments. Reprojected to EPSG:2263, NAD83 / New York Long
Island (ftUS).

## Usage

``` r
nyc_developments_sf
```

## Format

### `nyc_developments_sf`

A simple feature collection with 216 rows and 4 columns:

- development:

  Development name (e.g., “1162-1176 WASHINGTON AVENUE”).

- tds_num:

  Tenant Data System (TDS) development number.

- borough:

  New York City borough (title case).

- geometry:

  Multipolygon geometry in EPSG:2263.

## Source

<https://data.cityofnewyork.us/Housing-Development/Map-of-NYCHA-Developments/i9rv-hdr5>

## Details

NYCHA's portfolio includes Section 8 transition, federalized public
housing, and RAD/PACT properties. The development polygons are published
on NYC OpenData and are updated periodically.

## Author

Kieran Healy
