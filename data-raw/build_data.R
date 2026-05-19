## Build all nycha data objects

# Remove all .rda files in data/ and regenerate them
fs::dir_ls(here::here("data"), glob = "*.rda") |> fs::file_delete()

# Build data objects
source(here::here("data-raw", "developments.R"))
source(here::here("data-raw", "addresses.R"))
source(here::here("data-raw", "violations.R"))
source(here::here("data-raw", "community_facilities.R"))
source(here::here("data-raw", "facilities.R"))
source(here::here("data-raw", "development_data.R"))
source(here::here("data-raw", "resident_summary.R"))

# Concatenate _documentation/*.R files into R/data.R
doc_files <- fs::dir_ls(
  here::here("data-raw", "_documentation"),
  regexp = "[.]R$"
)

doc_content <- doc_files |>
  purrr::map(readLines) |>
  purrr::map(\(x) c(x, "")) |>
  unlist()

writeLines(
  doc_content,
  here::here("R", "data.R")
)
