# Shared code and objects

library(devtools)
library(tidyverse)
library(here)
library(sf)
library(janitor)
library(readxl)

# NYC Open Data CSV exports format some identifier fields with thousands
# separators (ZIP "10,456", BBL "4,021,590,002"). Remove them.
strip_commas <- function(x) {
  gsub(",", "", x, fixed = TRUE)
}

# Add the 11-digit 2020 census tract GEOID of each row's latitude and
# longitude, from nycmaps::nyc_census_tracts_2020_sf. NA for rows without
# coordinates or outside every tract.
add_tract_geoid <- function(df) {
  tracts <- nycmaps::nyc_census_tracts_2020_sf |>
    select(tract_geoid = geoid)
  has_xy <- !is.na(df$latitude) & !is.na(df$longitude)
  pts <- df[has_xy, ] |>
    st_as_sf(coords = c("longitude", "latitude"), crs = 4326) |>
    st_transform(crs = st_crs(tracts))
  hits <- st_intersects(pts, tracts)
  df$tract_geoid <- NA_character_
  df$tract_geoid[has_xy] <- tracts$tract_geoid[
    map_int(hits, \(i) if (length(i) > 0) i[[1]] else NA_integer_)
  ]
  df
}
