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


#' Ability and Intelligence Tests
#'
#' This dataset, ability_list, is a list containing information about six ability and intelligence tests
#' administered to 112 individuals. The dataset provides a covariance matrix, the means (centers) of the
#' variables, and the number of observations.
#'
#' The dataset name has been kept as 'ability_list' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'list' indicates that the dataset is a list object. The original content has not been modified in any way.
#'
#' @name ability_list
#' @format A list with 3 components:
#' \describe{
#'   \item{cov}{A covariance matrix (numeric matrix) of dimensions 6x6, representing the relationships
#'   between six different tests.}
#'   \item{center}{A numeric vector of length 6 containing the mean scores for each of the six tests.}
#'   \item{n.obs}{The total number of observations (integer), which is 112.}
#' }
#' @source Generated for educational purposes.
#' @usage data(ability_list)
#' @export
load("data/ability_list.rda")
NULL


#' Absenteeism from School in New South Wales
#'
#' This dataset, absenteeism_tbl_df, is a tibble containing information about absenteeism from school
#' and certain demographic characteristics of children in rural New South Wales, Australia.
#' The dataset includes data from 146 randomly sampled students during a particular school year,
#' providing insights into the relationships between absenteeism and variables such as ethnicity, sex,
#' age group, and learning categories.
#'
#' The dataset name has been kept as 'absenteeism_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name absenteeism_tbl_df
#' @format A tibble with 146 observations and 5 variables:
#' \describe{
#'   \item{eth}{Ethnicity of the student (factor with 2 levels).}
#'   \item{sex}{Sex of the student (factor with 2 levels).}
#'   \item{age}{Age group of the student (factor with 4 levels).}
#'   \item{lrn}{Learning category of the student, e.g., slow learner or not (factor with 2 levels).}
#'   \item{days}{Number of days the student was absent from school (integer).}
#' }
#' @source Data collected from a study in rural New South Wales, Australia.
#' @usage data(absenteeism_tbl_df)
#' @export
load("data/absenteeism_tbl_df.rda")
NULL



#' Math Achievement Test Scores by Gender
#'
#' This dataset, Achieve_tbl_df, is a tibble containing information about math achievement test scores
#' for 25 high school students, categorized by gender. The dataset provides insights into the distribution
#' of scores between male and female students.
#'
#' The dataset name has been kept as 'Achieve_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Achieve_tbl_df
#' @format A tibble with 25 observations and 2 variables:
#' \describe{
#'   \item{score}{Math achievement test score of the student (integer).}
#'   \item{gender}{Gender of the student (factor with 2 levels: "Male", "Female").}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Achieve_tbl_df)
#' @export
load("data/Achieve_tbl_df.rda")
NULL


#' Math Test Scores versus Anxiety Scores
#'
#' This dataset, Anxiety_tbl_df, is a tibble containing information about math test scores and anxiety
#' levels before the test for 20 students. The dataset provides insights into the relationship between
#' anxiety levels and math test performance.
#'
#' The dataset name has been kept as 'Anxiety_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Anxiety_tbl_df
#' @format A tibble with 20 observations and 2 variables:
#' \describe{
#'   \item{anxiety}{Anxiety score of the student before taking the math test (integer).}
#'   \item{math}{Math test score of the student (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Anxiety_tbl_df)
#' @export
load("data/Anxiety_tbl_df.rda")
NULL


#' Grad Rates: Athletes vs. Non-Athletes Big Ten Conf.
#'
#' This dataset, Bigten_tbl_df, is a tibble containing information about the graduation rates of
#' student athletes and nonathletes in the Big Ten Conference. The dataset includes data from two
#' academic years, showing the graduation rates by school and athlete status (athletes vs nonathletes).
#'
#' The dataset name has been kept as 'Bigten_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Bigten_tbl_df
#' @format A tibble with 44 observations and 4 variables:
#' \describe{
#'   \item{school}{Name of the school (character).}
#'   \item{year}{Year of the data (factor with 2 levels).}
#'   \item{rate}{Graduation rate percentage (integer).}
#'   \item{status}{Athlete status (character, either 'Athlete' or 'Nonathlete').}
#' }
#' @source NCAA Graduation Rates Report, 2000.
#' @usage data(Bigten_tbl_df)
#' @export
load("data/Bigten_tbl_df.rda")
NULL


#' Test Scores on First Exam in Biology Class
#'
#' This dataset, Biology_tbl_df, is a tibble containing the test scores of 30 students on their first
#' exam in a biology class. The dataset provides insight into the distribution of scores among the students.
#'
#' The dataset name has been kept as 'Biology_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Biology_tbl_df
#' @format A tibble with 30 observations and 1 variable:
#' \describe{
#'   \item{score}{Test scores on the first biology exam (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Biology_tbl_df)
#' @export
load("data/Biology_tbl_df.rda")
NULL


