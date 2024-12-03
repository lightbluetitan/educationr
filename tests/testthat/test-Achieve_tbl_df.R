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

# Achieve_tbl_df data set

library(testthat)

# Test dataset structure and class
test_that("Achieve_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Achieve_tbl_df, "tbl_df")
  expect_equal(nrow(Achieve_tbl_df), 25)
  expect_equal(ncol(Achieve_tbl_df), 2)
  expect_equal(names(Achieve_tbl_df), c("score", "gender"))
})

# Test data types of columns
test_that("Achieve_tbl_df has correct column types", {
  expect_type(Achieve_tbl_df$score, "integer")
  expect_s3_class(Achieve_tbl_df$gender, "factor")
})

# Test for missing values
test_that("Achieve_tbl_df has no missing values in critical columns", {
  critical_columns <- c("score", "gender")
  for (column in critical_columns) {
    n_na <- sum(is.na(Achieve_tbl_df[[column]]))
    expect_true(n_na == 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test score column values
test_that("Achieve_tbl_df$score contains valid integer values", {
  expect_true(all(Achieve_tbl_df$score >= 0, na.rm = TRUE),
              info = "Score column contains negative values")
  expect_true(all(Achieve_tbl_df$score %% 1 == 0, na.rm = TRUE),
              info = "Score column contains non-integer values")
})

# Test gender column levels (updated to reflect actual levels)
test_that("Achieve_tbl_df$gender levels are as expected", {
  # Update expected levels based on the actual dataset
  expected_levels <- c("boys", "girls")
  actual_levels <- levels(Achieve_tbl_df$gender)

  # Check that the actual levels match the expected levels exactly
  expect_equal(sort(actual_levels), sort(expected_levels),
               info = paste("Expected levels:", toString(expected_levels),
                            "but found:", toString(actual_levels)))
})

# Test gender column distribution
test_that("Achieve_tbl_df$gender has a reasonable distribution", {
  gender_counts <- table(Achieve_tbl_df$gender)
  expect_true(all(gender_counts > 0),
              info = "One or more gender levels have zero observations")
})

# Test score column range
test_that("Achieve_tbl_df$score is within a reasonable range", {
  # Replace with an appropriate range if known
  expect_true(all(Achieve_tbl_df$score >= 0 & Achieve_tbl_df$score <= 100, na.rm = TRUE),
              info = "Score values are outside the expected range of 0 to 100")
})

# Test immutability of the dataset
test_that("Achieve_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Achieve_tbl_df

  # Run some example checks
  levels(Achieve_tbl_df$gender)
  mean(Achieve_tbl_df$score, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Achieve_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Achieve_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Achieve_tbl_df))
  expect_equal(names(original_dataset), names(Achieve_tbl_df))
})
