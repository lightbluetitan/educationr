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

# ability_list data set

library(testthat)

# Test structure and class of ability_list
test_that("ability_list has the expected structure and class", {
  expect_type(ability_list, "list")  # Check that ability_list is of type "list"
  expect_equal(class(ability_list), "list")  # Ensure the class is explicitly "list"
  expect_equal(names(ability_list), c("cov", "center", "n.obs"))
  expect_equal(length(ability_list), 3)
})

# Test dimensions and attributes of the "cov" component
test_that("ability_list$cov has the expected structure", {
  expect_type(ability_list$cov, "double")
  expect_true(is.matrix(ability_list$cov), info = "ability_list$cov should be a matrix")
  expect_true(!is.null(dimnames(ability_list$cov)), info = "Matrix cov should have dimnames")
  expect_true(length(dim(ability_list$cov)) == 2, info = "cov should have exactly 2 dimensions")
})

# Test the "center" component
test_that("ability_list$center has the expected structure", {
  expect_type(ability_list$center, "double")
  expect_true(is.vector(ability_list$center), info = "ability_list$center should be a numeric vector")
  expect_true(length(ability_list$center) == nrow(ability_list$cov),
              info = "The length of center should match the row count of cov")
})

# Test the "n.obs" component
test_that("ability_list$n.obs has the expected structure", {
  expect_type(ability_list$n.obs, "double")
  expect_true(length(ability_list$n.obs) == 1, info = "n.obs should be a single numeric value")
  expect_true(ability_list$n.obs > 0, info = "n.obs should be a positive value")
})

# Test dataset immutability
test_that("ability_list remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- ability_list

  # Perform some example tests
  sum(is.na(ability_list$center))
  all(dim(ability_list$cov) > 0)

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, ability_list)
  expect_equal(names(original_dataset), names(ability_list))
  expect_equal(length(original_dataset), length(ability_list))
})