#' Education Level of Blacks by Gender
#'
#' This dataset, Blackedu_tbl_df, is a tibble containing information about the education level of
#' Black individuals, categorized by gender. The dataset includes 3800 observations and provides insights
#' into the distribution of education levels across different gender groups.
#'
#' The dataset name has been kept as 'Blackedu_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Blackedu_tbl_df
#' @format A tibble with 3800 observations and 2 variables:
#' \describe{
#'   \item{gender}{Gender of the individual (factor with 2 levels).}
#'   \item{education}{Education level of the individual (factor with 5 levels).}
#' }
#' @source Bureau of Census data.
#' @usage data(Blackedu_tbl_df)
#' @export
load("data/Blackedu_tbl_df.rda")
NULL


#' Books Read & Spelling Scores: 17 Third Graders
#'
#' This dataset, Books_tbl_df, is a tibble containing information about the number of books read
#' and spelling scores for 17 third-grade students. The dataset provides insights into the relationship
#' between the number of books read and spelling scores in this group of students.
#'
#' The dataset name has been kept as 'Books_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Books_tbl_df
#' @format A tibble with 17 observations and 2 variables:
#' \describe{
#'   \item{book}{Number of books read by the student (integer).}
#'   \item{spelling}{Spelling score of the student (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Books_tbl_df)
#' @export
load("data/Books_tbl_df.rda")
NULL


#' Community college housing (simulated data)
#'
#' This dataset, cchousing_tbl_df, is a tibble containing simulated data on housing prices for
#' students at a community college. The dataset provides the housing prices for 75 students,
#' offering insights into the distribution of housing prices in this educational setting.
#'
#' The dataset name has been kept as 'cchousing_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name cchousing_tbl_df
#' @format A tibble with 75 observations and 1 variable:
#' \describe{
#'   \item{price}{Housing price for the student (numeric).}
#' }
#' @source The dataset was taken from the openintro package.
#' @usage data(cchousing_tbl_df)
#' @export
load("data/cchousing_tbl_df.rda")
NULL


#' College Credits
#'
#' This dataset, credits_tbl_df, is a tibble containing simulated data on the number of college
#' credits taken by students each semester. The dataset includes data from 100 students, providing
#' insights into the distribution of credits taken by students in a college setting.
#'
#' The dataset name has been kept as 'credits_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name credits_tbl_df
#' @format A tibble with 100 observations and 1 variable:
#' \describe{
#'   \item{credits}{Number of college credits taken by the student (integer).}
#' }
#' @source The dataset was taken from the openintro package (simulated data).
#' @usage data(credits_tbl_df)
#' @export
load("data/credits_tbl_df.rda")
NULL


#' US Crime Rates vs. High School Dropout
#'
#' This dataset, crime_degree_tbl_df, is a tibble containing data on crime rates and the percentage
#' of the population without a high school degree in 51 U.S. states. The dataset includes information on
#' the crime rate and the percentage of the population without a high school degree for each state.
#'
#' The dataset name has been kept as 'crime_degree_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name crime_degree_tbl_df
#' @format A tibble with 51 observations and 3 variables:
#' \describe{
#'   \item{state}{State name (character).}
#'   \item{nodegree}{Percentage of the population without a high school degree (numeric).}
#'   \item{crime}{Crime rate (numeric).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(crime_degree_tbl_df)
#' @export
load("data/crime_degree_tbl_df.rda")
NULL


#' Detroit Auto Workers: Education Levels
#'
#' This dataset, Detroit_tbl_df, is a tibble containing data on the educational levels of a sample
#' of 40 auto workers in Detroit. The dataset includes information on the highest level of education
#' attained by each worker.
#'
#' The dataset name has been kept as 'Detroit_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Detroit_tbl_df
#' @format A tibble with 40 observations and 1 variable:
#' \describe{
#'   \item{educ}{Educational level of the auto worker (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Detroit_tbl_df)
#' @export
load("data/Detroit_tbl_df.rda")
NULL


#' Dev Students: 2-Year & 4-Year College Demographics
#'
#' This dataset, Develop_tbl_df, is a tibble containing demographic data on students enrolled
#' in developmental education programs at 2-year and 4-year colleges. The dataset includes
#' information on the racial background of the students and whether they are enrolled in
#' 2-year or 4-year colleges.
#'
#' The dataset name has been kept as 'Develop_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Develop_tbl_df
#' @format A tibble with 5656 observations and 2 variables:
#' \describe{
#'   \item{race}{Racial background of the student (factor with 5 levels).}
#'   \item{college}{Type of college the student is enrolled in (factor with 2 levels: 2-year or 4-year).}
#' }
#' @source The dataset was taken from "Research in Development Education" (1994), V. 11, 2.
#' @usage data(Develop_tbl_df)
#' @export
load("data/Develop_tbl_df.rda")
NULL


#' Fall '95 Developmental Math: Failed Student Scores
#'
#' This dataset, Devmath_tbl_df, is a tibble containing test scores for students who failed
#' developmental mathematics in the fall semester of 1995. The dataset includes the scores
#' of these students as part of a simulated study.
#'
#' The dataset name has been kept as 'Devmath_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Devmath_tbl_df
#' @format A tibble with 40 observations and 1 variable:
#' \describe{
#'   \item{score}{Test scores of students who failed developmental mathematics (integer).}
#' }
#' @source The dataset was taken from the BSDA package. Data provided by Dr. Anita Kitchens.
#' @usage data(Devmath_tbl_df)
#' @export
load("data/Devmath_tbl_df.rda")
NULL


