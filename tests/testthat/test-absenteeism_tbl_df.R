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

# absenteeism_tbl_df data set

library(testthat)

# Test structure and class of absenteeism_tbl_df
test_that("absenteeism_tbl_df has the expected structure and class", {
  expect_s3_class(absenteeism_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(absenteeism_tbl_df), c("tbl_df", "tbl", "data.frame"))
  expect_equal(length(absenteeism_tbl_df), 5)  # It should have 5 columns
  expect_equal(names(absenteeism_tbl_df), c("eth", "sex", "age", "lrn", "days"))
})

# Test column types
test_that("absenteeism_tbl_df columns have the correct types", {
  expect_true(is.factor(absenteeism_tbl_df$eth), info = "eth should be a factor")
  expect_true(is.factor(absenteeism_tbl_df$sex), info = "sex should be a factor")
  expect_true(is.factor(absenteeism_tbl_df$age), info = "age should be a factor")
  expect_true(is.factor(absenteeism_tbl_df$lrn), info = "lrn should be a factor")
  expect_type(absenteeism_tbl_df$days, "integer")
})

# Test levels of factors
test_that("absenteeism_tbl_df factor columns have expected levels", {
  expect_true(length(levels(absenteeism_tbl_df$eth)) == 2, info = "eth should have 2 levels")
  expect_true(length(levels(absenteeism_tbl_df$sex)) == 2, info = "sex should have 2 levels")
  expect_true(length(levels(absenteeism_tbl_df$age)) == 4, info = "age should have 4 levels")
  expect_true(length(levels(absenteeism_tbl_df$lrn)) == 2, info = "lrn should have 2 levels")
})

# Test range and values of "days" column
test_that("absenteeism_tbl_df$days values are valid", {
  expect_true(all(absenteeism_tbl_df$days >= 0, na.rm = TRUE),
              info = "days should be non-negative")
  expect_true(all(!is.na(absenteeism_tbl_df$days)),
              info = "days should not have missing values")
})

# Test dataset immutability
test_that("absenteeism_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- absenteeism_tbl_df

  # Perform some example checks
  all(!is.na(absenteeism_tbl_df$days))
  all(levels(absenteeism_tbl_df$eth) %in% levels(original_dataset$eth))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, absenteeism_tbl_df)
  expect_equal(names(original_dataset), names(absenteeism_tbl_df))
  expect_equal(length(original_dataset), length(absenteeism_tbl_df))
})
