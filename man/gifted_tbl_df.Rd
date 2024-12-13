% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-documentation.R
\name{gifted_tbl_df}
\alias{gifted_tbl_df}
\title{Analytical Skills of Young Gifted Children}
\format{
A tibble with 36 observations and 8 variables:
\describe{
  \item{score}{Analytical skills score of the child (integer).}
  \item{fatheriq}{IQ of the father (integer).}
  \item{motheriq}{IQ of the mother (integer).}
  \item{speak}{Age in months when the child first said "mummy" or "daddy" (integer).}
  \item{count}{Age in months when the child first counted to 10 successfully (integer).}
  \item{read}{Average number of hours per week the child's parents read to the child (numeric).}
  \item{edutv}{Average number of hours per week the child watched educational TV programs in the past three months (numeric).}
  \item{cartoons}{Average number of hours per week the child watched cartoons on TV in the past three months (numeric).}
}
}
\source{
The dataset was taken from the openintro package.
Graybill, F.A. & Iyer, H.K., (1994) *Regression Analysis: Concepts and Applications*, Duxbury, p. 511-6.
}
\usage{
data(gifted_tbl_df)
}
\description{
This dataset, gifted_tbl_df, is a tibble containing data on the analytical skills of 36 young gifted children,
along with several factors that may influence these skills. The dataset includes measures such as parental IQ,
early developmental milestones, and television habits.
}
\details{
The dataset name has been kept as 'gifted_tbl_df' to avoid confusion with other datasets
in the R ecosystem. This naming convention helps distinguish this dataset as part of the
educationR package and assists users in identifying its specific characteristics.
The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
in any way.
}