#' Drug use of students and parents
#'
#' This dataset, drug_use_tbl_df, is a tibble containing data on the drug use of students
#' and their parents. The dataset summarizes 445 student-parent pairs, with each pair indicating
#' whether the student and/or their parent has used drugs, specifically marijuana.
#'
#' The dataset name has been kept as 'drug_use_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name drug_use_tbl_df
#' @format A tibble with 445 observations and 2 variables:
#' \describe{
#'   \item{student}{Whether the student has used drugs (factor with 2 levels).}
#'   \item{parents}{Whether the parent has used drugs (factor with 2 levels).}
#' }
#' @source The dataset was taken from the openintro package.
#' Ellis GJ and Stone LH. 1979. Marijuana Use in College: An Evaluation of a Modeling Explanation.
#' Youth and Society 10:323-334.
#' @usage data(drug_use_tbl_df)
#' @export
load("data/drug_use_tbl_df.rda")
NULL


#' Dyslexia: Data on College Students Diagnosed with Dyslexia
#'
#' This dataset, Dyslexia_tbl_df, is a tibble containing data on a group of college students
#' diagnosed with dyslexia. The dataset includes various personal characteristics such as age,
#' gender, handedness, weight, height, and number of children, along with the number of words
#' they were able to read correctly.
#'
#' The dataset name has been kept as 'Dyslexia_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Dyslexia_tbl_df
#' @format A tibble with 8 observations and 7 variables:
#' \describe{
#'   \item{words}{Number of words read correctly (integer).}
#'   \item{age}{Age of the student (integer).}
#'   \item{gender}{Gender of the student (character).}
#'   \item{handed}{Handedness of the student (character).}
#'   \item{weight}{Weight of the student (integer).}
#'   \item{height}{Height of the student (integer).}
#'   \item{children}{Number of children the student has (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Dyslexia_tbl_df)
#' @export
load("data/Dyslexia_tbl_df.rda")
NULL



#' Engineering Grads Salary: 10 Years Post-Graduation
#'
#' This dataset, Engineer_tbl_df, is a tibble containing salary data for engineering graduates
#' 10 years after graduation. The dataset includes information on the salary of the graduates
#' and the type of university they graduated from (categorized into three types of universities).
#'
#' The dataset name has been kept as 'Engineer_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Engineer_tbl_df
#' @format A tibble with 51 observations and 2 variables:
#' \describe{
#'   \item{salary}{Salary of the engineering graduate 10 years after graduation (integer).}
#'   \item{university}{Type of university the graduate attended (factor with 3 levels).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Engineer_tbl_df)
#' @export
load("data/Engineer_tbl_df.rda")
NULL


#' College entrance exam scores for 24 high school seniors
#'
#' This dataset, Entrance_tbl_df, is a tibble containing the college entrance exam scores
#' of 24 high school seniors. The dataset includes information on their exam scores.
#'
#' The dataset name has been kept as 'Entrance_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Entrance_tbl_df
#' @format A tibble with 24 observations and 1 variable:
#' \describe{
#'   \item{score}{College entrance exam scores (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Entrance_tbl_df)
#' @export
load("data/Entrance_tbl_df.rda")
NULL


#' Exam Scores: Class of 19 Students
#'
#' This dataset, exams_tbl_df, is a tibble containing the exam scores of a class of 19 students.
#' The dataset includes information on their performance in a specific exam.
#'
#' The dataset name has been kept as 'exams_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name exams_tbl_df
#' @format A tibble with 19 observations and 1 variable:
#' \describe{
#'   \item{scores}{Exam scores of students (integer).}
#' }
#' @source The dataset was taken from the openintro package.
#' @usage data(exams_tbl_df)
#' @export
load("data/exams_tbl_df.rda")
NULL


#' Female College Student Heights
#'
#' This dataset, fheights_tbl_df, is a tibble containing the heights of 24 female college students,
#' measured in inches. The dataset provides insight into the physical characteristics of a specific
#' demographic group.
#'
#' The dataset name has been kept as 'fheights_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name fheights_tbl_df
#' @format A tibble with 24 observations and 1 variable:
#' \describe{
#'   \item{heights}{Heights of female college students, measured in inches (integer).}
#' }
#' @source The dataset was taken from the openintro package.
#' @usage data(fheights_tbl_df)
#' @export
load("data/fheights_tbl_df.rda")
NULL



