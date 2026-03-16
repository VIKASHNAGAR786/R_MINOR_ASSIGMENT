# Question 11: airquality Dataset Analysis

# ============================================================
# Part a: Load the dataset and inspect its structure.
#         Count missing values in each column.
# ============================================================
data("airquality")

cat("=== Part a: Structure of airquality dataset ===\n")
str(airquality)
cat("\nFirst 6 rows:\n")
print(head(airquality))

cat("\nMissing values in each column:\n")
print(colSums(is.na(airquality)))


# ============================================================
# Part b: Base R summaries per month
# ============================================================
cat("\n=== Part b: Base R Summaries per Month ===\n")

# i. Mean ozone concentration (ignore NAs)
cat("\ni. Mean Ozone per Month:\n")
mean_ozone <- tapply(airquality$Ozone, airquality$Month, mean, na.rm = TRUE)
print(round(mean_ozone, 1))

# ii. Maximum wind speed per month
cat("\nii. Maximum Wind Speed per Month:\n")
max_wind <- tapply(airquality$Wind, airquality$Month, max, na.rm = TRUE)
print(max_wind)

# iii. Min, Mean, and Max temperature per month
cat("\niii. Temperature Statistics per Month:\n")
temp_min  <- tapply(airquality$Temp, airquality$Month, min,  na.rm = TRUE)
temp_mean <- tapply(airquality$Temp, airquality$Month, mean, na.rm = TRUE)
temp_max  <- tapply(airquality$Temp, airquality$Month, max,  na.rm = TRUE)

temp_summary <- data.frame(
  Month    = names(temp_min),
  Min_Temp = temp_min,
  Mean_Temp = round(temp_mean, 1),
  Max_Temp = temp_max
)
print(temp_summary)


# ============================================================
# Part c: dplyr summaries per month
# ============================================================
cat("\n=== Part c: dplyr Summaries per Month ===\n")
library(dplyr)

dplyr_summary <- airquality %>%
  group_by(Month) %>%
  summarise(
    Mean_Ozone   = round(mean(Ozone, na.rm = TRUE), 1),
    Max_Wind     = max(Wind,  na.rm = TRUE),
    Min_Temp     = min(Temp,  na.rm = TRUE),
    Mean_Temp    = round(mean(Temp, na.rm = TRUE), 1),
    Max_Temp     = max(Temp,  na.rm = TRUE),
    .groups = "drop"
  )
print(dplyr_summary)


# ============================================================
# Part d: Create Temp_category column
# ============================================================
cat("\n=== Part d: Add Temp_category Column ===\n")

airquality <- airquality %>%
  mutate(Temp_category = case_when(
    Temp < 70              ~ "Cool",
    Temp >= 70 & Temp < 80 ~ "Mild",
    Temp >= 80             ~ "Hot"
  ))

cat("Sample rows with Temp_category:\n")
print(head(airquality[, c("Month", "Day", "Temp", "Temp_category")], 10))


# ============================================================
# Part e: Count days in each temperature category per month
# ============================================================
cat("\n=== Part e: Days per Temperature Category per Month ===\n")

temp_category_count <- airquality %>%
  group_by(Month, Temp_category) %>%
  summarise(Days = n(), .groups = "drop")

print(temp_category_count)


# ============================================================
# Part f: Clean summary table per month
# ============================================================
cat("\n=== Part f: Clean Monthly Summary Table ===\n")

# Find prevailing temperature category (highest count) per month
prevailing_temp <- airquality %>%
  group_by(Month, Temp_category) %>%
  summarise(Days = n(), .groups = "drop") %>%
  group_by(Month) %>%
  slice_max(Days, n = 1, with_ties = FALSE) %>%
  select(Month, Prevailing_Temp_Category = Temp_category)

# Build the full clean summary
clean_summary <- airquality %>%
  group_by(Month) %>%
  summarise(
    N_Observations  = n(),
    Avg_Ozone       = round(mean(Ozone,   na.rm = TRUE), 1),
    Avg_Solar.R     = round(mean(Solar.R, na.rm = TRUE), 1),
    Avg_Wind        = round(mean(Wind,    na.rm = TRUE), 1),
    Avg_Temp        = round(mean(Temp,    na.rm = TRUE), 1),
    .groups = "drop"
  ) %>%
  left_join(prevailing_temp, by = "Month")

print(clean_summary)


# ============================================================
# Part g: Add cumulative_heat column (cumulative sum of Temp per month)
# ============================================================
cat("\n=== Part g: Add cumulative_heat Column ===\n")

airquality <- airquality %>%
  group_by(Month) %>%
  mutate(cumulative_heat = cumsum(Temp)) %>%
  ungroup()

cat("Sample rows showing cumulative_heat per month:\n")
print(airquality[, c("Month", "Day", "Temp", "cumulative_heat")] %>%
        filter(Month == 5) %>%
        head(10))
