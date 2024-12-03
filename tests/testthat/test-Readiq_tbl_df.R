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

# Readiq_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("Readiq_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Readiq_tbl_df, "tbl_df")
  expect_equal(nrow(Readiq_tbl_df), 14)
  expect_equal(ncol(Readiq_tbl_df), 2)
  expect_equal(names(Readiq_tbl_df), c("reading", "iq"))
})

# Test for correct column types
test_that("Readiq_tbl_df has correct column types", {
  expect_true(is.integer(Readiq_tbl_df$reading),
              info = "The 'reading' column should be an integer vector")
  expect_true(is.integer(Readiq_tbl_df$iq),
              info = "The 'iq' column should be an integer vector")
})

# Test for missing values in the columns
test_that("Readiq_tbl_df does not have missing values", {
  n_na_reading <- sum(is.na(Readiq_tbl_df$reading))
  n_na_iq <- sum(is.na(Readiq_tbl_df$iq))

  expect_true(n_na_reading == 0, info = paste("Found", n_na_reading, "NA values in 'reading'"))
  expect_true(n_na_iq == 0, info = paste("Found", n_na_iq, "NA values in 'iq'"))
})

# Test to verify dataset immutability
test_that("Readiq_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Readiq_tbl_df

  # Run some example tests
  sum(is.na(Readiq_tbl_df$reading))
  sum(is.na(Readiq_tbl_df$iq))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Readiq_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Readiq_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Readiq_tbl_df))
  expect_equal(names(original_dataset), names(Readiq_tbl_df))
})





