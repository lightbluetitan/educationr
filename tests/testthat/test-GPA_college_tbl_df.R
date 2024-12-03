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

# GPA_college_tbl_df data set

library(testthat)

# Test structure and class of GPA_college_tbl_df
test_that("GPA_college_tbl_df has the expected structure and class", {
  expect_s3_class(GPA_college_tbl_df, "tbl_df")  # Verify it is a tibble
  expect_equal(class(GPA_college_tbl_df), c("tbl_df", "tbl", "data.frame"))
  expect_equal(length(GPA_college_tbl_df), 2)  # It should have 2 columns
  expect_equal(names(GPA_college_tbl_df), c("hsgpa", "collgpa"))
})

# Test column types
test_that("GPA_college_tbl_df columns have the correct types", {
  expect_type(GPA_college_tbl_df$hsgpa, "double")   # hsgpa should be numeric
  expect_type(GPA_college_tbl_df$collgpa, "double") # collgpa should be numeric
})

# Test for missing values
test_that("GPA_college_tbl_df has no missing values in critical columns", {
  expect_true(all(!is.na(GPA_college_tbl_df$hsgpa)), info = "hsgpa should not have missing values")
  expect_true(all(!is.na(GPA_college_tbl_df$collgpa)), info = "collgpa should not have missing values")
})

# Test range and values of "hsgpa" and "collgpa" columns
test_that("GPA_college_tbl_df columns have valid values", {
  expect_true(all(GPA_college_tbl_df$hsgpa >= 0 & GPA_college_tbl_df$hsgpa <= 4, na.rm = TRUE), info = "hsgpa should be between 0 and 4")
  expect_true(all(GPA_college_tbl_df$collgpa >= 0 & GPA_college_tbl_df$collgpa <= 4, na.rm = TRUE), info = "collgpa should be between 0 and 4")
})

# Test immutability of GPA_college_tbl_df
test_that("GPA_college_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- GPA_college_tbl_df

  # Perform some example checks
  all(!is.na(GPA_college_tbl_df$hsgpa))
  all(!is.na(GPA_college_tbl_df$collgpa))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, GPA_college_tbl_df)
  expect_equal(names(original_dataset), names(GPA_college_tbl_df))
  expect_equal(length(original_dataset), length(GPA_college_tbl_df))
})
