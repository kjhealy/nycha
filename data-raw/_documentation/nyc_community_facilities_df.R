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
