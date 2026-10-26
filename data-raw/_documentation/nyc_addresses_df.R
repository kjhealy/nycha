#' NYCHA residential addresses
#'
#' All residential addresses associated with NYCHA developments, including
#' building, stairhall, and tax-lot identifiers, plus geographic and
#' administrative boundary information.
#'
#' @format ## `nyc_addresses_df`
#' A tibble with 2,955 rows and 27 columns:
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
#'   \item{zip_code}{Five-digit ZIP code, e.g. `"10456"` (character).}
#'   \item{bin}{Building Identification Number (BIN), Department of City Planning.}
#'   \item{block}{Tax block.}
#'   \item{lot}{Tax lot (character).}
#'   \item{bbl}{Borough-block-lot identifier (10-digit concatenation).}
#'   \item{census_tract_2020}{2020 census tract as given in the source
#'     (character). The source uses two encodings. A whole tract has its
#'     label, e.g. `"145"` for tract 145. A split tract has its six-digit
#'     tract code without the leading zero, e.g. `"15101"` for tract 151.01.
#'     Use `tract_geoid` to join to census data.}
#'   \item{tract_geoid}{11-digit 2020 census tract GEOID (state, county, and
#'     tract), e.g. `"36005014500"` (character). Assigned from `latitude`
#'     and `longitude` with `nycmaps::nyc_census_tracts_2020_sf`.}
#'   \item{nta_code}{2020 Neighborhood Tabulation Area code.}
#'   \item{nta_name}{2020 Neighborhood Tabulation Area name.}
#'   \item{community_district}{Community District.}
#'   \item{city_council_district}{New York City Council district.}
#'   \item{state_assembly_district}{New York State Assembly district.}
#'   \item{state_senate_district}{New York State Senate district.}
#'   \item{us_congressional_district}{U.S. Congressional district.}
#'   \item{privately_managed}{`TRUE` if the property is privately managed
#'     under the Rental Assistance Demonstration (RAD/PACT), otherwise
#'     `FALSE` (logical).}
#'   \item{latitude}{Latitude (WGS 84).}
#'   \item{longitude}{Longitude (WGS 84).}
#' }
#' @details
#' The NYC Open Data export formats some identifier fields with thousands
#' separators, e.g. ZIP code `"10,456"`. The separators are removed.
#'
#' The coordinates are address points at the building frontage: the median
#' distance to the building footprint with the same BIN is about 3 feet.
#' Other geocoders place the same addresses differently. 311 service
#' requests (`nyc311`) are geocoded to the street centerline: for 311
#' requests at NYCHA addresses in 2022-2025, the 311 point is a median of
#' 26 m from the building, and about 100 m at the 90th percentile, because
#' many NYCHA buildings are set back from the street in superblocks.
#' Distance joins to these points, and point-in-polygon joins to
#' [nyc_developments_sf], miss most such records.
#'
#' To match other data to NYCHA addresses, join on `bbl` (`nyc311` has it
#' from version 0.0.3.9000, `nycpluto` throughout), or on `bin` where the
#' other data have it. Matching on `zip_code` and a normalized `address`
#' (upper case, ordinal suffixes dropped, so `"12TH STREET"` becomes
#' `"12 STREET"`) also works, but finds about 10% fewer 311 requests than
#' `bbl`.
#'
#' @author Kieran Healy
#' @source NYC OpenData: <https://data.cityofnewyork.us/Housing-Development/NYCHA-Residential-Addresses/k6ya-3sk4>
"nyc_addresses_df"
