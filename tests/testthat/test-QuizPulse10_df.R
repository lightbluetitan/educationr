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

# QuizPulse10_df data set


library(testthat)

# Test dataset structure and class
test_that("QuizPulse10_df loads correctly and has the expected structure", {
  expect_s3_class(QuizPulse10_df, "data.frame")
  expect_equal(nrow(QuizPulse10_df), 10)
  expect_equal(ncol(QuizPulse10_df), 3)
  expect_equal(names(QuizPulse10_df), c("Student", "Quiz", "Lecture"))
})

# Test for correct column types
test_that("QuizPulse10_df has correct column types", {
  expect_true(is.integer(QuizPulse10_df$Student),
              info = "The 'Student' column should be an integer vector")
  expect_true(is.integer(QuizPulse10_df$Quiz),
              info = "The 'Quiz' column should be an integer vector")
  expect_true(is.integer(QuizPulse10_df$Lecture),
              info = "The 'Lecture' column should be an integer vector")
})

# Test for missing values in the columns
test_that("QuizPulse10_df does not have missing values", {
  n_na_student <- sum(is.na(QuizPulse10_df$Student))
  n_na_quiz <- sum(is.na(QuizPulse10_df$Quiz))
  n_na_lecture <- sum(is.na(QuizPulse10_df$Lecture))

  expect_true(n_na_student == 0, info = paste("Found", n_na_student, "NA values in Student"))
  expect_true(n_na_quiz == 0, info = paste("Found", n_na_quiz, "NA values in Quiz"))
  expect_true(n_na_lecture == 0, info = paste("Found", n_na_lecture, "NA values in Lecture"))
})

# Test to verify dataset immutability
test_that("QuizPulse10_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- QuizPulse10_df

  # Run some example tests
  sum(is.na(QuizPulse10_df$Student))
  sum(is.na(QuizPulse10_df$Quiz))
  sum(is.na(QuizPulse10_df$Lecture))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, QuizPulse10_df)
  expect_equal(nrow(original_dataset), nrow(QuizPulse10_df))
  expect_equal(ncol(original_dataset), ncol(QuizPulse10_df))
  expect_equal(names(original_dataset), names(QuizPulse10_df))
})



