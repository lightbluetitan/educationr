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

# Books_tbl_df data set

library(testthat)

# Test structure and class of Books_tbl_df
test_that("Books_tbl_df has the expected structure and class", {
  expect_s3_class(Books_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(Books_tbl_df), c("tbl_df", "tbl", "data.frame"))
  expect_equal(length(Books_tbl_df), 2)  # It should have 2 columns
  expect_equal(names(Books_tbl_df), c("book", "spelling"))
})

# Test column types
test_that("Books_tbl_df columns have the correct types", {
  expect_type(Books_tbl_df$book, "integer")  # book should be an integer
  expect_type(Books_tbl_df$spelling, "integer")  # spelling should be an integer
})

# Test dataset immutability
test_that("Books_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Books_tbl_df

  # Perform some example checks (ensuring no accidental changes)
  expect_true(all(!is.na(Books_tbl_df$book)), info = "book should not have missing values")
  expect_true(all(!is.na(Books_tbl_df$spelling)), info = "spelling should not have missing values")

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Books_tbl_df)
  expect_equal(names(original_dataset), names(Books_tbl_df))
  expect_equal(length(original_dataset), length(Books_tbl_df))
})
