# NYCHA residential addresses (spatial)

Point geometries for the NYCHA residential addresses in
[nyc_addresses_df](https://kjhealy.github.io/nycha/reference/nyc_addresses_df.md).
Rows missing latitude or longitude are dropped. Coordinates reprojected
to EPSG:2263, NAD83 / New York Long Island (ftUS).

## Usage

``` r
nyc_addresses_sf
```

## Format

### `nyc_addresses_sf`

A simple feature collection with one row per geocoded address and all of
the columns in
[nyc_addresses_df](https://kjhealy.github.io/nycha/reference/nyc_addresses_df.md)
except `latitude` and `longitude`, which are replaced by a `geometry`
column.

- geometry:

  Point geometry in EPSG:2263.

## Source

NYC OpenData:
<https://data.cityofnewyork.us/Housing-Development/NYCHA-Residential-Addresses/k6ya-3sk4>

## Author

Kieran Healy
