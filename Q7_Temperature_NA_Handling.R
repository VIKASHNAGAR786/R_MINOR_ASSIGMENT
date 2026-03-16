# Question 7: Temperature Data with NA Handling
# temps <- c(22.5, 23.0, NA, 21.5, 24.0, NA, 22.0)

temps <- c(22.5, 23.0, NA, 21.5, 24.0, NA, 22.0)
cat("Temperature data:", temps, "\n\n")

# Part a: Check which elements are missing using is.na()
missing_check <- is.na(temps)
cat("Part a - Which elements are NA (is.na()):\n")
print(missing_check)
cat("\nPosition(s) with NA:", which(missing_check), "\n\n")

# Part b: Calculate the average (mean) temperature (ignoring NAs)
avg_temp <- mean(temps, na.rm = TRUE)
cat("Part b - Average (mean) temperature (ignoring NAs):", avg_temp, "°C\n\n")

# Bonus: Count of missing values
cat("Total number of NA values:", sum(missing_check), "\n")
cat("Total valid readings:", sum(!missing_check), "\n")
