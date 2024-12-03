# educationR

The `educationR` package provides a comprehensive collection of datasets related to education, covering topics such as student performance, 
learning methods, test scores, absenteeism, and other educational metrics. This package is designed as a resource for educational researchers, 
data analysts, and statisticians to explore and analyze data in the field of education.

The datasets included in `educationR` span various aspects of education, offering a range of formats, from tabular to tibbles. 
Each dataset is named with a suffix indicating its structure or type, making it easier to understand and work with the data.

## Installation

You can install the `educationR` package from CRAN with the following R function:

```R

install.packages("educationR")

```

## Usage

After installation, you can load the package and begin exploring the datasets. 
The consistent naming convention helps you easily identify the structure of each dataset:

- `_tbl_df`: Tibble.
- `_df`: Data frame.
- `_table`: Table.

## Example Code:


```R

# Load the package
library(educationR)

# Load a dataset
data("Achieve_tbl_df")

# View the dataset
head(Achieve_tbl_df)

# Load another dataset
data("UCBAdmissions_table")

# View the tabular dataset
summary(UCBAdmissions_table)


```

## Example Datasets

Here are some example datasets included in the `educationR` package:

- `Achieve_tbl_df`: Math Achievement Test Scores by Gender (_tbl_df for tibble).

- `GPA_college_tbl_df`: High School GPA versus College GPA (_tbl_df for tibble).

- `QuizPulse10_df`: Quiz vs Lecture Pulse Rates (_df for data frame).

- `UCBAdmissions_table`: Student Admissions at UC Berkeley (_table for tabular data).

- `exams_tbl_df`: Exam Scores: Class of 19 Students (_tbl_df for tibble).
