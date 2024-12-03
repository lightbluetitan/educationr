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

# Habits_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("Habits_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Habits_tbl_df, "tbl_df")  # Check if it's a tibble
  expect_equal(nrow(Habits_tbl_df), 11)  # Check number of rows
  expect_equal(ncol(Habits_tbl_df), 4)  # Check number of columns
  expect_equal(names(Habits_tbl_df), c("A", "B", "differ", "signrks"))  # Check column names
})

# Test data types of columns
test_that("Habits_tbl_df has correct column types", {
  expect_true(is.integer(Habits_tbl_df$A))  # Check if 'A' is integer
  expect_true(is.integer(Habits_tbl_df$B))  # Check if 'B' is integer
  expect_true(is.integer(Habits_tbl_df$differ))  # Check if 'differ' is integer
  expect_true(is.numeric(Habits_tbl_df$signrks))  # Check if 'signrks' is numeric
})

# Test for missing values in critical columns
test_that("Habits_tbl_df reports NA values in the A, B, differ, and signrks columns", {
  n_na_A <- sum(is.na(Habits_tbl_df$A))
  n_na_B <- sum(is.na(Habits_tbl_df$B))
  n_na_differ <- sum(is.na(Habits_tbl_df$differ))
  n_na_signrks <- sum(is.na(Habits_tbl_df$signrks))

  expect_true(n_na_A == 0, info = paste("Found", n_na_A, "NA values in A"))
  expect_true(n_na_B == 0, info = paste("Found", n_na_B, "NA values in B"))
  expect_true(n_na_differ == 0, info = paste("Found", n_na_differ, "NA values in differ"))
  expect_true(n_na_signrks == 0, info = paste("Found", n_na_signrks, "NA values in signrks"))
})

# Test to verify dataset immutability
test_that("Habits_tbl_df remains unchanged after tests", {
  original_dataset <- Habits_tbl_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(Habits_tbl_df$A))  # Ensure no NAs in 'A'
  sum(is.na(Habits_tbl_df$B))  # Ensure no NAs in 'B'
  sum(is.na(Habits_tbl_df$differ))  # Ensure no NAs in 'differ'
  sum(is.na(Habits_tbl_df$signrks))  # Ensure no NAs in 'signrks'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Habits_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Habits_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Habits_tbl_df))
  expect_equal(names(original_dataset), names(Habits_tbl_df))
})
