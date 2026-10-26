# nycha 0.0.1.9001

* Identifier fields no longer contain thousands separators. The NYC Open
  Data exports format some identifier fields as numbers, e.g. ZIP code
  `"10,456"` and BBL `"4,021,590,002"`. This affected `zip_code`, `lot`,
  and `census_tract_2020` in `nyc_addresses_df` and `nyc_addresses_sf`, and
  `bin`, `bbl`, and `census_tract` in `nyc_facilities_df` and
  `nyc_facilities_sf`. These values can now be joined to other data.

* `nyc_addresses_df`, `nyc_addresses_sf`, `nyc_facilities_df`, and
  `nyc_facilities_sf` have a new `tract_geoid` column, the 11-digit 2020
  census tract GEOID, assigned from each row's coordinates. The source tract
  columns use two different encodings.

* `privately_managed` in `nyc_addresses_df` and `nyc_addresses_sf` is now
  `FALSE`, not `NA`, for properties that are not privately managed.

# nycha 0.0.1.9000

* Initial version.
