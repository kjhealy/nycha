#' NYCHA residential addresses
#'
#' All residential addresses associated with NYCHA developments, including
#' building, stairhall, and tax-lot identifiers, plus geographic and
#' administrative boundary information.
#'
#' @format ## `nyc_addresses_df`
#' A tibble with 2,955 rows and 26 columns:
#' \describe{
#'   \item{development}{Development name.}
#'   \item{tds_num}{Tenant Data System (TDS) development number.}
#'   \item{building_num}{Building number within development.}
#'   \item{stairhall_num}{Stairhall number within building.}
#'   \item{borough}{New York City borough (title case).}
#'   \item{house_num}{Street number portion of the address.}
#'   \item{street}{Street name.}
#'   \item{address}{Full street address.}
#'   \item{city}{Postal city (typically Bronx, Brooklyn, New York, etc.).}
#'   \item{state}{State (NY).}
#'   \item{zip_code}{ZIP code.}
#'   \item{bin}{Building Identification Number (BIN), Department of City Planning.}
#'   \item{block}{Tax block.}
#'   \item{lot}{Tax lot.}
#'   \item{bbl}{Borough-block-lot identifier (10-digit concatenation).}
#'   \item{census_tract_2020}{2020 Census tract.}
#'   \item{nta_code}{2020 Neighborhood Tabulation Area code.}
#'   \item{nta_name}{2020 Neighborhood Tabulation Area name.}
#'   \item{community_district}{Community District.}
#'   \item{city_council_district}{New York City Council district.}
#'   \item{state_assembly_district}{New York State Assembly district.}
#'   \item{state_senate_district}{New York State Senate district.}
#'   \item{us_congressional_district}{U.S. Congressional district.}
#'   \item{privately_managed}{Logical: whether the property is privately
#'     managed under the Rental Assistance Demonstration (RAD/PACT).}
#'   \item{latitude}{Latitude (WGS 84).}
#'   \item{longitude}{Longitude (WGS 84).}
#' }
#'
#' @author Kieran Healy
#' @source NYC OpenData: <https://data.cityofnewyork.us/Housing-Development/NYCHA-Residential-Addresses/k6ya-3sk4>
"nyc_addresses_df"

#' NYCHA residential addresses (spatial)
#'
#' Point geometries for the NYCHA residential addresses in
#' [nyc_addresses_df]. Rows missing latitude or longitude are dropped.
#' Coordinates reprojected to EPSG:2263, NAD83 / New York Long Island
#' (ftUS).
#'
#' @format ## `nyc_addresses_sf`
#' A simple feature collection with one row per geocoded address and
#' all of the columns in [nyc_addresses_df] except `latitude` and
#' `longitude`, which are replaced by a `geometry` column.
#' \describe{
#'   \item{geometry}{Point geometry in EPSG:2263.}
#' }
#'
#' @author Kieran Healy
#' @source NYC OpenData: <https://data.cityofnewyork.us/Housing-Development/NYCHA-Residential-Addresses/k6ya-3sk4>
"nyc_addresses_sf"

#' Directory of NYCHA community facilities
#'
#' Directory of community facilities (child care, senior centers,
#' health centers, community centers, etc.) located on or sponsored by
#' NYCHA properties.
#'
#' @format ## `nyc_community_facilities_df`
#' A tibble with 441 rows and 16 columns:
#' \describe{
#'   \item{funding_agency}{Agency providing funding for the facility.}
#'   \item{borough}{New York City borough (title case).}
#'   \item{program_type}{Type of program (e.g., \dQuote{Senior Center},
#'     \dQuote{Day Care}).}
#'   \item{status}{Facility status (e.g., \dQuote{Active}).}
#'   \item{development}{Associated NYCHA development.}
#'   \item{address}{Street address.}
#'   \item{sponsor}{Sponsoring organization.}
#'   \item{postcode}{ZIP code.}
#'   \item{latitude}{Latitude (WGS 84).}
#'   \item{longitude}{Longitude (WGS 84).}
#'   \item{community_board}{Community Board.}
#'   \item{council_district}{New York City Council district.}
#'   \item{census_tract}{Census tract.}
#'   \item{bin}{Building Identification Number (BIN).}
#'   \item{bbl}{Borough-block-lot identifier.}
#'   \item{nta}{Neighborhood Tabulation Area.}
#' }
#'
#' @author Kieran Healy
#' @source NYC OpenData: <https://data.cityofnewyork.us/Housing-Development/Directory-Of-NYCHA-Community-Facilities/r6n9-zw2y>
"nyc_community_facilities_df"

