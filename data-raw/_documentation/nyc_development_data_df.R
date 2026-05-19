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
