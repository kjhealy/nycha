# NYCHA Development Data Book

Per-development statistics from the NYCHA Development Data Book,
including counts of apartments, rooms, population, buildings, stairhalls
and stories; site area; building coverage; development cost; rents; and
administrative-district assignments.

## Usage

``` r
nyc_development_data_df
```

## Format

### `nyc_development_data_df`

A tibble with 346 rows and 52 columns:

- data_as_of:

  Snapshot date (`Date`).

- development:

  Development name.

- hud_amp_number:

  HUD Asset Management Project (AMP) number.

- tds_number:

  Tenant Data System (TDS) development number.

- consolidated_tds_number:

  Consolidated TDS number.

- development_edp_number:

  Development EDP number.

- operating_edp_number:

  Operating EDP number.

- hud_number:

  HUD project number.

- program:

  Funding program (e.g., Federal, State, Mixed).

- method:

  Method (e.g., Conventional).

- type:

  Building type (e.g., Senior, Family).

- number_of_section_8_transition_apartments:

  Apartments in Section 8 transition.

- number_of_current_apartments:

  Number of current apartments.

- total_number_of_apartments:

  Total apartments.

- number_of_rental_rooms:

  Number of rental rooms.

- avg_no_r_r_per_apartment:

  Average rental rooms per apartment.

- population_section_8_transition:

  Population in Section 8 transition units.

- population_public_housing:

  Population in public-housing units.

- total_population:

  Total population.

- total_fixed_income_household:

  Number of fixed-income households.

- percent_fixed_income_households:

  Percent fixed-income households (proportion 0-1).

- number_of_residential_bldgs:

  Number of residential buildings.

- number_of_non_residential_bldgs:

  Number of non-residential buildings.

- number_of_stairhalls:

  Number of stairhalls.

- number_of_stories:

  Number of stories. Character, because some developments report a range
  (e.g., “15-21”).

- total_area_sq_ft:

  Total site area (square feet).

- acres:

  Total site area (acres).

- net_dev_area_sq_ft:

  Net development area (square feet).

- excluding_park_acres:

  Area excluding park acres.

- bldg_coverage_sq_ft:

  Building footprint coverage (square feet).

- cubage_cu_ft:

  Building cubage (cubic feet).

- bldg_coverage_percent:

  Building coverage as a share of site (proportion 0-1).

- density:

  Density (units per acre or similar; consult source).

- development_cost:

  Original development cost, USD.

- per_rental_room:

  Cost per rental room, USD.

- avg_monthly_gross_rent:

  Average monthly gross rent, USD.

- location_street_a:

  Street boundary A.

- location_street_b:

  Street boundary B.

- location_street_c:

  Street boundary C.

- location_street_d:

  Street boundary D.

- borough:

  New York City borough (title case).

- community_district:

  Community District.

- us_congressional_district:

  U.S. Congressional district.

- ny_state_senate_district:

  New York State Senate district.

- ny_state_assembly_district:

  New York State Assembly district.

- ny_city_council_district:

  New York City Council district.

- completion_date:

  Date construction was completed (`Date`).

- federalized_development:

  Logical: federalized development.

- senior_development:

  Logical: senior-only development.

- electricity_paid_by_residents:

  Logical: residents pay electricity directly.

- private_management:

  Logical: privately managed under RAD/PACT.

- rad_transferred_date:

  Date transferred under the Rental Assistance Demonstration (RAD/PACT),
  if applicable (`Date`).

## Source

NYC OpenData:
<https://data.cityofnewyork.us/Housing-Development/NYCHA-Development-Data-Book/5x4x-9zai>

## Author

Kieran Healy