#' Directory of NYCHA community facilities (spatial)
#'
#' Point geometries for the NYCHA community facilities in
#' [nyc_community_facilities_df]. Rows missing latitude or longitude
#' are dropped. Coordinates reprojected to EPSG:2263, NAD83 / New York
#' Long Island (ftUS).
#'
#' @format ## `nyc_community_facilities_sf`
#' A simple feature collection with one row per geocoded facility and
#' all of the columns in [nyc_community_facilities_df] except `latitude`
#' and `longitude`, which are replaced by a `geometry` column.
#' \describe{
#'   \item{geometry}{Point geometry in EPSG:2263.}
#' }
#'
#' @author Kieran Healy
#' @source NYC OpenData: <https://data.cityofnewyork.us/Housing-Development/Directory-Of-NYCHA-Community-Facilities/r6n9-zw2y>
"nyc_community_facilities_sf"

#' NYCHA Development Data Book
#'
#' Per-development statistics from the NYCHA Development Data Book,
#' including counts of apartments, rooms, population, buildings,
#' stairhalls and stories; site area; building coverage; development
#' cost; rents; and administrative-district assignments.
#'
#' @format ## `nyc_development_data_df`
#' A tibble with 346 rows and 52 columns:
#' \describe{
#'   \item{data_as_of}{Snapshot date (`Date`).}
#'   \item{development}{Development name.}
#'   \item{hud_amp_number}{HUD Asset Management Project (AMP) number.}
#'   \item{tds_number}{Tenant Data System (TDS) development number.}
#'   \item{consolidated_tds_number}{Consolidated TDS number.}
#'   \item{development_edp_number}{Development EDP number.}
#'   \item{operating_edp_number}{Operating EDP number.}
#'   \item{hud_number}{HUD project number.}
#'   \item{program}{Funding program (e.g., Federal, State, Mixed).}
#'   \item{method}{Method (e.g., Conventional).}
#'   \item{type}{Building type (e.g., Senior, Family).}
#'   \item{number_of_section_8_transition_apartments}{Apartments in Section 8 transition.}
#'   \item{number_of_current_apartments}{Number of current apartments.}
#'   \item{total_number_of_apartments}{Total apartments.}
#'   \item{number_of_rental_rooms}{Number of rental rooms.}
#'   \item{avg_no_r_r_per_apartment}{Average rental rooms per apartment.}
#'   \item{population_section_8_transition}{Population in Section 8 transition units.}
#'   \item{population_public_housing}{Population in public-housing units.}
#'   \item{total_population}{Total population.}
#'   \item{total_fixed_income_household}{Number of fixed-income households.}
#'   \item{percent_fixed_income_households}{Percent fixed-income households
#'     (proportion 0-1).}
#'   \item{number_of_residential_bldgs}{Number of residential buildings.}
#'   \item{number_of_non_residential_bldgs}{Number of non-residential buildings.}
#'   \item{number_of_stairhalls}{Number of stairhalls.}
#'   \item{number_of_stories}{Number of stories. Character, because some
#'     developments report a range (e.g., \dQuote{15-21}).}
#'   \item{total_area_sq_ft}{Total site area (square feet).}
#'   \item{acres}{Total site area (acres).}
#'   \item{net_dev_area_sq_ft}{Net development area (square feet).}
#'   \item{excluding_park_acres}{Area excluding park acres.}
#'   \item{bldg_coverage_sq_ft}{Building footprint coverage (square feet).}
#'   \item{cubage_cu_ft}{Building cubage (cubic feet).}
#'   \item{bldg_coverage_percent}{Building coverage as a share of site
#'     (proportion 0-1).}
#'   \item{density}{Density (units per acre or similar; consult source).}
#'   \item{development_cost}{Original development cost, USD.}
#'   \item{per_rental_room}{Cost per rental room, USD.}
#'   \item{avg_monthly_gross_rent}{Average monthly gross rent, USD.}
#'   \item{location_street_a}{Street boundary A.}
#'   \item{location_street_b}{Street boundary B.}
#'   \item{location_street_c}{Street boundary C.}
#'   \item{location_street_d}{Street boundary D.}
#'   \item{borough}{New York City borough (title case).}
#'   \item{community_district}{Community District.}
#'   \item{us_congressional_district}{U.S. Congressional district.}
#'   \item{ny_state_senate_district}{New York State Senate district.}
#'   \item{ny_state_assembly_district}{New York State Assembly district.}
#'   \item{ny_city_council_district}{New York City Council district.}
#'   \item{completion_date}{Date construction was completed (`Date`).}
#'   \item{federalized_development}{Logical: federalized development.}
#'   \item{senior_development}{Logical: senior-only development.}
#'   \item{electricity_paid_by_residents}{Logical: residents pay
#'     electricity directly.}
#'   \item{private_management}{Logical: privately managed under
#'     RAD/PACT.}
#'   \item{rad_transferred_date}{Date transferred under the Rental
#'     Assistance Demonstration (RAD/PACT), if applicable (`Date`).}
#' }
#'
#' @author Kieran Healy
#' @source NYC OpenData: <https://data.cityofnewyork.us/Housing-Development/NYCHA-Development-Data-Book/5x4x-9zai>
"nyc_development_data_df"

