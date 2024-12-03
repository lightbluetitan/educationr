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

# gpa_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("gpa_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(gpa_tbl_df, "tbl_df")
  expect_equal(nrow(gpa_tbl_df), 55) # Check the number of rows
  expect_equal(ncol(gpa_tbl_df), 5)  # Check the number of columns
  expect_equal(names(gpa_tbl_df), c("gpa", "studyweek", "sleepnight", "out", "gender"))  # Column names
})

# Test data types of columns
test_that("gpa_tbl_df has correct column types", {
  # Allow for tibble numeric columns being recognized properly in this context
  expect_true(is.numeric(gpa_tbl_df$gpa) || is.integer(gpa_tbl_df$gpa))  # Check if 'gpa' is numeric or integer
  expect_true(is.integer(gpa_tbl_df$studyweek))  # Check if 'studyweek' is integer
  expect_true(is.numeric(gpa_tbl_df$sleepnight))  # Check if 'sleepnight' is numeric
  expect_true(is.numeric(gpa_tbl_df$out))  # Check if 'out' is numeric
  expect_s3_class(gpa_tbl_df$gender, "factor")  # Ensure 'gender' column is a factor
})

# Test levels of the `gender` column
test_that("gpa_tbl_df has expected levels for gender", {
  # Make the test flexible for lowercase levels
  expect_true(all(tolower(levels(gpa_tbl_df$gender)) %in% c("male", "female")))  # Gender should have "male" and "female" in any case
})

# Test for missing values in critical columns
test_that("gpa_tbl_df reports NA values in critical columns", {
  critical_columns <- c("gpa", "studyweek", "sleepnight", "out", "gender")
  for (column in critical_columns) {
    n_na <- sum(is.na(gpa_tbl_df[[column]]))
    expect_true(n_na == 0, info = paste("Found", n_na, "NA values in", column))  # No NAs should be present
  }
})

# Test to verify dataset immutability
test_that("gpa_tbl_df remains unchanged after tests", {
  original_dataset <- gpa_tbl_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(gpa_tbl_df$gpa))
  sum(is.na(gpa_tbl_df$studyweek))
  sum(is.na(gpa_tbl_df$sleepnight))
  sum(is.na(gpa_tbl_df$out))
  sum(is.na(gpa_tbl_df$gender))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, gpa_tbl_df)
  expect_equal(nrow(original_dataset), nrow(gpa_tbl_df))
  expect_equal(ncol(original_dataset), ncol(gpa_tbl_df))
  expect_equal(names(original_dataset), names(gpa_tbl_df))
})
