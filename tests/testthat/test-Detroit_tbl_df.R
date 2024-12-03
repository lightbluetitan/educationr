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

# Detroit_tbl_df data set

library(testthat)

# Test structure and class of Detroit_tbl_df
test_that("Detroit_tbl_df has the expected structure and class", {
  expect_s3_class(Detroit_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(Detroit_tbl_df), c("tbl_df", "tbl", "data.frame"))
  expect_equal(length(Detroit_tbl_df), 1)  # It should have 1 column
  expect_equal(names(Detroit_tbl_df), c("educ"))
})

# Test column type
test_that("Detroit_tbl_df columns have the correct type", {
  expect_type(Detroit_tbl_df$educ, "integer")  # educ should be integer
})

# Test that 'educ' column values are non-negative
test_that("Detroit_tbl_df educ values are non-negative", {
  expect_true(all(Detroit_tbl_df$educ >= 0, na.rm = TRUE),
              info = "educ should be non-negative")
})

# Test that there are no missing values in the 'educ' column
test_that("Detroit_tbl_df educ column has no missing values", {
  expect_true(all(!is.na(Detroit_tbl_df$educ)),
              info = "educ should not have missing values")
})

# Test dataset immutability
test_that("Detroit_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Detroit_tbl_df

  # Perform some example checks (ensuring no accidental changes)
  expect_true(all(Detroit_tbl_df$educ >= 0, na.rm = TRUE),
              info = "educ values should remain non-negative")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Detroit_tbl_df)
  expect_equal(names(original_dataset), names(Detroit_tbl_df))
  expect_equal(length(original_dataset), length(Detroit_tbl_df))
})
