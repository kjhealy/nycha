## nyc_development_data_df — NYCHA Development Data Book

source(here::here("data-raw", "_source.R"))

rawpath <- here("data-raw", "cha")

parse_money <- function(x) {
  readr::parse_number(x, locale = locale(grouping_mark = ","))
}

parse_pct <- function(x) {
  readr::parse_number(x) / 100
}

parse_yn <- function(x) {
  case_when(
    toupper(x) %in% c("Y", "YES") ~ TRUE,
    toupper(x) %in% c("N", "NO") ~ FALSE,
    .default = NA
  )
}

nyc_development_data_df <- read_csv(
  here(rawpath, "NYCHA_Development_Data_Book_20260519.csv"),
  show_col_types = FALSE,
  col_types = cols(.default = col_character())
) |>
  clean_names() |>
  mutate(
    data_as_of = mdy(data_as_of),
    completion_date = ymd_hms(completion_date) |> as.Date(),
    rad_transferred_date = mdy(rad_transferred_date),
    across(
      c(
        number_of_section_8_transition_apartments,
        number_of_current_apartments,
        total_number_of_apartments,
        number_of_rental_rooms,
        avg_no_r_r_per_apartment,
        population_section_8_transition,
        population_public_housing,
        total_population,
        total_number_of_fixed_income_household,
        number_of_residential_bldgs,
        number_of_non_residential_bldgs,
        number_of_stairhalls,
        total_area_sq_ft,
        acres,
        net_dev_area_sq_ft,
        excluding_park_acres,
        bldg_coverage_sq_ft,
        cubage_cu_ft,
        density
      ),
      parse_number
    ),
    percent_fixed_income_households = parse_pct(
      percent_fixed_income_households
    ),
    bldg_coverage_percent = parse_pct(bldg_coverage_percent),
    development_cost = parse_money(development_cost),
    per_rental_room = parse_money(per_rental_room),
    avg_monthly_gross_rent = parse_money(avg_monthly_gross_rent),
    federalized_development = parse_yn(federalized_development),
    senior_development = parse_yn(senior_development),
    electricity_paid_by_residents = parse_yn(electricity_paid_by_residents),
    private_management = parse_yn(private_management),
    borough = str_to_title(borough)
  ) |>
  rename(
    community_district = community_distirct,
    total_fixed_income_household = total_number_of_fixed_income_household
  ) |>
  as_tibble()

usethis::use_data(nyc_development_data_df, overwrite = TRUE, compress = "xz")
