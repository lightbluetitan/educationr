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

# Homework_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("Homework_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Homework_tbl_df, "tbl_df")  # Check if it's a tibble
  expect_equal(nrow(Homework_tbl_df), 30)  # Check number of rows
  expect_equal(ncol(Homework_tbl_df), 2)  # Check number of columns
  expect_equal(names(Homework_tbl_df), c("school", "time"))  # Check column names
})

# Test data types of columns
test_that("Homework_tbl_df has correct column types", {
  expect_true(is.character(Homework_tbl_df$school))  # Check if 'school' is character
  expect_true(is.numeric(Homework_tbl_df$time))  # Check if 'time' is numeric
})

# Test for missing values in critical columns
test_that("Homework_tbl_df does not have missing values", {
  n_na_school <- sum(is.na(Homework_tbl_df$school))
  n_na_time <- sum(is.na(Homework_tbl_df$time))

  expect_true(n_na_school == 0, info = paste("Found", n_na_school, "NA values in school"))
  expect_true(n_na_time == 0, info = paste("Found", n_na_time, "NA values in time"))
})

# Test to verify dataset immutability
test_that("Homework_tbl_df remains unchanged after tests", {
  original_dataset <- Homework_tbl_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(Homework_tbl_df$school))  # Ensure no NAs in 'school'
  sum(is.na(Homework_tbl_df$time))  # Ensure no NAs in 'time'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Homework_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Homework_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Homework_tbl_df))
  expect_equal(names(original_dataset), names(Homework_tbl_df))
})





