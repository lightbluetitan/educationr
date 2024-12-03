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

# crime_degree_tbl_df data set

library(testthat)

# Test structure and class of crime_degree_tbl_df
test_that("crime_degree_tbl_df has the expected structure and class", {
  expect_s3_class(crime_degree_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(crime_degree_tbl_df), c("tbl_df", "tbl", "data.frame"))
  expect_equal(length(crime_degree_tbl_df), 3)  # It should have 3 columns
  expect_equal(names(crime_degree_tbl_df), c("state", "nodegree", "crime"))
})

# Test column types
test_that("crime_degree_tbl_df columns have the correct types", {
  expect_type(crime_degree_tbl_df$state, "character")  # state should be character
  expect_type(crime_degree_tbl_df$nodegree, "double")  # nodegree should be numeric
  expect_type(crime_degree_tbl_df$crime, "double")  # crime should be numeric
})

# Test that the 'state' column contains the expected number of unique states
test_that("crime_degree_tbl_df state column contains 51 unique states", {
  expect_equal(length(unique(crime_degree_tbl_df$state)), 51,
               info = "state column should contain 51 unique states")
})

# Test that 'nodegree' and 'crime' columns are non-negative
test_that("crime_degree_tbl_df nodegree and crime values are non-negative", {
  expect_true(all(crime_degree_tbl_df$nodegree >= 0, na.rm = TRUE),
              info = "nodegree should be non-negative")
  expect_true(all(crime_degree_tbl_df$crime >= 0, na.rm = TRUE),
              info = "crime should be non-negative")
})

# Test that there are no missing values in the 'nodegree' or 'crime' columns
test_that("crime_degree_tbl_df columns have no missing values", {
  expect_true(all(!is.na(crime_degree_tbl_df$nodegree)),
              info = "nodegree should not have missing values")
  expect_true(all(!is.na(crime_degree_tbl_df$crime)),
              info = "crime should not have missing values")
})

# Test dataset immutability
test_that("crime_degree_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- crime_degree_tbl_df

  # Perform some example checks (ensuring no accidental changes)
  expect_true(all(crime_degree_tbl_df$nodegree >= 0, na.rm = TRUE),
              info = "nodegree values should remain non-negative")
  expect_true(all(crime_degree_tbl_df$crime >= 0, na.rm = TRUE),
              info = "crime values should remain non-negative")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, crime_degree_tbl_df)
  expect_equal(names(original_dataset), names(crime_degree_tbl_df))
  expect_equal(length(original_dataset), length(crime_degree_tbl_df))
})
