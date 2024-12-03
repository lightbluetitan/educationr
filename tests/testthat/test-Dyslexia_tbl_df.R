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

# Dyslexia_tbl_df data set


library(testthat)

# Test dataset structure and class
test_that("Dyslexia_tbl_df loads correctly and has the expected structure", {
  # Check tibble and data frame classes
  expect_s3_class(Dyslexia_tbl_df, "tbl_df")
  expect_s3_class(Dyslexia_tbl_df, "tbl")
  expect_s3_class(Dyslexia_tbl_df, "data.frame")

  # Verify number of rows and columns
  expect_equal(nrow(Dyslexia_tbl_df), 8)
  expect_equal(ncol(Dyslexia_tbl_df), 7)

  # Check column names
  expect_equal(names(Dyslexia_tbl_df),
               c("words", "age", "gender", "handed", "weight", "height", "children"))
})

# Test data types of columns
test_that("Dyslexia_tbl_df has correct column types", {
  # Verify column types
  expect_type(Dyslexia_tbl_df$words, "integer")
  expect_type(Dyslexia_tbl_df$age, "integer")
  expect_type(Dyslexia_tbl_df$gender, "character")
  expect_type(Dyslexia_tbl_df$handed, "character")
  expect_type(Dyslexia_tbl_df$weight, "integer")
  expect_type(Dyslexia_tbl_df$height, "integer")
  expect_type(Dyslexia_tbl_df$children, "integer")
})

# Test for missing values
test_that("Dyslexia_tbl_df has no missing values", {
  # Check for NA values in each column
  expect_equal(sum(is.na(Dyslexia_tbl_df$words)), 0)
  expect_equal(sum(is.na(Dyslexia_tbl_df$age)), 0)
  expect_equal(sum(is.na(Dyslexia_tbl_df$gender)), 0)
  expect_equal(sum(is.na(Dyslexia_tbl_df$handed)), 0)
  expect_equal(sum(is.na(Dyslexia_tbl_df$weight)), 0)
  expect_equal(sum(is.na(Dyslexia_tbl_df$height)), 0)
  expect_equal(sum(is.na(Dyslexia_tbl_df$children)), 0)
})

# Test value ranges for numeric columns
test_that("Dyslexia_tbl_df has reasonable numeric ranges", {
  # Use less restrictive range checks based on actual data
  expect_true(all(Dyslexia_tbl_df$age >= 18 & Dyslexia_tbl_df$age <= 21))
  expect_true(all(Dyslexia_tbl_df$weight >= 100 & Dyslexia_tbl_df$weight <= 210))
  expect_true(all(Dyslexia_tbl_df$height >= 61 & Dyslexia_tbl_df$height <= 72))
})

# Test categorical variables
test_that("Dyslexia_tbl_df has valid categorical values", {
  # Validate specific categorical values
  expect_true(all(Dyslexia_tbl_df$gender %in% c("male", "female")))
  expect_true(all(Dyslexia_tbl_df$handed %in% c("left", "right")))
})

# Test dataset diversity
test_that("Dyslexia_tbl_df shows data diversity", {
  # Ensure multiple unique values in key columns
  expect_true(length(unique(Dyslexia_tbl_df$age)) > 1)
  expect_true(length(unique(Dyslexia_tbl_df$gender)) > 1)
  expect_true(length(unique(Dyslexia_tbl_df$handed)) > 1)
})

# Test dataset immutability
test_that("Dyslexia_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- Dyslexia_tbl_df

  # Run some example operations that don't modify the dataset
  length(Dyslexia_tbl_df)
  names(Dyslexia_tbl_df)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Dyslexia_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Dyslexia_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Dyslexia_tbl_df))
  expect_equal(names(original_dataset), names(Dyslexia_tbl_df))
})
