## nyc_addresses_df / nyc_addresses_sf — NYCHA residential addresses

source(here::here("data-raw", "_source.R"))

rawpath <- here("data-raw", "cha")

nyc_addresses_df <- read_csv(
  here(rawpath, "NYCHA_Residential_Addresses_20260519.csv"),
  show_col_types = FALSE,
  col_types = cols(
    `BUILDING #` = col_character(),
    `STAIRHALL#` = col_character(),
    `BIN` = col_character(),
    `BLOCK` = col_character(),
    `LOT` = col_character(),
    `BOROUGH/BLOCK/LOT #` = col_character(),
    `CENSUS TRACT (2020)` = col_character(),
    `ZIP CODE` = col_character(),
    .default = col_guess()
  )
) |>
  clean_names() |>
  rename(
    tds_num = tds_number,
    building_num = building_number,
    stairhall_num = stairhall_number,
    house_num = house_number,
    bbl = borough_block_lot_number,
    nta_code = neighborhood_tabulation_area_code,
    nta_name = neighborhood_tabulation_area_name
  ) |>
  mutate(
    privately_managed = privately_managed == "YES",
    borough = str_to_title(borough)
  ) |>
  as_tibble()

usethis::use_data(nyc_addresses_df, overwrite = TRUE, compress = "xz")

nyc_addresses_sf <- nyc_addresses_df |>
  filter(!is.na(latitude), !is.na(longitude)) |>
  st_as_sf(coords = c("longitude", "latitude"), crs = 4326) |>
  st_transform(crs = st_crs("EPSG:2263"))

usethis::use_data(nyc_addresses_sf, overwrite = TRUE, compress = "xz")
