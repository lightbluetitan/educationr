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

# sat_improve_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("sat_improve_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(sat_improve_tbl_df, "tbl_df")
  expect_equal(nrow(sat_improve_tbl_df), 30)
  expect_equal(ncol(sat_improve_tbl_df), 1)
  expect_equal(names(sat_improve_tbl_df), c("sat_improve"))
})

# Test for correct column types
test_that("sat_improve_tbl_df has correct column type", {
  expect_true(is.integer(sat_improve_tbl_df$sat_improve),
              info = "The 'sat_improve' column should be an integer vector")
})

# Test for missing values in the columns
test_that("sat_improve_tbl_df does not have missing values", {
  n_na_sat_improve <- sum(is.na(sat_improve_tbl_df$sat_improve))

  expect_true(n_na_sat_improve == 0, info = paste("Found", n_na_sat_improve, "NA values in 'sat_improve'"))
})

# Test to verify dataset immutability
test_that("sat_improve_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- sat_improve_tbl_df

  # Run some example tests
  sum(is.na(sat_improve_tbl_df$sat_improve))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, sat_improve_tbl_df)
  expect_equal(nrow(original_dataset), nrow(sat_improve_tbl_df))
  expect_equal(ncol(original_dataset), ncol(sat_improve_tbl_df))
  expect_equal(names(original_dataset), names(sat_improve_tbl_df))
})
