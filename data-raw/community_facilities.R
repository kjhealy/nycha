## nyc_community_facilities_df / _sf — Directory of NYCHA community facilities

source(here::here("data-raw", "_source.R"))

rawpath <- here("data-raw", "cha")

nyc_community_facilities_df <- read_csv(
  here(rawpath, "Directory_of_NYCHA_Community_Facilities_20260519.csv"),
  show_col_types = FALSE,
  col_types = cols(
    `Postcode` = col_character(),
    `Community Board` = col_character(),
    `Council District` = col_character(),
    `Census Tract` = col_character(),
    `BIN` = col_character(),
    `BBL` = col_character(),
    .default = col_guess()
  )
) |>
  clean_names() |>
  mutate(borough = str_to_title(borough)) |>
  as_tibble()

usethis::use_data(
  nyc_community_facilities_df,
  overwrite = TRUE,
  compress = "xz"
)

nyc_community_facilities_sf <- nyc_community_facilities_df |>
  filter(!is.na(latitude), !is.na(longitude)) |>
  st_as_sf(coords = c("longitude", "latitude"), crs = 4326) |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(
  nyc_community_facilities_sf,
  overwrite = TRUE,
  compress = "xz"
)
