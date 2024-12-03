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

# Lowabil_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("Lowabil_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Lowabil_tbl_df, "tbl_df")  # Check if it's a tibble
  expect_equal(nrow(Lowabil_tbl_df), 12)  # Check number of rows
  expect_equal(ncol(Lowabil_tbl_df), 3)  # Check number of columns
  expect_equal(names(Lowabil_tbl_df), c("pair", "experiment", "control"))  # Check column names
})

# Test data types of columns
test_that("Lowabil_tbl_df has correct column types", {
  expect_true(is.numeric(Lowabil_tbl_df$pair))  # Check if 'pair' is numeric
  expect_true(is.numeric(Lowabil_tbl_df$experiment))  # Check if 'experiment' is numeric
  expect_true(is.numeric(Lowabil_tbl_df$control))  # Check if 'control' is numeric
})

# Test for missing values in critical columns
test_that("Lowabil_tbl_df does not have missing values", {
  n_na_pair <- sum(is.na(Lowabil_tbl_df$pair))
  n_na_experiment <- sum(is.na(Lowabil_tbl_df$experiment))
  n_na_control <- sum(is.na(Lowabil_tbl_df$control))

  expect_true(n_na_pair == 0, info = paste("Found", n_na_pair, "NA values in pair"))
  expect_true(n_na_experiment == 0, info = paste("Found", n_na_experiment, "NA values in experiment"))
  expect_true(n_na_control == 0, info = paste("Found", n_na_control, "NA values in control"))
})

# Test to verify dataset immutability
test_that("Lowabil_tbl_df remains unchanged after tests", {
  original_dataset <- Lowabil_tbl_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(Lowabil_tbl_df$pair))  # Ensure no NAs in 'pair'
  sum(is.na(Lowabil_tbl_df$experiment))  # Ensure no NAs in 'experiment'
  sum(is.na(Lowabil_tbl_df$control))  # Ensure no NAs in 'control'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Lowabil_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Lowabil_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Lowabil_tbl_df))
  expect_equal(names(original_dataset), names(Lowabil_tbl_df))
})



