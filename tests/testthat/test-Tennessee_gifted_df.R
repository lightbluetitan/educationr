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

# Tennessee_gifted_df data set

library(testthat)

# Test dataset structure and class
test_that("Tennessee_gifted_df loads correctly and has the expected structure", {
  expect_s3_class(Tennessee_gifted_df, "data.frame")
  expect_equal(nrow(Tennessee_gifted_df), 20)
  expect_equal(ncol(Tennessee_gifted_df), 1)
  expect_equal(names(Tennessee_gifted_df), c("score"))
})

# Test for correct column types
test_that("Tennessee_gifted_df has correct column type", {
  expect_true(is.numeric(Tennessee_gifted_df$score),
              info = "The 'score' column should be a numeric vector")
})

# Test for missing values in the column
test_that("Tennessee_gifted_df does not have missing values", {
  n_na_score <- sum(is.na(Tennessee_gifted_df$score))

  expect_true(n_na_score == 0, info = paste("Found", n_na_score, "NA values in 'score'"))
})

# Test to verify dataset immutability
test_that("Tennessee_gifted_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Tennessee_gifted_df

  # Run some example tests
  sum(is.na(Tennessee_gifted_df$score))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Tennessee_gifted_df)
  expect_equal(nrow(original_dataset), nrow(Tennessee_gifted_df))
  expect_equal(ncol(original_dataset), ncol(Tennessee_gifted_df))
  expect_equal(names(original_dataset), names(Tennessee_gifted_df))
})