#' NYCHA public housing developments
#'
#' Boundary polygons for the New York City Housing Authority's public
#' housing developments. Reprojected to EPSG:2263, NAD83 / New York Long
#' Island (ftUS).
#'
#' @format ## `nyc_developments_sf`
#' A simple feature collection with 216 rows and 4 columns:
#' \describe{
#'   \item{development}{Development name (e.g., \dQuote{1162-1176 WASHINGTON AVENUE}).}
#'   \item{tds_num}{Tenant Data System (TDS) development number.}
#'   \item{borough}{New York City borough (title case).}
#'   \item{geometry}{Multipolygon geometry in EPSG:2263.}
#' }
#' @details
#' NYCHA's portfolio includes Section 8 transition, federalized public
#' housing, and RAD/PACT properties. The development polygons are
#' published on NYC OpenData and are updated periodically.
#'
#' @author Kieran Healy
#' @source <https://data.cityofnewyork.us/Housing-Development/Map-of-NYCHA-Developments/i9rv-hdr5>
"nyc_developments_sf"

#' NYCHA facilities and service centers
#'
#' Occupied and vacant facilities in NYCHA's portfolio drawn from
#' Facility Planning (commercial spaces) and Community Operations
#' (community centers, senior centers, day care centers, health centers,
#' etc.), including the five Community Operations borough offices.
#'
#' @format ## `nyc_facilities_df`
#' A tibble with 536 rows and 15 columns:
#' \describe{
#'   \item{borough}{New York City borough (title case).}
#'   \item{development_name}{Associated NYCHA development.}
#'   \item{address}{Street address.}
#'   \item{status}{Facility status (e.g., \dQuote{Occupied}, \dQuote{Vacant}).}
#'   \item{sponsor}{Sponsoring organization.}
#'   \item{postcode}{ZIP code.}
#'   \item{type}{Facility type (e.g., community center, senior center,
#'     day care, health center, commercial space).}
#'   \item{latitude}{Latitude (WGS 84).}
#'   \item{longitude}{Longitude (WGS 84).}
#'   \item{community_board}{Community Board.}
#'   \item{community_council}{Community Council district.}
#'   \item{census_tract}{Census tract.}
#'   \item{bin}{Building Identification Number (BIN).}
#'   \item{bbl}{Borough-block-lot identifier.}
#'   \item{nta}{Neighborhood Tabulation Area.}
#' }
#' @details
#' Source data reflects NYCHA's property directory as of December 2012.
#' Two commercial spaces in the directory are not part of the Facility
#' Planning portfolio.
#'
#' @author Kieran Healy
#' @source NYC OpenData: <https://data.cityofnewyork.us/Housing-Development/NYCHA-Facilities-and-Service-Centers/d4iy-9uh7>
"nyc_facilities_df"

