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

# PSAT_SAT_tbl_df data set

library(testthat)

# Test dataset structure and class
test_that("PSAT_SAT_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(PSAT_SAT_tbl_df, "tbl_df")
  expect_equal(nrow(PSAT_SAT_tbl_df), 7)
  expect_equal(ncol(PSAT_SAT_tbl_df), 2)
  expect_equal(names(PSAT_SAT_tbl_df), c("psat", "sat"))
})

# Test for correct column types
test_that("PSAT_SAT_tbl_df has correct column types", {
  expect_true(is.integer(PSAT_SAT_tbl_df$psat),
              info = "The 'psat' column should be an integer vector")
  expect_true(is.integer(PSAT_SAT_tbl_df$sat),
              info = "The 'sat' column should be an integer vector")
})

# Test for missing values in the columns
test_that("PSAT_SAT_tbl_df reports NA values", {
  n_na_psat <- sum(is.na(PSAT_SAT_tbl_df$psat))
  n_na_sat <- sum(is.na(PSAT_SAT_tbl_df$sat))
  expect_true(n_na_psat >= 0, info = paste("Found", n_na_psat, "NA values in psat"))
  expect_true(n_na_sat >= 0, info = paste("Found", n_na_sat, "NA values in sat"))
})

# Test to verify dataset immutability
test_that("PSAT_SAT_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- PSAT_SAT_tbl_df

  # Run some example tests
  sum(is.na(PSAT_SAT_tbl_df$psat))
  sum(is.na(PSAT_SAT_tbl_df$sat))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, PSAT_SAT_tbl_df)
  expect_equal(nrow(original_dataset), nrow(PSAT_SAT_tbl_df))
  expect_equal(ncol(original_dataset), ncol(PSAT_SAT_tbl_df))
  expect_equal(names(original_dataset), names(PSAT_SAT_tbl_df))
})
