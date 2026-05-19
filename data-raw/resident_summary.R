## nyc_resident_summary_df — NYCHA Resident Data Book summary statistics

source(here::here("data-raw", "_source.R"))

rawpath <- here("data-raw", "cha")

parse_money <- function(x) {
  readr::parse_number(x, locale = locale(grouping_mark = ","))
}

parse_pct <- function(x) {
  readr::parse_number(x) / 100
}

raw <- read_csv(
  here(rawpath, "NYCHA_Resident_Data_Book_Summary_20260519.csv"),
  show_col_types = FALSE,
  col_types = cols(.default = col_character())
) |>
  clean_names()

pct_cols <- raw |>
  select(matches(
    "percent|percent_of_families|percent_of_population",
    ignore.case = TRUE
  )) |>
  names()

money_cols <- c("all_average_total_gross_income", "all_average_gross_rent")

id_cols <- c("program", "statecity_section8_flag")

num_cols <- setdiff(names(raw), c(id_cols, money_cols, pct_cols))

nyc_resident_summary_df <- raw |>
  mutate(
    across(all_of(money_cols), parse_money),
    across(all_of(pct_cols), parse_pct),
    across(all_of(num_cols), parse_number)
  ) |>
  as_tibble()

usethis::use_data(nyc_resident_summary_df, overwrite = TRUE, compress = "xz")
