## nyc_developments_sf — NYCHA public housing development boundaries

source(here::here("data-raw", "_source.R"))

rawpath <- here("data-raw", "cha")

nyc_developments_sf <- st_read(
  here(rawpath, "NYCHA_Public_Housing_Developments_20260519.geojson"),
  quiet = TRUE
) |>
  select(
    development = developmen,
    tds_num,
    borough
  ) |>
  mutate(borough = str_to_title(borough)) |>
  st_transform(crs = st_crs("EPSG:2263")) |>
  st_make_valid()

usethis::use_data(nyc_developments_sf, overwrite = TRUE, compress = "xz")
