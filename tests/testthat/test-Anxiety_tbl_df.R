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

# Anxiety_tbl_df data set

library(testthat)

# Test dataset structure and class
test_that("Anxiety_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Anxiety_tbl_df, "tbl_df")
  expect_equal(nrow(Anxiety_tbl_df), 20)
  expect_equal(ncol(Anxiety_tbl_df), 2)
  expect_equal(names(Anxiety_tbl_df), c("anxiety", "math"))
})

# Test data types of columns
test_that("Anxiety_tbl_df has correct column types", {
  expect_type(Anxiety_tbl_df$anxiety, "integer")
  expect_type(Anxiety_tbl_df$math, "integer")
})

# Test for missing values
test_that("Anxiety_tbl_df has no missing values in critical columns", {
  critical_columns <- c("anxiety", "math")
  for (column in critical_columns) {
    n_na <- sum(is.na(Anxiety_tbl_df[[column]]))
    expect_true(n_na == 0,
                info = paste("Found", n_na, "NA values in", column))
  }
})

# Test anxiety column values
test_that("Anxiety_tbl_df$anxiety contains valid integer values", {
  expect_true(all(Anxiety_tbl_df$anxiety >= 0, na.rm = TRUE),
              info = "Anxiety column contains negative values")
  expect_true(all(Anxiety_tbl_df$anxiety %% 1 == 0, na.rm = TRUE),
              info = "Anxiety column contains non-integer values")
})

# Test math column values
test_that("Anxiety_tbl_df$math contains valid integer values", {
  expect_true(all(Anxiety_tbl_df$math >= 0, na.rm = TRUE),
              info = "Math column contains negative values")
  expect_true(all(Anxiety_tbl_df$math %% 1 == 0, na.rm = TRUE),
              info = "Math column contains non-integer values")
})

# Test immutability of the dataset
test_that("Anxiety_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Anxiety_tbl_df

  # Run some example checks
  mean(Anxiety_tbl_df$anxiety, na.rm = TRUE)
  mean(Anxiety_tbl_df$math, na.rm = TRUE)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Anxiety_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Anxiety_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Anxiety_tbl_df))
  expect_equal(names(original_dataset), names(Anxiety_tbl_df))
})