#' NYCHA facilities and service centers (spatial)
#'
#' Point geometries for the NYCHA facilities in [nyc_facilities_df].
#' Rows missing latitude or longitude are dropped. Coordinates
#' reprojected to EPSG:2263, NAD83 / New York Long Island (ftUS).
#'
#' @format ## `nyc_facilities_sf`
#' A simple feature collection with one row per geocoded facility and
#' all of the columns in [nyc_facilities_df] except `latitude` and
#' `longitude`, which are replaced by a `geometry` column.
#' \describe{
#'   \item{geometry}{Point geometry in EPSG:2263.}
#' }
#'
#' @author Kieran Healy
#' @source NYC OpenData: <https://data.cityofnewyork.us/Housing-Development/NYCHA-Facilities-and-Service-Centers/d4iy-9uh7>
"nyc_facilities_sf"

#' NYCHA Resident Data Book summary
#'
#' Aggregate population, family, income and welfare statistics for
#' NYCHA residents, broken down by program and State/City vs. Section 8.
#'
#' @format ## `nyc_resident_summary_df`
#' A tibble with 26 rows and 43 columns. Percentage columns are stored
#' as proportions (0-1). Money columns are in USD.
#' \describe{
#'   \item{program}{Program (e.g., Federal, State/City, Section 8).}
#'   \item{statecity_section8_flag}{State/City vs. Section 8 indicator.}
#'   \item{total_families}{Total number of families.}
#'   \item{total_female_headed_families}{Female-headed families.}
#'   \item{total_male_headed_families}{Male-headed families.}
#'   \item{total_population}{Total population.}
#'   \item{average_family_size}{Average family size.}
#'   \item{total_minors_under_18}{Minors under 18.}
#'   \item{average_minors_per_family}{Average minors per family.}
#'   \item{total_minors_as_percent_of_population}{Share of population
#'     under 18 (proportion 0-1).}
#'   \item{all_average_total_gross_income}{Average total gross income, USD.}
#'   \item{all_average_gross_rent}{Average gross rent, USD.}
#'   \item{total_hoh_62_years_and_over}{Heads of household aged 62+.}
#'   \item{total_hoh_62_years_and_over_as_percent_of_families}{Share of
#'     families with head of household 62+ (proportion 0-1).}
#'   \item{total_female_headed_hoh_62_years_and_over}{Female heads of
#'     household 62+.}
#'   \item{total_male_headed_hoh_62_years_and_over}{Male heads of
#'     household 62+.}
#'   \item{total_elderly_single_person_families}{Elderly single-person
#'     families.}
#'   \item{total_elderly_population}{Total elderly population.}
#'   \item{total_62_years_and_over_as_percent_of_population}{Share of
#'     population aged 62+ (proportion 0-1).}
#'   \item{total_families_on_welfare}{Families on welfare.}
#'   \item{total_families_on_welfare_and_hoh_elderly}{Families on welfare
#'     with elderly head of household.}
#'   \item{total_families_on_full_welfare}{Families on full welfare.}
#'   \item{total_families_on_welfare_as_percent_of_families}{Share of
#'     families on welfare (proportion 0-1).}
#'   \item{total_single_parent_grandparent_families_with_minors}{Single
#'     parent/grandparent families with minor children.}
#'   \item{total_female_headed_single_parent_grandparent_with_minors}{Female-headed
#'     single parent/grandparent families with minors.}
#'   \item{total_male_headed_single_parent_grandparent_with_minors}{Male-headed
#'     single parent/grandparent families with minors.}
#'   \item{total_single_parent_grandparent_families_on_welfare}{Single
#'     parent/grandparent families on welfare.}
#'   \item{total_single_parent_grandparent_with_minors_as_percent_of_families}{Share
#'     of families that are single parent/grandparent with minors
#'     (proportion 0-1).}
#'   \item{total_families_1_or_more_employed}{Families with 1+ employed
#'     adults.}
#'   \item{total_families_1_or_more_employed_as_percent_of_families}{Share
#'     of families with 1+ employed (proportion 0-1).}
#'   \item{total_families_2nd_adult_employed}{Families with 2nd adult
#'     employed.}
#'   \item{all_families_average_years_in_public_housing}{Average years
#'     in public housing.}
#'   \item{residents_under_4}{Residents under age 4.}
#'   \item{residents_4_to_5}{Residents aged 4-5.}
#'   \item{residents_6_to_9}{Residents aged 6-9.}
#'   \item{residents_10_to_13}{Residents aged 10-13.}
#'   \item{residents_14_to_17}{Residents aged 14-17.}
#'   \item{residents_18_to_20}{Residents aged 18-20.}
#'   \item{residents_21_to_49}{Residents aged 21-49.}
#'   \item{residents_50_to_61}{Residents aged 50-61.}
#'   \item{residents_62_plus}{Residents aged 62+.}
#'   \item{total_fixed_income_families}{Families on fixed income.}
#'   \item{total_fixed_income_families_as_percent_of_families}{Share of
#'     families on fixed income (proportion 0-1).}
#' }
#'
#' @author Kieran Healy
#' @source NYC OpenData: <https://data.cityofnewyork.us/Housing-Development/NYCHA-Resident-Data-Book-Summary/5j2e-zhmh>
"nyc_resident_summary_df"