#' Before and after German copying errors post-course
#'
#' This dataset, German_tbl_df, is a tibble containing data on the number of errors made by 20 students
#' when copying a German passage, both before and after participating in an experimental German course.
#' The dataset provides insights into language learning and the effectiveness of the course.
#'
#' The dataset name has been kept as 'German_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name German_tbl_df
#' @format A tibble with 20 observations and 3 variables:
#' \describe{
#'   \item{student}{Identifier for the student (character).}
#'   \item{when}{Indicates whether the errors were recorded "before" or "after" the experimental course (character).}
#'   \item{errors}{Number of errors made by the student when copying the German passage (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(German_tbl_df)
#' @export
load("data/German_tbl_df.rda")
NULL



#' Analytical Skills of Young Gifted Children
#'
#' This dataset, gifted_tbl_df, is a tibble containing data on the analytical skills of 36 young gifted children,
#' along with several factors that may influence these skills. The dataset includes measures such as parental IQ,
#' early developmental milestones, and television habits.
#'
#' The dataset name has been kept as 'gifted_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name gifted_tbl_df
#' @format A tibble with 36 observations and 8 variables:
#' \describe{
#'   \item{score}{Analytical skills score of the child (integer).}
#'   \item{fatheriq}{IQ of the father (integer).}
#'   \item{motheriq}{IQ of the mother (integer).}
#'   \item{speak}{Age in months when the child first said "mummy" or "daddy" (integer).}
#'   \item{count}{Age in months when the child first counted to 10 successfully (integer).}
#'   \item{read}{Average number of hours per week the child's parents read to the child (numeric).}
#'   \item{edutv}{Average number of hours per week the child watched educational TV programs in the past three months (numeric).}
#'   \item{cartoons}{Average number of hours per week the child watched cartoons on TV in the past three months (numeric).}
#' }
#' @source The dataset was taken from the openintro package.
#' Graybill, F.A. & Iyer, H.K., (1994) *Regression Analysis: Concepts and Applications*, Duxbury, p. 511-6.
#' @usage data(gifted_tbl_df)
#' @export
load("data/gifted_tbl_df.rda")
NULL

#' High School GPA versus College GPA
#'
#' This dataset, GPA_college_tbl_df, is a tibble containing data on the relationship between
#' high school GPA and college GPA for 10 students. The dataset is valuable for analyzing academic
#' performance correlations across different educational levels.
#'
#' The dataset name has been kept as 'GPA_college_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name GPA_college_tbl_df
#' @format A tibble with 10 observations and 2 variables:
#' \describe{
#'   \item{hsgpa}{High school GPA (numeric).}
#'   \item{collgpa}{College GPA (numeric).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(GPA_college_tbl_df)
#' @export
load("data/GPA_college_tbl_df.rda")
NULL


#' Survey of Duke Students on GPA, Studying, and More
#'
#' This dataset, gpa_tbl_df, is a tibble containing survey data from 55 Duke University students.
#' It includes information on students' GPA, weekly study hours, average hours of sleep per night,
#' time spent going out per week, and gender. The dataset provides valuable insights into the
#' relationship between academic performance and lifestyle habits.
#'
#' The dataset name has been kept as 'gpa_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name gpa_tbl_df
#' @format A tibble with 55 observations and 5 variables:
#' \describe{
#'   \item{gpa}{Grade Point Average (numeric).}
#'   \item{studyweek}{Number of hours spent studying per week (integer).}
#'   \item{sleepnight}{Average hours of sleep per night (numeric).}
#'   \item{out}{Average hours spent going out per week (numeric).}
#'   \item{gender}{Gender of the student (factor with levels "Male" and "Female").}
#' }
#' @source The dataset was taken from the openintro package.
#' @usage data(gpa_tbl_df)
#' @export
load("data/gpa_tbl_df.rda")
NULL



#' Test Grades in a Beginning Statistics Class
#'
#' This dataset, Grades_stats_tbl_df, is a tibble containing test grades for a beginning statistics class.
#' It includes the grades of 29 students and provides insights into the performance distribution
#' in an introductory statistics course.
#'
#' The dataset name has been kept as 'Grades_stats_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Grades_stats_tbl_df
#' @format A tibble with 29 observations and 1 variable:
#' \describe{
#'   \item{grades}{Test grades (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Grades_stats_tbl_df)
#' @export
load("data/Grades_stats_tbl_df.rda")
NULL


#' Relationship Between Watching TV and Grades (Simulated data)
#'
#' This dataset, gradestv_tbl_df, is a tibble containing simulated data for analyzing the relationship
#' between the number of hours per week students watch TV and their grades in a statistics class.
#' It provides a simple dataset for exploring correlations or regression models in educational settings.
#'
#' The dataset name has been kept as 'gradestv_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name gradestv_tbl_df
#' @format A tibble with 25 observations and 2 variables:
#' \describe{
#'   \item{tv}{Number of hours per week students watch TV (integer).}
#'   \item{grades}{Grade obtained in a statistics class (integer).}
#' }
#' @source The dataset was taken from the openintro package.
#' @usage data(gradestv_tbl_df)
#' @export
load("data/gradestv_tbl_df.rda")
NULL


