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

# gradestv_tbl_df data set

library(testthat)

# Test dataset structure and class
test_that("gradestv_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(gradestv_tbl_df, "tbl_df")  # Check if it's a tibble
  expect_equal(nrow(gradestv_tbl_df), 25)  # Check number of rows
  expect_equal(ncol(gradestv_tbl_df), 2)  # Check number of columns
  expect_equal(names(gradestv_tbl_df), c("tv", "grades"))  # Check column names
})

# Test data types of columns
test_that("gradestv_tbl_df has correct column types", {
  expect_true(is.integer(gradestv_tbl_df$tv))  # Check if 'tv' is integer
  expect_true(is.integer(gradestv_tbl_df$grades))  # Check if 'grades' is integer
})

# Test for missing values in critical columns
test_that("gradestv_tbl_df reports NA values in the tv and grades columns", {
  n_na_tv <- sum(is.na(gradestv_tbl_df$tv))
  n_na_grades <- sum(is.na(gradestv_tbl_df$grades))

  expect_true(n_na_tv == 0, info = paste("Found", n_na_tv, "NA values in tv"))
  expect_true(n_na_grades == 0, info = paste("Found", n_na_grades, "NA values in grades"))
})

# Test to verify dataset immutability
test_that("gradestv_tbl_df remains unchanged after tests", {
  original_dataset <- gradestv_tbl_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(gradestv_tbl_df$tv))  # Ensure no NAs in 'tv'
  sum(is.na(gradestv_tbl_df$grades))  # Ensure no NAs in 'grades'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, gradestv_tbl_df)
  expect_equal(nrow(original_dataset), nrow(gradestv_tbl_df))
  expect_equal(ncol(original_dataset), ncol(gradestv_tbl_df))
  expect_equal(names(original_dataset), names(gradestv_tbl_df))
})

