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

# Kinder_tbl_df data set

library(testthat)

# Test dataset structure and class
test_that("Kinder_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(Kinder_tbl_df, "tbl_df")  # Check if it's a tibble
  expect_equal(nrow(Kinder_tbl_df), 8)  # Check number of rows
  expect_equal(ncol(Kinder_tbl_df), 3)  # Check number of columns
  expect_equal(names(Kinder_tbl_df), c("pair", "kinder", "nokinder"))  # Check column names
})

# Test data types of columns
test_that("Kinder_tbl_df has correct column types", {
  expect_true(is.numeric(Kinder_tbl_df$pair))  # Check if 'pair' is numeric
  expect_true(is.numeric(Kinder_tbl_df$kinder))  # Check if 'kinder' is numeric
  expect_true(is.numeric(Kinder_tbl_df$nokinder))  # Check if 'nokinder' is numeric
})

# Test for missing values in critical columns
test_that("Kinder_tbl_df does not have missing values", {
  n_na_pair <- sum(is.na(Kinder_tbl_df$pair))
  n_na_kinder <- sum(is.na(Kinder_tbl_df$kinder))
  n_na_nokinder <- sum(is.na(Kinder_tbl_df$nokinder))

  expect_true(n_na_pair == 0, info = paste("Found", n_na_pair, "NA values in pair"))
  expect_true(n_na_kinder == 0, info = paste("Found", n_na_kinder, "NA values in kinder"))
  expect_true(n_na_nokinder == 0, info = paste("Found", n_na_nokinder, "NA values in nokinder"))
})

# Test to verify dataset immutability
test_that("Kinder_tbl_df remains unchanged after tests", {
  original_dataset <- Kinder_tbl_df  # Create a copy of the original dataset

  # Run some example tests
  sum(is.na(Kinder_tbl_df$pair))  # Ensure no NAs in 'pair'
  sum(is.na(Kinder_tbl_df$kinder))  # Ensure no NAs in 'kinder'
  sum(is.na(Kinder_tbl_df$nokinder))  # Ensure no NAs in 'nokinder'

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, Kinder_tbl_df)
  expect_equal(nrow(original_dataset), nrow(Kinder_tbl_df))
  expect_equal(ncol(original_dataset), ncol(Kinder_tbl_df))
  expect_equal(names(original_dataset), names(Kinder_tbl_df))
})





