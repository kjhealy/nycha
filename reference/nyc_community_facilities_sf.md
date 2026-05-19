# Directory of NYCHA community facilities (spatial)

Point geometries for the NYCHA community facilities in
[nyc_community_facilities_df](https://kjhealy.github.io/nycha/reference/nyc_community_facilities_df.md).
Rows missing latitude or longitude are dropped. Coordinates reprojected
to EPSG:2263, NAD83 / New York Long Island (ftUS).

## Usage

``` r
nyc_community_facilities_sf
```

## Format

### `nyc_community_facilities_sf`

A simple feature collection with one row per geocoded facility and all
of the columns in
[nyc_community_facilities_df](https://kjhealy.github.io/nycha/reference/nyc_community_facilities_df.md)
except `latitude` and `longitude`, which are replaced by a `geometry`
column.

- geometry:

  Point geometry in EPSG:2263.

## Source

NYC OpenData:
<https://data.cityofnewyork.us/Housing-Development/Directory-Of-NYCHA-Community-Facilities/r6n9-zw2y>

## Author

Kieran Healy
