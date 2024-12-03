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

# TextbookCosts_df data set

library(testthat)

# Test dataset structure and class
test_that("TextbookCosts_df loads correctly and has the expected structure", {
  expect_s3_class(TextbookCosts_df, "data.frame")
  expect_equal(nrow(TextbookCosts_df), 40)
  expect_equal(ncol(TextbookCosts_df), 3)
  expect_equal(names(TextbookCosts_df), c("Field", "Books", "Cost"))
})

# Test for correct column types
test_that("TextbookCosts_df has correct column types", {
  expect_true(is.factor(TextbookCosts_df$Field),
              info = "The 'Field' column should be a factor")
  expect_true(is.integer(TextbookCosts_df$Books),
              info = "The 'Books' column should be an integer")
  expect_true(is.integer(TextbookCosts_df$Cost),
              info = "The 'Cost' column should be an integer")
})

# Test for missing values in the columns
test_that("TextbookCosts_df does not have missing values", {
  expect_equal(sum(is.na(TextbookCosts_df$Field)), 0,
               info = "The 'Field' column should not contain NA values")
  expect_equal(sum(is.na(TextbookCosts_df$Books)), 0,
               info = "The 'Books' column should not contain NA values")
  expect_equal(sum(is.na(TextbookCosts_df$Cost)), 0,
               info = "The 'Cost' column should not contain NA values")
})

# Test to verify dataset immutability
test_that("TextbookCosts_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- TextbookCosts_df

  # Run some example tests
  sum(is.na(TextbookCosts_df$Field))
  sum(is.na(TextbookCosts_df$Books))
  sum(is.na(TextbookCosts_df$Cost))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, TextbookCosts_df)
  expect_equal(nrow(original_dataset), nrow(TextbookCosts_df))
  expect_equal(ncol(original_dataset), ncol(TextbookCosts_df))
  expect_equal(names(original_dataset), names(TextbookCosts_df))
})
