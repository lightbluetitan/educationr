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

# Graduate_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("Graduate_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Graduate_tbl_df, "tbl_df")  # Check if it's a tibble
  expect_equal(nrow(Graduate_tbl_df), 12)  # Check number of rows
  expect_equal(ncol(Graduate_tbl_df), 3)  # Check number of columns
  expect_equal(names(Graduate_tbl_df), c("school", "code", "percent"))  # Check column names
})

# Test data types of columns
test_that("Graduate_tbl_df has correct column types", {
  expect_true(is.character(Graduate_tbl_df$school))  # Check if 'school' is character
  expect_true(is.character(Graduate_tbl_df$code))  # Check if 'code' is character
  expect_true(is.integer(Graduate_tbl_df$percent))  # Check if 'percent' is integer
})

# Test for missing values in critical columns
test_that("Graduate_tbl_df reports NA values in the school, code, and percent columns", {
  n_na_school <- sum(is.na(Graduate_tbl_df$school))
  n_na_code <- sum(is.na(Graduate_tbl_df$code))
  n_na_percent <- sum(is.na(Graduate_tbl_df$percent))

  expect_true(n_na_school == 0, info = paste("Found", n_na_school, "NA values in school"))
  expect_true(n_na_code == 0, info = paste("Found", n_na_code, "NA values in code"))
  expect_true(n_na_percent == 0, info = paste("Found", n_na_percent, "NA values in percent"))
})

# Test to verify dataset immutability
test_that("Graduate_tbl_df remains unchanged after tests", {
  original_dataset <- Graduate_tbl_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(Graduate_tbl_df$school))  # Ensure no NAs in 'school'
  sum(is.na(Graduate_tbl_df$code))  # Ensure no NAs in 'code'
  sum(is.na(Graduate_tbl_df$percent))  # Ensure no NAs in 'percent'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Graduate_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Graduate_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Graduate_tbl_df))
  expect_equal(names(original_dataset), names(Graduate_tbl_df))
})




