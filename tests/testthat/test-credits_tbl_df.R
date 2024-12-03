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

# credits_tbl_df data set

library(testthat)

# Test structure and class of credits_tbl_df
test_that("credits_tbl_df has the expected structure and class", {
  expect_s3_class(credits_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(credits_tbl_df), c("tbl_df", "tbl", "data.frame"))
  expect_equal(length(credits_tbl_df), 1)  # It should have 1 column
  expect_equal(names(credits_tbl_df), c("credits"))
})

# Test column type
test_that("credits_tbl_df column has the correct type", {
  expect_type(credits_tbl_df$credits, "integer")  # credits should be of integer type
})

# Test range and values of "credits" column
test_that("credits_tbl_df$credits values are valid", {
  expect_true(all(credits_tbl_df$credits >= 0, na.rm = TRUE),
              info = "credits should be non-negative")
  expect_true(all(!is.na(credits_tbl_df$credits)),
              info = "credits should not have missing values")
})

# Test dataset immutability
test_that("credits_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- credits_tbl_df

  # Perform some example checks (ensuring no accidental changes)
  expect_true(all(!is.na(credits_tbl_df$credits)), info = "credits should not have missing values")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, credits_tbl_df)
  expect_equal(names(original_dataset), names(credits_tbl_df))
  expect_equal(length(original_dataset), length(credits_tbl_df))
})

