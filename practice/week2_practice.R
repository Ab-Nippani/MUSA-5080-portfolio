library(tidycensus)
library(tidyverse)

# Loading the data

pa_income <- get_acs(
  geography="county",
  variables = "B19013_001",
  state = "PA",
  year = 2023,
  survey = "acs5"
)

# Counties where the margin of error is bigger than 3000
  filter(pa_income, moe > 3000)
    # 15
# Counties where the estimate is under 50000
  filter(pa_income, estimate < 50000)
  # 1

