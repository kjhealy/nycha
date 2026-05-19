# Housing maintenance code violations on NYCHA properties

Housing Maintenance Code violations issued by the NYC Department of
Housing Preservation and Development (HPD) at NYCHA properties.

## Usage

``` r
nyc_violations_df
```

## Format

### `nyc_violations_df`

A tibble with 3,475 rows and 35 columns:

- violation_id:

  HPD violation ID.

- primary_bin:

  Primary Building Identification Number (BIN).

- primary_boro_id:

  Primary borough numeric identifier.

- primary_borough_name:

  Primary borough name (title case).

- primary_house_number:

  Primary house number on the violation record.

- primary_low_house_number:

  Low end of house-number range, if any.

- primary_high_house_number:

  High end of house-number range, if any.

- primary_street_name:

  Primary street name.

- primary_postcode:

  Primary ZIP code.

- development_name:

  NYCHA development name.

- tds_number:

  Tenant Data System (TDS) development number.

- stairhall_number:

  Stairhall number.

- nycha_address_section_boro_id:

  NYCHA address-section borough ID.

- nycha_address_section_borough:

  NYCHA address-section borough name.

- nycha_address_section_house_number:

  NYCHA address-section house number.

- nycha_address_section_street_name:

  NYCHA address-section street name.

- nycha_address_section_post_code:

  NYCHA address-section ZIP code.

- apartment:

  Apartment identifier within the building.

- story:

  Story (floor) of the violation.

- block:

  Tax block.

- lot:

  Tax lot.

- violation_description:

  Free-text description of the violation.

- class:

  Violation class: A (non-hazardous), B (hazardous), or C (immediately
  hazardous).

- inspection_date:

  Date of inspection (`Date`).

- approved_date:

  Date the violation was approved (`Date`).

- order_number:

  Order number prefix indicating the section of the Housing Maintenance
  Code that the violation pertains to.

- issued_in_error:

  Logical: whether the violation was later determined to have been
  issued in error.

- latitude:

  Latitude (WGS 84).

- longitude:

  Longitude (WGS 84).

- community_board:

  Community Board.

- council_district:

  New York City Council district.

- bin:

  Building Identification Number (BIN).

- bbl:

  Borough-block-lot identifier.

- census_tract_2020:

  2020 Census tract.

- nta_2020:

  2020 Neighborhood Tabulation Area.

## Source

NYC OpenData:
<https://data.cityofnewyork.us/Housing-Development/Housing-Maintenance-Code-Violations-NYCHA-Properti/2eg8-fkny>

## Author

Kieran Healy
