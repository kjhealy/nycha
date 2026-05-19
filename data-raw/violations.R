## nyc_violations_df — Housing maintenance code violations on NYCHA properties

source(here::here("data-raw", "_source.R"))

rawpath <- here("data-raw", "cha")

nyc_violations_df <- read_csv(
  here(
    rawpath,
    "Housing_Maintenance_Code_Violations_NYCHA_properties_20260519.csv"
  ),
  show_col_types = FALSE,
  col_types = cols(
    `Primary Postcode` = col_character(),
    `NYCHA Address Section PostCode` = col_character(),
    `Block` = col_character(),
    `Lot` = col_character(),
    `BIN` = col_character(),
    `BBL` = col_character(),
    `Census Tract (2020)` = col_character(),
    `Inspection Date` = col_date(format = "%m/%d/%Y"),
    `Approved Date` = col_date(format = "%m/%d/%Y"),
    .default = col_guess()
  )
) |>
  clean_names() |>
  rename(
    nta_2020 = neighborhood_tabulation_area_nta_2020,
    primary_bin = primary_building_identifier,
    primary_boro_id = primary_boro_identifier
  ) |>
  mutate(
    issued_in_error = issued_in_error == "Y",
    primary_borough_name = str_to_title(primary_borough_name),
    nycha_address_section_borough = str_to_title(nycha_address_section_borough)
  ) |>
  as_tibble()

usethis::use_data(nyc_violations_df, overwrite = TRUE, compress = "xz")
