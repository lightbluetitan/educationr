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

# Grades_stats_tbl_df data set

library(testthat)

# Test dataset structure and class
test_that("Grades_stats_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Grades_stats_tbl_df, "tbl_df")  # Check if it's a tibble
  expect_equal(nrow(Grades_stats_tbl_df), 29)  # Check number of rows
  expect_equal(ncol(Grades_stats_tbl_df), 1)  # Check number of columns
  expect_equal(names(Grades_stats_tbl_df), "grades")  # Check column name
})

# Test data types of columns
test_that("Grades_stats_tbl_df has correct column types", {
  expect_true(is.integer(Grades_stats_tbl_df$grades))  # Check if 'grades' is integer
})

# Test for missing values in critical columns
test_that("Grades_stats_tbl_df reports NA values in the grades column", {
  n_na <- sum(is.na(Grades_stats_tbl_df$grades))
  expect_true(n_na == 0, info = paste("Found", n_na, "NA values in grades"))  # No NAs should be present
})

# Test to verify dataset immutability
test_that("Grades_stats_tbl_df remains unchanged after tests", {
  original_dataset <- Grades_stats_tbl_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(Grades_stats_tbl_df$grades))  # Ensure no NAs in 'grades'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Grades_stats_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Grades_stats_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Grades_stats_tbl_df))
  expect_equal(names(original_dataset), names(Grades_stats_tbl_df))
})
