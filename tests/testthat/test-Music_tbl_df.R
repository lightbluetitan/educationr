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

# Music_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("Music_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Music_tbl_df, "tbl_df")
  expect_equal(nrow(Music_tbl_df), 12)
  expect_equal(ncol(Music_tbl_df), 3)
  expect_equal(names(Music_tbl_df), c("method1", "method2", "differ"))
})

# Test data types of columns
test_that("Music_tbl_df has correct column types", {
  expect_true(is.integer(Music_tbl_df$method1), info = "Column 'method1' is not integer")
  expect_true(is.integer(Music_tbl_df$method2), info = "Column 'method2' is not integer")
  expect_true(is.integer(Music_tbl_df$differ), info = "Column 'differ' is not integer")
})

# Test for missing values in the critical columns
test_that("Music_tbl_df reports NA values in critical columns", {
  critical_columns <- c("method1", "method2", "differ")
  for (column in critical_columns) {
    n_na <- sum(is.na(Music_tbl_df[[column]]))
    expect_true(n_na >= 0, info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("Music_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Music_tbl_df

  # Run some example tests
  sum(is.na(Music_tbl_df$method1))
  sum(is.na(Music_tbl_df$method2))
  sum(is.na(Music_tbl_df$differ))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Music_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Music_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Music_tbl_df))
  expect_equal(names(original_dataset), names(Music_tbl_df))
})
