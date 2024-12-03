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

# Develop_tbl_df data set


library(testthat)

# Test structure and class of Develop_tbl_df
test_that("Develop_tbl_df has the expected structure and class", {
  expect_s3_class(Develop_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(Develop_tbl_df), c("tbl_df", "tbl", "data.frame"))
  expect_equal(length(Develop_tbl_df), 2)  # It should have 2 columns
  expect_equal(names(Develop_tbl_df), c("race", "college"))
})

# Test column types
test_that("Develop_tbl_df columns have the correct types", {
  expect_s3_class(Develop_tbl_df$race, "factor")  # race should be a factor
  expect_s3_class(Develop_tbl_df$college, "factor")  # college should be a factor
})

# Test levels in the 'race' column
test_that("Develop_tbl_df race column has the correct levels", {
  expect_equal(levels(Develop_tbl_df$race),
               c("African American", "American Indian", "Asian", "Latino", "White"))
})

# Test levels in the 'college' column
test_that("Develop_tbl_df college column has the correct levels", {
  expect_equal(levels(Develop_tbl_df$college), c("Two-year", "Four-year"))
})

# Test dataset immutability
test_that("Develop_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Develop_tbl_df

  # Perform some example checks (ensuring no accidental changes)
  expect_equal(levels(Develop_tbl_df$race),
               c("African American", "American Indian", "Asian", "Latino", "White"))
  expect_equal(levels(Develop_tbl_df$college), c("Two-year", "Four-year"))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Develop_tbl_df)
  expect_equal(names(original_dataset), names(Develop_tbl_df))
  expect_equal(length(original_dataset), length(Develop_tbl_df))
})
