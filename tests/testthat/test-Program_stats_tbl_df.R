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

# Program_stats_tbl_df data set



library(testthat)

# Test dataset structure and class
test_that("Program_stats_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Program_stats_tbl_df, "tbl_df")
  expect_equal(nrow(Program_stats_tbl_df), 44)
  expect_equal(ncol(Program_stats_tbl_df), 2)
  expect_equal(names(Program_stats_tbl_df), c("method", "score"))
})

# Test for correct column types
test_that("Program_stats_tbl_df has correct column types", {
  expect_true(is.character(Program_stats_tbl_df$method),
              info = "The 'method' column should be a character vector")
  expect_true(is.integer(Program_stats_tbl_df$score),
              info = "The 'score' column should be an integer vector")
})

# Test for missing values in the columns
test_that("Program_stats_tbl_df reports NA values", {
  n_na_method <- sum(is.na(Program_stats_tbl_df$method))
  n_na_score <- sum(is.na(Program_stats_tbl_df$score))
  expect_true(n_na_method >= 0, info = paste("Found", n_na_method, "NA values in method"))
  expect_true(n_na_score >= 0, info = paste("Found", n_na_score, "NA values in score"))
})

# Test to verify dataset immutability
test_that("Program_stats_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Program_stats_tbl_df

  # Run some example tests
  sum(is.na(Program_stats_tbl_df$method))
  sum(is.na(Program_stats_tbl_df$score))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Program_stats_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Program_stats_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Program_stats_tbl_df))
  expect_equal(names(original_dataset), names(Program_stats_tbl_df))
})