#' Graduation Rates for Student Athletes in the Southeastern Conf.
#'
#' This dataset, Graduate_tbl_df, is a tibble containing data on the graduation rates for student athletes
#' in various schools within the Southeastern Conference. It includes the name of the school, a code for
#' identification, and the graduation rate as a percentage.
#'
#' The dataset name has been kept as 'Graduate_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Graduate_tbl_df
#' @format A tibble with 12 observations and 3 variables:
#' \describe{
#'   \item{school}{Name of the school (character).}
#'   \item{code}{Code for the school (character).}
#'   \item{percent}{Graduation rate as a percentage (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Graduate_tbl_df)
#' @export
load("data/Graduate_tbl_df.rda")
NULL


#' Study Habits of Students in Two Matched School Districts
#'
#' This dataset, Habits_tbl_df, is a tibble containing data on the study habits of students
#' in two matched school districts. It includes variables related to the number of hours students
#' from each district spent on studying, the difference between the two groups, and the significance
#' of this difference.
#'
#' The dataset name has been kept as 'Habits_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Habits_tbl_df
#' @format A tibble with 11 observations and 4 variables:
#' \describe{
#'   \item{A}{Number of study hours in the first school district (integer).}
#'   \item{B}{Number of study hours in the second school district (integer).}
#'   \item{differ}{Difference in study hours between the two school districts (integer).}
#'   \item{signrks}{Significance of the difference in study hours (numeric).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Habits_tbl_df)
#' @export
load("data/Habits_tbl_df.rda")
NULL




#' Effects of Open Education Reported by Hedges and Olkin (1985)
#'
#' This dataset, HedgesOlkin85_df, is a data frame containing data from Hedges and Olkin's
#' 1985 study on the effects of open education. The dataset includes variables related to
#' attitudes toward school and reading achievement in students, based on the meta-analysis
#' reported in their work. This data was used to investigate the effects of open education.
#'
#' The dataset name has been kept as 'HedgesOlkin85_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a data frame. The original content has not been modified
#' in any way.
#'
#' @name HedgesOlkin85_df
#' @format A data frame with 4 observations and 6 variables:
#' \describe{
#'   \item{study}{Study identifier (numeric).}
#'   \item{d_att}{Effect size for attitude toward school (numeric).}
#'   \item{d_ach}{Effect size for reading achievement (numeric).}
#'   \item{var_att}{Variance of the attitude effect size (numeric).}
#'   \item{cov_att_ach}{Covariance between attitude and achievement (numeric).}
#'   \item{var_ach}{Variance of the achievement effect size (numeric).}
#' }
#' @source The dataset was taken from the metaSEM package.
#' @references Hedges, L. V., & Olkin, I. (1985). Statistical methods for meta-analysis. Orlando, FL: Academic Press.
#' @usage data(HedgesOlkin85_df)
#' @export
load("data/HedgesOlkin85_df.rda")
NULL



#' Homework Hours: Private vs. Public High Schools
#'
#' This dataset, Homework_tbl_df, is a tibble containing data on the number of hours
#' per week high school students spend on homework. The dataset compares students
#' from private and public schools, providing insights into the study habits and
#' academic workload of students in these two types of schools.
#'
#' The dataset name has been kept as 'Homework_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Homework_tbl_df
#' @format A tibble with 30 observations and 2 variables:
#' \describe{
#'   \item{school}{Type of school the student attends, either private or public (character).}
#'   \item{time}{Number of hours per week the student spends on homework (numeric).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Homework_tbl_df)
#' @export
load("data/Homework_tbl_df.rda")
NULL



#' Job satisfaction and stress level for 9 school teachers
#'
#' This dataset, Jobsat_tbl_df, is a tibble containing data on job satisfaction and stress
#' levels for 9 school teachers. The dataset provides insights into how teachers' stress levels
#' relate to their job satisfaction, which can be valuable for understanding workplace dynamics
#' and improving teacher well-being.
#'
#' The dataset name has been kept as 'Jobsat_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Jobsat_tbl_df
#' @format A tibble with 9 observations and 2 variables:
#' \describe{
#'   \item{wspt}{Stress level of the teacher, measured on a scale (integer).}
#'   \item{satisfaction}{Job satisfaction level of the teacher (numeric).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Jobsat_tbl_df)
#' @export
load("data/Jobsat_tbl_df.rda")
NULL


#' First Grade Reading Scores: With vs. Without Kindergarten
#'
#' This dataset, Kinder_tbl_df, is a tibble containing data on the reading scores of first grade
#' children who attended kindergarten versus those who did not. The dataset provides insights
#' into the impact of attending kindergarten on early reading abilities, which can help in evaluating
#' the effectiveness of early childhood education programs.
#'
#' The dataset name has been kept as 'Kinder_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Kinder_tbl_df
#' @format A tibble with 8 observations and 3 variables:
#' \describe{
#'   \item{pair}{Pair identifier for the group of children (integer).}
#'   \item{kinder}{Reading score for children who attended kindergarten (integer).}
#'   \item{nokinder}{Reading score for children who did not attend kindergarten (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Kinder_tbl_df)
#' @export
load("data/Kinder_tbl_df.rda")
NULL


