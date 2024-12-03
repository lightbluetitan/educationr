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

# gifted_tbl_df data set

library(testthat)

# Test structure and class of gifted_tbl_df
test_that("gifted_tbl_df has the expected structure and class", {
  expect_s3_class(gifted_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(gifted_tbl_df), c("tbl_df", "tbl", "data.frame"))
  expect_equal(length(gifted_tbl_df), 8)  # It should have 8 columns
  expect_equal(names(gifted_tbl_df), c("score", "fatheriq", "motheriq", "speak",
                                       "count", "read", "edutv", "cartoons"))
})

# Test column types
test_that("gifted_tbl_df columns have the correct types", {
  expect_type(gifted_tbl_df$score, "integer")    # score should be an integer
  expect_type(gifted_tbl_df$fatheriq, "integer") # fatheriq should be an integer
  expect_type(gifted_tbl_df$motheriq, "integer") # motheriq should be an integer
  expect_type(gifted_tbl_df$speak, "integer")    # speak should be an integer
  expect_type(gifted_tbl_df$count, "integer")    # count should be an integer
  expect_type(gifted_tbl_df$read, "double")      # read should be numeric
  expect_type(gifted_tbl_df$edutv, "double")     # edutv should be numeric
  expect_type(gifted_tbl_df$cartoons, "double")  # cartoons should be numeric
})

# Test for missing values
test_that("gifted_tbl_df has no missing values in critical columns", {
  expect_true(all(!is.na(gifted_tbl_df$score)), info = "score should not have missing values")
  expect_true(all(!is.na(gifted_tbl_df$fatheriq)), info = "fatheriq should not have missing values")
  expect_true(all(!is.na(gifted_tbl_df$motheriq)), info = "motheriq should not have missing values")
  expect_true(all(!is.na(gifted_tbl_df$speak)), info = "speak should not have missing values")
  expect_true(all(!is.na(gifted_tbl_df$count)), info = "count should not have missing values")
  expect_true(all(!is.na(gifted_tbl_df$read)), info = "read should not have missing values")
  expect_true(all(!is.na(gifted_tbl_df$edutv)), info = "edutv should not have missing values")
  expect_true(all(!is.na(gifted_tbl_df$cartoons)), info = "cartoons should not have missing values")
})

# Test range and values of "score", "fatheriq", "motheriq" columns
test_that("gifted_tbl_df columns have valid values", {
  expect_true(all(gifted_tbl_df$score >= 0, na.rm = TRUE), info = "score should be non-negative")
  expect_true(all(gifted_tbl_df$fatheriq >= 0, na.rm = TRUE), info = "fatheriq should be non-negative")
  expect_true(all(gifted_tbl_df$motheriq >= 0, na.rm = TRUE), info = "motheriq should be non-negative")
  expect_true(all(gifted_tbl_df$speak >= 0, na.rm = TRUE), info = "speak should be non-negative")
  expect_true(all(gifted_tbl_df$count >= 0, na.rm = TRUE), info = "count should be non-negative")
  expect_true(all(gifted_tbl_df$read >= 0, na.rm = TRUE), info = "read should be non-negative")
  expect_true(all(gifted_tbl_df$edutv >= 0, na.rm = TRUE), info = "edutv should be non-negative")
  expect_true(all(gifted_tbl_df$cartoons >= 0, na.rm = TRUE), info = "cartoons should be non-negative")
})

# Test immutability of gifted_tbl_df
test_that("gifted_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- gifted_tbl_df

  # Perform some example checks
  all(!is.na(gifted_tbl_df$score))
  all(!is.na(gifted_tbl_df$fatheriq))
  all(!is.na(gifted_tbl_df$motheriq))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, gifted_tbl_df)
  expect_equal(names(original_dataset), names(gifted_tbl_df))
  expect_equal(length(original_dataset), length(gifted_tbl_df))
})
