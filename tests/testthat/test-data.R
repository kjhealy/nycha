comma_formatted <- function(x) {
  any(grepl("^[0-9]{1,3}(,[0-9]{3})+$", x))
}

test_that("address identifiers have no thousands separators", {
  for (col in c("zip_code", "lot", "census_tract_2020", "bin", "bbl")) {
    expect_false(comma_formatted(nyc_addresses_df[[col]]), label = col)
  }
  expect_true(all(grepl("^[0-9]{5}$", nyc_addresses_df$zip_code)))
  expect_true(all(grepl("^[1-5][0-9]{9}$", nyc_addresses_df$bbl)))
})

test_that("facility identifiers have no thousands separators", {
  for (col in c("postcode", "census_tract", "bin", "bbl")) {
    expect_false(comma_formatted(nyc_facilities_df[[col]]), label = col)
  }
  expect_true(all(grepl(
    "^[1-5][0-9]{6}$",
    stats::na.omit(nyc_facilities_df$bin)
  )))
  expect_true(all(grepl(
    "^[1-5][0-9]{9}$",
    stats::na.omit(nyc_facilities_df$bbl)
  )))
})

test_that("tract_geoid is an 11-digit NYC 2020 tract GEOID", {
  nyc_counties <- "^36(005|047|061|081|085)[0-9]{6}$"
  expect_true(all(grepl(nyc_counties, nyc_addresses_df$tract_geoid)))
  expect_true(all(grepl(
    nyc_counties,
    stats::na.omit(nyc_facilities_df$tract_geoid)
  )))
  expect_identical(
    nyc_addresses_sf$tract_geoid,
    nyc_addresses_df$tract_geoid[!is.na(nyc_addresses_df$latitude)]
  )
})

test_that("privately_managed has no missing values", {
  expect_false(anyNA(nyc_addresses_df$privately_managed))
  expect_type(nyc_addresses_df$privately_managed, "logical")
})
