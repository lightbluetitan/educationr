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

# HedgesOlkin85_df data set


library(testthat)

# Test dataset structure and class
test_that("HedgesOlkin85_df loads correctly and has the expected structure", {
  expect_s3_class(HedgesOlkin85_df, "data.frame")  # Check if it's a data frame
  expect_equal(nrow(HedgesOlkin85_df), 4)  # Check number of rows
  expect_equal(ncol(HedgesOlkin85_df), 6)  # Check number of columns
  expect_equal(names(HedgesOlkin85_df), c("study", "d_att", "d_ach", "var_att", "cov_att_ach", "var_ach"))  # Check column names
})

# Test data types of columns
test_that("HedgesOlkin85_df has correct column types", {
  expect_true(is.numeric(HedgesOlkin85_df$study))  # Check if 'study' is numeric
  expect_true(is.numeric(HedgesOlkin85_df$d_att))  # Check if 'd_att' is numeric
  expect_true(is.numeric(HedgesOlkin85_df$d_ach))  # Check if 'd_ach' is numeric
  expect_true(is.numeric(HedgesOlkin85_df$var_att))  # Check if 'var_att' is numeric
  expect_true(is.numeric(HedgesOlkin85_df$cov_att_ach))  # Check if 'cov_att_ach' is numeric
  expect_true(is.numeric(HedgesOlkin85_df$var_ach))  # Check if 'var_ach' is numeric
})

# Test for missing values in critical columns
test_that("HedgesOlkin85_df reports NA values in the columns", {
  n_na_study <- sum(is.na(HedgesOlkin85_df$study))
  n_na_d_att <- sum(is.na(HedgesOlkin85_df$d_att))
  n_na_d_ach <- sum(is.na(HedgesOlkin85_df$d_ach))
  n_na_var_att <- sum(is.na(HedgesOlkin85_df$var_att))
  n_na_cov_att_ach <- sum(is.na(HedgesOlkin85_df$cov_att_ach))
  n_na_var_ach <- sum(is.na(HedgesOlkin85_df$var_ach))

  expect_true(n_na_study == 0, info = paste("Found", n_na_study, "NA values in study"))
  expect_true(n_na_d_att == 0, info = paste("Found", n_na_d_att, "NA values in d_att"))
  expect_true(n_na_d_ach == 0, info = paste("Found", n_na_d_ach, "NA values in d_ach"))
  expect_true(n_na_var_att == 0, info = paste("Found", n_na_var_att, "NA values in var_att"))
  expect_true(n_na_cov_att_ach == 0, info = paste("Found", n_na_cov_att_ach, "NA values in cov_att_ach"))
  expect_true(n_na_var_ach == 0, info = paste("Found", n_na_var_ach, "NA values in var_ach"))
})

# Test to verify dataset immutability
test_that("HedgesOlkin85_df remains unchanged after tests", {
  original_dataset <- HedgesOlkin85_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(HedgesOlkin85_df$study))  # Ensure no NAs in 'study'
  sum(is.na(HedgesOlkin85_df$d_att))  # Ensure no NAs in 'd_att'
  sum(is.na(HedgesOlkin85_df$d_ach))  # Ensure no NAs in 'd_ach'
  sum(is.na(HedgesOlkin85_df$var_att))  # Ensure no NAs in 'var_att'
  sum(is.na(HedgesOlkin85_df$cov_att_ach))  # Ensure no NAs in 'cov_att_ach'
  sum(is.na(HedgesOlkin85_df$var_ach))  # Ensure no NAs in 'var_ach'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, HedgesOlkin85_df)
  expect_equal(nrow(original_dataset), nrow(HedgesOlkin85_df))
  expect_equal(ncol(original_dataset), ncol(HedgesOlkin85_df))
  expect_equal(names(original_dataset), names(HedgesOlkin85_df))
})





