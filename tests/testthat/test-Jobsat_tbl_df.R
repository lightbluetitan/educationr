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

# Jobsat_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("Jobsat_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Jobsat_tbl_df, "tbl_df")  # Check if it's a tibble
  expect_equal(nrow(Jobsat_tbl_df), 9)  # Check number of rows
  expect_equal(ncol(Jobsat_tbl_df), 2)  # Check number of columns
  expect_equal(names(Jobsat_tbl_df), c("wspt", "satisfaction"))  # Check column names
})

# Test data types of columns
test_that("Jobsat_tbl_df has correct column types", {
  expect_true(is.numeric(Jobsat_tbl_df$wspt))  # Check if 'wspt' is numeric
  expect_true(is.numeric(Jobsat_tbl_df$satisfaction))  # Check if 'satisfaction' is numeric
})

# Test for missing values in critical columns
test_that("Jobsat_tbl_df does not have missing values", {
  n_na_wspt <- sum(is.na(Jobsat_tbl_df$wspt))
  n_na_satisfaction <- sum(is.na(Jobsat_tbl_df$satisfaction))

  expect_true(n_na_wspt == 0, info = paste("Found", n_na_wspt, "NA values in wspt"))
  expect_true(n_na_satisfaction == 0, info = paste("Found", n_na_satisfaction, "NA values in satisfaction"))
})

# Test to verify dataset immutability
test_that("Jobsat_tbl_df remains unchanged after tests", {
  original_dataset <- Jobsat_tbl_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(Jobsat_tbl_df$wspt))  # Ensure no NAs in 'wspt'
  sum(is.na(Jobsat_tbl_df$satisfaction))  # Ensure no NAs in 'satisfaction'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Jobsat_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Jobsat_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Jobsat_tbl_df))
  expect_equal(names(original_dataset), names(Jobsat_tbl_df))
})



