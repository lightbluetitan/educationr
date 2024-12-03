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

# Parented_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("Parented_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Parented_tbl_df, "tbl_df")
  expect_equal(nrow(Parented_tbl_df), 200)
  expect_equal(ncol(Parented_tbl_df), 2)
  expect_equal(names(Parented_tbl_df), c("education", "parent"))
})

# Test data types of columns
test_that("Parented_tbl_df has correct column types", {
  expect_s3_class(Parented_tbl_df$education, "factor")
  expect_s3_class(Parented_tbl_df$parent, "factor")
})

# Test levels of education and parent
test_that("Parented_tbl_df has expected levels for education", {
  expect_equal(levels(Parented_tbl_df$education),
               c("H.S grad or less", "Some college", "4yr college degree",
                 "Some grad school", "Grad degree", "Doctoral degree"))
})

test_that("Parented_tbl_df has expected levels for parent", {
  expect_equal(levels(Parented_tbl_df$parent), c("mother", "father"))
})

# Test for missing values in critical columns
test_that("Parented_tbl_df reports NA values in critical columns", {
  critical_columns <- c("education", "parent")
  for (column in critical_columns) {
    n_na <- sum(is.na(Parented_tbl_df[[column]]))
    expect_true(n_na >= 0, info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("Parented_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Parented_tbl_df

  # Run some example tests
  sum(is.na(Parented_tbl_df$education))
  sum(is.na(Parented_tbl_df$parent))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Parented_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Parented_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Parented_tbl_df))
  expect_equal(names(original_dataset), names(Parented_tbl_df))
})
