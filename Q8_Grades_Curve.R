# Question 8: Grades with Curve
# grades <- c(85, 92, 78, 88, 95)

grades <- c(85, 92, 78, 88, 95)
cat("Original grades:", grades, "\n\n")

# Part a: Add 5 points to every student's grade
curved_grades <- grades + 5
cat("Part a - Grades after adding 5 points:", curved_grades, "\n\n")

# Part b: Cap the maximum score at 100
# (if a grade exceeds 100, set it to 100)
final_grades <- pmin(curved_grades, 100)
cat("Part b - Final grades (capped at 100):", final_grades, "\n\n")

# Summary table
cat("=== Grade Summary ===\n")
cat(sprintf("%-10s %-15s %-15s\n", "Student", "Original", "Final(+5,cap100)"))
cat(strrep("-", 45), "\n")
for (i in seq_along(grades)) {
  cat(sprintf("%-10s %-15d %-15d\n", paste0("S", i), grades[i], final_grades[i]))
}
cat("\nClass average after curve:", mean(final_grades), "\n")
