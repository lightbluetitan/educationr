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

# Devmath_tbl_df data set

library(testthat)

# Test dataset structure and class
test_that("Devmath_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Devmath_tbl_df, "tbl_df")
  expect_equal(nrow(Devmath_tbl_df), 40)
  expect_equal(ncol(Devmath_tbl_df), 1)
  expect_equal(names(Devmath_tbl_df), c("score"))
})

# Test data types of columns
test_that("Devmath_tbl_df has correct column types", {
  expect_type(Devmath_tbl_df$score, "integer")
})

# Test for missing values
test_that("Devmath_tbl_df has no missing values in critical columns", {
  critical_columns <- c("score")
  for (column in critical_columns) {
    n_na <- sum(is.na(Devmath_tbl_df[[column]]))
    expect_true(n_na == 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test score column values
test_that("Devmath_tbl_df$score contains valid integer values", {
  expect_true(all(Devmath_tbl_df$score >= 0, na.rm = TRUE),
              info = "Score column contains negative values")
  expect_true(all(Devmath_tbl_df$score %% 1 == 0, na.rm = TRUE),
              info = "Score column contains non-integer values")
})

# Test immutability of the dataset
test_that("Devmath_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Devmath_tbl_df

  # Run some example checks
  mean(Devmath_tbl_df$score, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Devmath_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Devmath_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Devmath_tbl_df))
  expect_equal(names(original_dataset), names(Devmath_tbl_df))
})