#' Housing maintenance code violations on NYCHA properties
#'
#' Housing Maintenance Code violations issued by the NYC Department of
#' Housing Preservation and Development (HPD) at NYCHA properties.
#'
#' @format ## `nyc_violations_df`
#' A tibble with 3,475 rows and 35 columns:
#' \describe{
#'   \item{violation_id}{HPD violation ID.}
#'   \item{primary_bin}{Primary Building Identification Number (BIN).}
#'   \item{primary_boro_id}{Primary borough numeric identifier.}
#'   \item{primary_borough_name}{Primary borough name (title case).}
#'   \item{primary_house_number}{Primary house number on the violation record.}
#'   \item{primary_low_house_number}{Low end of house-number range, if any.}
#'   \item{primary_high_house_number}{High end of house-number range, if any.}
#'   \item{primary_street_name}{Primary street name.}
#'   \item{primary_postcode}{Primary ZIP code.}
#'   \item{development_name}{NYCHA development name.}
#'   \item{tds_number}{Tenant Data System (TDS) development number.}
#'   \item{stairhall_number}{Stairhall number.}
#'   \item{nycha_address_section_boro_id}{NYCHA address-section borough ID.}
#'   \item{nycha_address_section_borough}{NYCHA address-section borough name.}
#'   \item{nycha_address_section_house_number}{NYCHA address-section house number.}
#'   \item{nycha_address_section_street_name}{NYCHA address-section street name.}
#'   \item{nycha_address_section_post_code}{NYCHA address-section ZIP code.}
#'   \item{apartment}{Apartment identifier within the building.}
#'   \item{story}{Story (floor) of the violation.}
#'   \item{block}{Tax block.}
#'   \item{lot}{Tax lot.}
#'   \item{violation_description}{Free-text description of the violation.}
#'   \item{class}{Violation class: A (non-hazardous), B (hazardous),
#'     or C (immediately hazardous).}
#'   \item{inspection_date}{Date of inspection (`Date`).}
#'   \item{approved_date}{Date the violation was approved (`Date`).}
#'   \item{order_number}{Order number prefix indicating the section of the
#'     Housing Maintenance Code that the violation pertains to.}
#'   \item{issued_in_error}{Logical: whether the violation was later
#'     determined to have been issued in error.}
#'   \item{latitude}{Latitude (WGS 84).}
#'   \item{longitude}{Longitude (WGS 84).}
#'   \item{community_board}{Community Board.}
#'   \item{council_district}{New York City Council district.}
#'   \item{bin}{Building Identification Number (BIN).}
#'   \item{bbl}{Borough-block-lot identifier.}
#'   \item{census_tract_2020}{2020 Census tract.}
#'   \item{nta_2020}{2020 Neighborhood Tabulation Area.}
#' }
#'
#' @author Kieran Healy
#' @source NYC OpenData: <https://data.cityofnewyork.us/Housing-Development/Housing-Maintenance-Code-Violations-NYCHA-Properti/2eg8-fkny>
"nyc_violations_df"
