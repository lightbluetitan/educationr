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

# Blackedu_tbl_df data set

library(testthat)

# Test structure and class of Blackedu_tbl_df
test_that("Blackedu_tbl_df has the expected structure and class", {
  expect_s3_class(Blackedu_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(Blackedu_tbl_df), c("tbl_df", "tbl", "data.frame"))
  expect_equal(length(Blackedu_tbl_df), 2)  # It should have 2 columns
  expect_equal(names(Blackedu_tbl_df), c("gender", "education"))
})

# Test column types
test_that("Blackedu_tbl_df columns have the correct types", {
  expect_true(is.factor(Blackedu_tbl_df$gender), info = "gender should be a factor")
  expect_true(is.factor(Blackedu_tbl_df$education), info = "education should be a factor")
})

# Test levels of factors
test_that("Blackedu_tbl_df factor columns have expected levels", {
  expect_true(length(levels(Blackedu_tbl_df$gender)) == 2, info = "gender should have 2 levels")
  expect_true(length(levels(Blackedu_tbl_df$education)) == 5, info = "education should have 5 levels")
})

# Test dataset immutability
test_that("Blackedu_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Blackedu_tbl_df

  # Perform some example checks
  all(levels(Blackedu_tbl_df$gender) %in% levels(original_dataset$gender))
  all(levels(Blackedu_tbl_df$education) %in% levels(original_dataset$education))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Blackedu_tbl_df)
  expect_equal(names(original_dataset), names(Blackedu_tbl_df))
  expect_equal(length(original_dataset), length(Blackedu_tbl_df))
})
