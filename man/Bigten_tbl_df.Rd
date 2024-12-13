% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-documentation.R
\name{Bigten_tbl_df}
\alias{Bigten_tbl_df}
\title{Grad Rates: Athletes vs. Non-Athletes Big Ten Conf.}
\format{
A tibble with 44 observations and 4 variables:
\describe{
  \item{school}{Name of the school (character).}
  \item{year}{Year of the data (factor with 2 levels).}
  \item{rate}{Graduation rate percentage (integer).}
  \item{status}{Athlete status (character, either 'Athlete' or 'Nonathlete').}
}
}
\source{
NCAA Graduation Rates Report, 2000.
}
\usage{
data(Bigten_tbl_df)
}
\description{
This dataset, Bigten_tbl_df, is a tibble containing information about the graduation rates of
student athletes and nonathletes in the Big Ten Conference. The dataset includes data from two
academic years, showing the graduation rates by school and athlete status (athletes vs nonathletes).
}
\details{
The dataset name has been kept as 'Bigten_tbl_df' to avoid confusion with other datasets
in the R ecosystem. This naming convention helps distinguish this dataset as part of the
educationR package and assists users in identifying its specific characteristics.
The suffix 'tbl_df' indicates that the dataset is a tibble. The original content has not been modified
in any way.
}
