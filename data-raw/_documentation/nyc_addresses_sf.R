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
