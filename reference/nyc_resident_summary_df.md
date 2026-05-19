# NYCHA Resident Data Book summary

Aggregate population, family, income and welfare statistics for NYCHA
residents, broken down by program and State/City vs. Section 8.

## Usage

``` r
nyc_resident_summary_df
```

## Format

### `nyc_resident_summary_df`

A tibble with 26 rows and 43 columns. Percentage columns are stored as
proportions (0-1). Money columns are in USD.

- program:

  Program (e.g., Federal, State/City, Section 8).

- statecity_section8_flag:

  State/City vs. Section 8 indicator.

- total_families:

  Total number of families.

- total_female_headed_families:

  Female-headed families.

- total_male_headed_families:

  Male-headed families.

- total_population:

  Total population.

- average_family_size:

  Average family size.

- total_minors_under_18:

  Minors under 18.

- average_minors_per_family:

  Average minors per family.

- total_minors_as_percent_of_population:

  Share of population under 18 (proportion 0-1).

- all_average_total_gross_income:

  Average total gross income, USD.

- all_average_gross_rent:

  Average gross rent, USD.

- total_hoh_62_years_and_over:

  Heads of household aged 62+.

- total_hoh_62_years_and_over_as_percent_of_families:

  Share of families with head of household 62+ (proportion 0-1).

- total_female_headed_hoh_62_years_and_over:

  Female heads of household 62+.

- total_male_headed_hoh_62_years_and_over:

  Male heads of household 62+.

- total_elderly_single_person_families:

  Elderly single-person families.

- total_elderly_population:

  Total elderly population.

- total_62_years_and_over_as_percent_of_population:

  Share of population aged 62+ (proportion 0-1).

- total_families_on_welfare:

  Families on welfare.

- total_families_on_welfare_and_hoh_elderly:

  Families on welfare with elderly head of household.

- total_families_on_full_welfare:

  Families on full welfare.

- total_families_on_welfare_as_percent_of_families:

  Share of families on welfare (proportion 0-1).

- total_single_parent_grandparent_families_with_minors:

  Single parent/grandparent families with minor children.

- total_female_headed_single_parent_grandparent_with_minors:

  Female-headed single parent/grandparent families with minors.

- total_male_headed_single_parent_grandparent_with_minors:

  Male-headed single parent/grandparent families with minors.

- total_single_parent_grandparent_families_on_welfare:

  Single parent/grandparent families on welfare.

- total_single_parent_grandparent_with_minors_as_percent_of_families:

  Share of families that are single parent/grandparent with minors
  (proportion 0-1).

- total_families_1_or_more_employed:

  Families with 1+ employed adults.

- total_families_1_or_more_employed_as_percent_of_families:

  Share of families with 1+ employed (proportion 0-1).

- total_families_2nd_adult_employed:

  Families with 2nd adult employed.

- all_families_average_years_in_public_housing:

  Average years in public housing.

- residents_under_4:

  Residents under age 4.

- residents_4_to_5:

  Residents aged 4-5.

- residents_6_to_9:

  Residents aged 6-9.

- residents_10_to_13:

  Residents aged 10-13.

- residents_14_to_17:

  Residents aged 14-17.

- residents_18_to_20:

  Residents aged 18-20.

- residents_21_to_49:

  Residents aged 21-49.

- residents_50_to_61:

  Residents aged 50-61.

- residents_62_plus:

  Residents aged 62+.

- total_fixed_income_families:

  Families on fixed income.

- total_fixed_income_families_as_percent_of_families:

  Share of families on fixed income (proportion 0-1).

## Source

NYC OpenData:
<https://data.cityofnewyork.us/Housing-Development/NYCHA-Resident-Data-Book-Summary/5j2e-zhmh>

## Author

Kieran Healy
