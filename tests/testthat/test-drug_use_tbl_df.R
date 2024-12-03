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

# drug_use_tbl_df data set

library(testthat)

# Test dataset structure and class
test_that("drug_use_tbl_df loads correctly and has the expected structure", {
  # Check tibble and data frame classes
  expect_s3_class(drug_use_tbl_df, "tbl_df")
  expect_s3_class(drug_use_tbl_df, "tbl")
  expect_s3_class(drug_use_tbl_df, "data.frame")

  # Verify number of rows and columns
  expect_equal(nrow(drug_use_tbl_df), 445)
  expect_equal(ncol(drug_use_tbl_df), 2)

  # Check column names
  expect_equal(names(drug_use_tbl_df), c("student", "parents"))
})

# Test data types of columns
test_that("drug_use_tbl_df has correct column types", {
  # Verify both columns are factors
  expect_true(is.factor(drug_use_tbl_df$student))
  expect_true(is.factor(drug_use_tbl_df$parents))

  # Verify number of levels
  expect_equal(nlevels(drug_use_tbl_df$student), 2)
  expect_equal(nlevels(drug_use_tbl_df$parents), 2)
})

# Test factor levels
test_that("drug_use_tbl_df factor levels are valid", {
  # Check that each column has exactly 2 levels
  expect_equal(length(levels(drug_use_tbl_df$student)), 2)
  expect_equal(length(levels(drug_use_tbl_df$parents)), 2)
})

# Test for missing values
test_that("drug_use_tbl_df has no missing values", {
  # Check for NA values in each column
  expect_equal(sum(is.na(drug_use_tbl_df$student)), 0)
  expect_equal(sum(is.na(drug_use_tbl_df$parents)), 0)
})

# Test level presence
test_that("drug_use_tbl_df has levels with data", {
  # Ensure both levels are present in both columns
  expect_true(length(unique(drug_use_tbl_df$student)) == 2)
  expect_true(length(unique(drug_use_tbl_df$parents)) == 2)
})

# Test dataset immutability
test_that("drug_use_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- drug_use_tbl_df

  # Run some example operations that don't modify the dataset
  length(drug_use_tbl_df)
  names(drug_use_tbl_df)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, drug_use_tbl_df)
  expect_equal(nrow(original_dataset), nrow(drug_use_tbl_df))
  expect_equal(ncol(original_dataset), ncol(drug_use_tbl_df))
  expect_equal(names(original_dataset), names(drug_use_tbl_df))
})
