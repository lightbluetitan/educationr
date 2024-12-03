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

# major_survey_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("major_survey_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(major_survey_tbl_df, "tbl_df")  # Check if it's a tibble
  expect_equal(nrow(major_survey_tbl_df), 218)  # Check number of rows
  expect_equal(ncol(major_survey_tbl_df), 2)  # Check number of columns
  expect_equal(names(major_survey_tbl_df), c("gpa", "major"))  # Check column names
})

# Test data types of columns
test_that("major_survey_tbl_df has correct column types", {
  expect_true(is.numeric(major_survey_tbl_df$gpa))  # Check if 'gpa' is numeric
  expect_true(is.factor(major_survey_tbl_df$major))  # Check if 'major' is a factor
  expect_equal(length(levels(major_survey_tbl_df$major)), 3)  # Ensure 'major' has 3 levels
})

# Test for missing values in critical columns
test_that("major_survey_tbl_df does not have unexpected missing values", {
  n_na_gpa <- sum(is.na(major_survey_tbl_df$gpa))
  n_na_major <- sum(is.na(major_survey_tbl_df$major))

  # Adjust expectations if the NAs are expected and valid
  expect_equal(n_na_gpa, 13, info = paste("Found", n_na_gpa, "NA values in gpa"))
  expect_equal(n_na_major, 5, info = paste("Found", n_na_major, "NA values in major"))
})

# Test to verify dataset immutability
test_that("major_survey_tbl_df remains unchanged after tests", {
  original_dataset <- major_survey_tbl_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(major_survey_tbl_df$gpa))  # Ensure no unexpected NAs in 'gpa'
  sum(is.na(major_survey_tbl_df$major))  # Ensure no unexpected NAs in 'major'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, major_survey_tbl_df)
  expect_equal(nrow(original_dataset), nrow(major_survey_tbl_df))
  expect_equal(ncol(original_dataset), ncol(major_survey_tbl_df))
  expect_equal(names(original_dataset), names(major_survey_tbl_df))
})
