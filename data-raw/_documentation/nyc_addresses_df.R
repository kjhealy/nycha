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