#' Reading skills of 24 matched low ability students
#'
#' This dataset, Lowabil_tbl_df, is a tibble containing data on the reading skills of 24
#' students with low abilities, who were matched based on certain characteristics. The dataset
#' compares the performance of the students in two different groups: the experimental group and the control group.
#' This can be used to evaluate the effectiveness of an intervention or treatment in improving reading skills.
#'
#' The dataset name has been kept as 'Lowabil_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Lowabil_tbl_df
#' @format A tibble with 12 observations and 3 variables:
#' \describe{
#'   \item{pair}{Pair identifier for the matched students (integer).}
#'   \item{experiment}{Reading score for students in the experimental group (integer).}
#'   \item{control}{Reading score for students in the control group (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Lowabil_tbl_df)
#' @export
load("data/Lowabil_tbl_df.rda")
NULL


#' Survey of Duke students and the area of their major
#'
#' This dataset, major_survey_tbl_df, is a tibble containing information about the GPAs
#' of 218 Duke students and their academic major. The dataset provides insights into the
#' relationship between GPA and the field of study, allowing for an exploration of how
#' academic performance varies across different majors.
#'
#' The dataset name has been kept as 'major_survey_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name major_survey_tbl_df
#' @format A tibble with 218 observations and 2 variables:
#' \describe{
#'   \item{gpa}{Grade point average of the student (numeric).}
#'   \item{major}{Academic major of the student (factor with 3 levels).}
#' }
#' @source The dataset was taken from the openintro package.
#' @usage data(major_survey_tbl_df)
#' @export
load("data/major_survey_tbl_df.rda")
NULL



#' Standardized Math Test Scores for 30 Students
#'
#' This dataset, Math_scores_tbl_df, is a tibble containing the standardized math test scores
#' of 30 students. The dataset is useful for analyzing the distribution of math scores and
#' exploring factors that might influence math performance in educational settings.
#'
#' The dataset name has been kept as 'Math_scores_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Math_scores_tbl_df
#' @format A tibble with 30 observations and 1 variable:
#' \describe{
#'   \item{score}{Standardized math test score (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Math_scores_tbl_df)
#' @export
load("data/Math_scores_tbl_df.rda")
NULL



#' Incoming Freshmen Math Competency at a Community College
#'
#' This dataset, Mathcomp_tbl_df, is a tibble containing the standardized math competency scores
#' for a group of 31 entering freshmen at a small community college. The dataset provides insights
#' into the initial math skills of incoming students, which could be useful for evaluating preparedness
#' and designing interventions to improve academic success.
#'
#' The dataset name has been kept as 'Mathcomp_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Mathcomp_tbl_df
#' @format A tibble with 31 observations and 1 variable:
#' \describe{
#'   \item{score}{Standardized math competency score (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Mathcomp_tbl_df)
#' @export
load("data/Mathcomp_tbl_df.rda")
NULL


#' Math Proficiency and SAT Math Scores by State
#'
#' This dataset, Mathpro_tbl_df, is a tibble containing information on math proficiency percentages,
#' SAT math scores, and group classifications for 51 states in the United States. The dataset provides
#' insights into how math proficiency and SAT scores vary by state, allowing for comparative analysis
#' and exploration of regional trends in mathematics education.
#'
#' The dataset name has been kept as 'Mathpro_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Mathpro_tbl_df
#' @format A tibble with 51 observations and 4 variables:
#' \describe{
#'   \item{state}{Name of the state (character).}
#'   \item{sat_math}{Average SAT math score for the state (integer).}
#'   \item{profic}{Math proficiency percentage for the state (numeric).}
#'   \item{group}{Group classification for the state (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Mathpro_tbl_df)
#' @export
load("data/Mathpro_tbl_df.rda")
NULL


#' Graduate School Applicants' Miller Personality Test Scores
#'
#' This dataset, Miller_scores_tbl_df, is a tibble containing the Miller Personality Test scores
#' for 25 college students applying for graduate school. This dataset allows for an exploration of
#' personality traits and their potential correlation with academic or professional success.
#'
#' The dataset name has been kept as 'Miller_scores_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Miller_scores_tbl_df
#' @format A tibble with 25 observations and 1 variable:
#' \describe{
#'   \item{miller}{Miller Personality Test score for a student (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Miller_scores_tbl_df)
#' @export
load("data/Miller_scores_tbl_df.rda")
NULL


#' Music Recognition Learning in Identical Twins
#'
#' This dataset, Music_tbl_df, is a tibble containing improvement scores for identical twins
#' taught music recognition using two different techniques. Each pair of twins was taught using
#' both methods, and the differences in their improvement scores were recorded.
#'
#' The dataset name has been kept as 'Music_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Music_tbl_df
#' @format A tibble with 12 observations and 3 variables:
#' \describe{
#'   \item{method1}{Improvement scores using the first music recognition technique (integer).}
#'   \item{method2}{Improvement scores using the second music recognition technique (integer).}
#'   \item{differ}{Difference in improvement scores between the two methods (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Music_tbl_df)
#' @export
load("data/Music_tbl_df.rda")
NULL

