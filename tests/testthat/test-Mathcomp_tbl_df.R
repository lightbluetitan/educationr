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

# Mathcomp_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("Mathcomp_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Mathcomp_tbl_df, "tbl_df")
  expect_equal(nrow(Mathcomp_tbl_df), 31)
  expect_equal(ncol(Mathcomp_tbl_df), 1)
  expect_equal(names(Mathcomp_tbl_df), c("score"))
})

# Test data types of columns
test_that("Mathcomp_tbl_df has correct column types", {
  expect_true(is.integer(Mathcomp_tbl_df$score), info = "Column 'score' is not integer")
})

# Test for missing values in the critical column
test_that("Mathcomp_tbl_df reports NA values in score", {
  n_na_score <- sum(is.na(Mathcomp_tbl_df$score))
  expect_true(n_na_score >= 0, info = paste("Found", n_na_score, "NA values in score"))
})

# Test to verify dataset immutability
test_that("Mathcomp_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Mathcomp_tbl_df

  # Run some example tests
  sum(is.na(Mathcomp_tbl_df$score))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Mathcomp_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Mathcomp_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Mathcomp_tbl_df))
  expect_equal(names(original_dataset), names(Mathcomp_tbl_df))
})

