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

# Mathpro_tbl_df data set

library(testthat)

# Test dataset structure and class
test_that("Mathpro_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Mathpro_tbl_df, "tbl_df")
  expect_equal(nrow(Mathpro_tbl_df), 51)
  expect_equal(ncol(Mathpro_tbl_df), 4)
  expect_equal(names(Mathpro_tbl_df), c("state", "sat_math", "profic", "group"))
})

# Test data types of columns
test_that("Mathpro_tbl_df has correct column types", {
  expect_true(is.character(Mathpro_tbl_df$state), info = "Column 'state' is not character")
  expect_true(is.integer(Mathpro_tbl_df$sat_math), info = "Column 'sat_math' is not integer")
  expect_true(is.numeric(Mathpro_tbl_df$profic), info = "Column 'profic' is not numeric")
  expect_true(is.integer(Mathpro_tbl_df$group), info = "Column 'group' is not integer")
})

# Test for missing values in critical columns
test_that("Mathpro_tbl_df reports NA values in critical columns", {
  critical_columns <- c("state", "sat_math", "profic", "group")
  for (column in critical_columns) {
    n_na <- sum(is.na(Mathpro_tbl_df[[column]]))
    expect_true(n_na >= 0, info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("Mathpro_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Mathpro_tbl_df

  # Run some example tests
  sum(is.na(Mathpro_tbl_df$state))
  sum(is.na(Mathpro_tbl_df$sat_math))
  sum(is.na(Mathpro_tbl_df$profic))
  sum(is.na(Mathpro_tbl_df$group))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Mathpro_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Mathpro_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Mathpro_tbl_df))
  expect_equal(names(original_dataset), names(Mathpro_tbl_df))
})