#' State University Freshmen: Parental Education Profiles
#'
#' This dataset, Parented_tbl_df, is a tibble containing information about the education levels
#' of parents of 200 entering freshmen at a state university. The dataset provides insights into
#' the distribution of parental education backgrounds and their possible influence on students'
#' academic paths.
#'
#' The dataset name has been kept as 'Parented_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Parented_tbl_df
#' @format A tibble with 200 observations and 2 variables:
#' \describe{
#'   \item{education}{Education level of the parent (factor with 6 levels).}
#'   \item{parent}{Parent type (factor with 2 levels: "mother" or "father").}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Parented_tbl_df)
#' @export
load("data/Parented_tbl_df.rda")
NULL


#' Racial Prejudice Scores of High School Students
#'
#' This dataset, Prejudic_tbl_df, is a tibble containing scores measuring racial prejudice
#' among a sample of 25 high school students. The dataset provides insights into attitudes
#' related to racial prejudice within this demographic.
#'
#' The dataset name has been kept as 'Prejudic_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Prejudic_tbl_df
#' @format A tibble with 25 observations and 1 variable:
#' \describe{
#'   \item{prejud}{Racial prejudice score (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Prejudic_tbl_df)
#' @export
load("data/Prejudic_tbl_df.rda")
NULL


#' Effects of Learning Methods on Statistics Students
#'
#' This dataset, Program_stats_tbl_df, is a tibble containing information about the
#' effects of four different methods of programmed learning on statistics students.
#' It includes the learning method used and the corresponding scores of the students.
#'
#' The dataset name has been kept as 'Program_stats_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Program_stats_tbl_df
#' @format A tibble with 44 observations and 2 variables:
#' \describe{
#'   \item{method}{Programmed learning method (character).}
#'   \item{score}{Score obtained by the student (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Program_stats_tbl_df)
#' @export
load("data/Program_stats_tbl_df.rda")
NULL


#' Relationship Between PSAT and SAT Scores
#'
#' This dataset, PSAT_SAT_tbl_df, is a tibble containing paired data on PSAT
#' and SAT scores for a sample of students. It allows for the exploration of
#' the relationship between performance on the PSAT and SAT exams.
#'
#' The dataset name has been kept as 'PSAT_SAT_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name PSAT_SAT_tbl_df
#' @format A tibble with 7 observations and 2 variables:
#' \describe{
#'   \item{psat}{PSAT scores (integer).}
#'   \item{sat}{SAT scores (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(PSAT_SAT_tbl_df)
#' @export
load("data/PSAT_SAT_tbl_df.rda")
NULL



#' Quiz vs Lecture Pulse Rates
#'
#' This dataset, QuizPulse10_df, is a data frame containing paired data on pulse rates
#' for 10 students during a quiz and a lecture. The dataset allows for the exploration
#' of how pulse rates differ during these two activities.
#'
#' The dataset name has been kept as 'QuizPulse10_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The original content has not been modified in any way.
#'
#' @name QuizPulse10_df
#' @format A data frame with 10 observations and 3 variables:
#' \describe{
#'   \item{Student}{Student ID (integer).}
#'   \item{Quiz}{Pulse rate during the quiz (integer).}
#'   \item{Lecture}{Pulse rate during the lecture (integer).}
#' }
#' @source The dataset was taken from the Lock5Data package.
#' @usage data(QuizPulse10_df)
#' @export
load("data/QuizPulse10_df.rda")
NULL

#' Reading Scores vs IQ Scores
#'
#' This dataset, Readiq_tbl_df, is a tibble containing paired data on reading scores
#' and IQ scores for a sample of individuals. It allows for the exploration of the
#' relationship between reading ability and IQ scores.
#'
#' The dataset name has been kept as 'Readiq_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Readiq_tbl_df
#' @format A tibble with 14 observations and 2 variables:
#' \describe{
#'   \item{reading}{Reading scores (integer).}
#'   \item{iq}{IQ scores (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Readiq_tbl_df)
#' @export
load("data/Readiq_tbl_df.rda")
NULL


#' Simulated data for SAT score improvement
#'
#' This dataset, sat_improve_tbl_df, is a tibble containing simulated data on SAT score
#' improvements for a sample of students who took a course from an SAT score improvement company.
#' It allows for the exploration of score improvements from students who enrolled in the course.
#'
#' The dataset name has been kept as 'sat_improve_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name sat_improve_tbl_df
#' @format A tibble with 30 observations and 1 variable:
#' \describe{
#'   \item{sat_improve}{SAT score improvement (integer).}
#' }
#' @source The dataset was taken from the openintro package.
#' @usage data(sat_improve_tbl_df)
#' @export
load("data/sat_improve_tbl_df.rda")
NULL


