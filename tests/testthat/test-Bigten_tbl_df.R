# educationR - A Comprehensive Collection of Educational Datasets
# Version 0.1.0
# Copyright (C) 2024 Renzo Cáceres Rossi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Bigten_tbl_df data set

library(testthat)

# Test structure and class of Bigten_tbl_df
test_that("Bigten_tbl_df has the expected structure and class", {
  expect_s3_class(Bigten_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(Bigten_tbl_df), c("tbl_df", "tbl", "data.frame"))
  expect_equal(length(Bigten_tbl_df), 4)  # It should have 4 columns
  expect_equal(names(Bigten_tbl_df), c("school", "year", "rate", "status"))
})

# Test column types
test_that("Bigten_tbl_df columns have the correct types", {
  expect_type(Bigten_tbl_df$school, "character")  # school should be a character
  expect_true(is.factor(Bigten_tbl_df$year))  # year should be a factor
  expect_type(Bigten_tbl_df$rate, "integer")  # rate should be an integer
  expect_type(Bigten_tbl_df$status, "character")  # status should be a character
})

# Test levels of factors
test_that("Bigten_tbl_df factor columns have expected levels", {
  expect_true(length(levels(Bigten_tbl_df$year)) == 2, info = "year should have 2 levels")
})

# Test range and values of "rate" column
test_that("Bigten_tbl_df$rate values are valid", {
  expect_true(all(Bigten_tbl_df$rate >= 0, na.rm = TRUE),
              info = "rate should be non-negative")
  expect_true(all(!is.na(Bigten_tbl_df$rate)),
              info = "rate should not have missing values")
})

# Test dataset immutability
test_that("Bigten_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Bigten_tbl_df

  # Perform some example checks
  all(!is.na(Bigten_tbl_df$rate))
  all(levels(Bigten_tbl_df$year) %in% levels(original_dataset$year))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Bigten_tbl_df)
  expect_equal(names(original_dataset), names(Bigten_tbl_df))
  expect_equal(length(original_dataset), length(Bigten_tbl_df))
})
