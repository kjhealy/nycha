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