#' Schizophrenic Learning Ability After Tranquilizer Dose
#'
#' This dataset, Schizoph_tbl_df, is a tibble containing standardized exam scores
#' for 13 patients. The data was collected to investigate the learning ability of
#' schizophrenics after being given a specified dose of a tranquilizer.
#'
#' The dataset name has been kept as 'Schizoph_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Schizoph_tbl_df
#' @format A tibble with 13 observations and 1 variable:
#' \describe{
#'   \item{score}{Standardized exam scores (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Schizoph_tbl_df)
#' @export
load("data/Schizoph_tbl_df.rda")
NULL


#' Final exam scores for twenty students
#'
#' This dataset, stats_scores_tbl_df, is a tibble containing the final exam scores
#' of 20 students. The data provides insights into the academic performance of
#' the students in their final exam for a statistics course.
#'
#' The dataset name has been kept as 'stats_scores_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name stats_scores_tbl_df
#' @format A tibble with 20 observations and 1 variable:
#' \describe{
#'   \item{scores}{Final exam scores (integer).}
#' }
#' @source The dataset was taken from the openintro package.
#' @usage data(stats_scores_tbl_df)
#' @export
load("data/stats_scores_tbl_df.rda")
NULL


#' Sleep for 110 college students (simulated)
#'
#' This dataset, student_sleep_tbl_df, is a tibble containing the number of hours
#' that 110 college students slept in a single night. The data allows for the analysis
#' of sleep patterns among college students, potentially useful for understanding
#' the relationship between sleep and academic performance, well-being, or other factors.
#'
#' The dataset name has been kept as 'student_sleep_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name student_sleep_tbl_df
#' @format A tibble with 110 observations and 1 variable:
#' \describe{
#'   \item{hours}{Number of hours slept (numeric).}
#' }
#' @source The dataset was taken from the openintro package.
#' @usage data(student_sleep_tbl_df)
#' @export
load("data/student_sleep_tbl_df.rda")
NULL



#' Hours Studied by Freshmen
#'
#' This dataset, Study_freshmen_tbl_df, is a tibble containing the number of hours
#' studied per week by a sample of 50 freshmen. It allows for the exploration of study habits
#' and potentially provides insights into the relationship between study time and academic performance
#' among college freshmen.
#'
#' The dataset name has been kept as 'Study_freshmen_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
#' in any way.
#'
#' @name Study_freshmen_tbl_df
#' @format A tibble with 50 observations and 1 variable:
#' \describe{
#'   \item{hours}{Number of hours studied per week (integer).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Study_freshmen_tbl_df)
#' @export
load("data/Study_freshmen_tbl_df.rda")
NULL

#' Tennessee Self-Concept Scores for Gifted Students
#'
#' This dataset, Tennessee_gifted_df, is a data frame containing the self-concept scores
#' for 20 gifted high school students in Tennessee. It allows for the exploration of self-concept
#' in the context of gifted students and may provide insights into their self-perception and
#' potential academic achievement.
#'
#' The dataset name has been kept as 'Tennessee_gifted_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The original content has not been modified in any way.
#'
#' @name Tennessee_gifted_df
#' @format A data frame with 20 observations and 1 variable:
#' \describe{
#'   \item{score}{Self-concept scores for gifted students (numeric).}
#' }
#' @source The dataset was taken from the BSDA package.
#' @usage data(Tennessee_gifted_df)
#' @export
load("data/Tennessee_gifted_df.rda")
NULL


#' Textbook Costs for Different Fields
#'
#' This dataset, TextbookCosts_df, is a data frame containing information about
#' the number of textbooks and their total costs for different fields of study.
#' It allows for the exploration of textbook expenses in various academic disciplines.
#'
#' The dataset name has been kept as 'TextbookCosts_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The original content has not been modified in any way.
#'
#' @name TextbookCosts_df
#' @format A data frame with 40 observations and 3 variables:
#' \describe{
#'   \item{Field}{Field of study (factor with 4 levels).}
#'   \item{Books}{Number of textbooks (integer).}
#'   \item{Cost}{Total cost of textbooks (integer).}
#' }
#' @source The dataset was taken from the Lock5Data package.
#' @usage data(TextbookCosts_df)
#' @export
load("data/TextbookCosts_df.rda")
NULL


#' Student Admissions at UC Berkeley
#'
#' This dataset, UCBAdmissions_table, is a contingency table containing
#' aggregate data on applicants to graduate school at UC Berkeley in 1973.
#' The data is classified by admission status, gender, and department, and
#' it provides insights into admissions patterns for the six largest departments.
#'
#' The dataset name has been kept as 'UCBAdmissions_table' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' educationR package and assists users in identifying its specific characteristics.
#' The original content has not been modified in any way.
#'
#' @name UCBAdmissions_table
#' @format A contingency table with 24 cells (2 × 2 × 6), classified by:
#' \describe{
#'   \item{Admit}{Admission status (Admitted, Rejected).}
#'   \item{Gender}{Gender of the applicants (Male, Female).}
#'   \item{Dept}{Department (A, B, C, D, E, F).}
#' }
#' The table entries are the number of applicants.
#' @source The dataset was taken from the datasets package.
#' @usage data(UCBAdmissions_table)
#' @export
load("data/UCBAdmissions_table.rda")
NULL



