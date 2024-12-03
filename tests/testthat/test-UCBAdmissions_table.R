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

# UCBAdmissions_table data set

library(testthat)

# Test the class and structure of UCBAdmissions_table
test_that("UCBAdmissions_table is a table with the expected dimensions and structure", {
  expect_s3_class(UCBAdmissions_table, "table")
  expect_equal(length(UCBAdmissions_table), 24)  # Should be a 2x2x6 table (2 gender categories, 2 admit categories, 6 departments)

  # Check that the table has 3 dimensions (Gender, Admit, Dept)
  expect_equal(length(dim(UCBAdmissions_table)), 3)
  expect_equal(dim(UCBAdmissions_table), c(2, 2, 6))  # 2 Gender x 2 Admit x 6 Departments
})

# Check the dimensions' names (should be "Admit", "Gender", "Dept")
test_that("UCBAdmissions_table has correct dimension names", {
  expect_equal(dimnames(UCBAdmissions_table)[[1]], c("Admitted", "Rejected"))
  expect_equal(dimnames(UCBAdmissions_table)[[2]], c("Male", "Female"))
  expect_equal(dimnames(UCBAdmissions_table)[[3]], c("A", "B", "C", "D", "E", "F"))
})

# Check that no values are NA in the table
test_that("UCBAdmissions_table has no missing values", {
  expect_equal(sum(is.na(UCBAdmissions_table)), 0)
})

# Ensure the dataset is not modified during the test
test_that("UCBAdmissions_table remains unchanged after tests", {
  original_table <- UCBAdmissions_table

  # Run an example operation to check if the table is unchanged
  sum(UCBAdmissions_table["Admitted", "Male", ])

  # Verify the table hasn't changed
  expect_identical(original_table, UCBAdmissions_table)
})




