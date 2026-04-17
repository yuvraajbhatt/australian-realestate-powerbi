library(tidyverse)

# Load raw data
real_estate_data <- read_csv("aus_real_estate.csv")

# Clean and engineer features
clean_real_estate <- real_estate_data %>%
  mutate(
    State = case_when(
      City == "Sydney"    ~ "NSW",
      City == "Melbourne" ~ "VIC",
      City == "Brisbane"  ~ "QLD",
      City == "Perth"     ~ "WA",
      City == "Adelaide"  ~ "SA",
      TRUE ~ State
    )
  ) %>%
  mutate(
    Garage = ifelse(Garage == 1, "Yes", "No")
  ) %>%
  mutate(
    Price_Per_SqFt = round(Price / SqFt, 2)
  ) %>%
  mutate(
    Property_Age = 2026 - Year_Built
  ) %>%
  mutate(
    Price_Tier = case_when(
      Price < 750000                        ~ "1. Entry-Level (<$750k)",
      Price >= 750000 & Price < 1500000     ~ "2. Mid-Market ($750k - $1.5M)",
      Price >= 1500000                      ~ "3. Premium ($1.5M+)"
    )
  ) %>%
  distinct()

# Export cleaned data for Power BI
write_csv(clean_real_estate, "Cleaned_Real_Estate_For_PowerBI.csv")
