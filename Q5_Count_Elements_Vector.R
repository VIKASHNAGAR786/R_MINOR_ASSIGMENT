# Question 5: What function would you use to check the number of elements
# in a vector?

# The function used to check the number of elements in a vector is: length()

# Example 1: Numeric vector
num_vec <- c(10, 20, 30, 40, 50)
cat("Numeric Vector:", num_vec, "\n")
cat("Number of elements (length):", length(num_vec), "\n\n")

# Example 2: Character vector
char_vec <- c("Apple", "Banana", "Cherry", "Date")
cat("Character Vector:", char_vec, "\n")
cat("Number of elements (length):", length(char_vec), "\n\n")

# Example 3: Logical vector
log_vec <- c(TRUE, FALSE, TRUE, TRUE, FALSE, TRUE)
cat("Logical Vector:", log_vec, "\n")
cat("Number of elements (length):", length(log_vec), "\n\n")

# Example 4: Mixed / Empty vector
empty_vec <- c()
cat("Empty Vector: (none)\n")
cat("Number of elements (length):", length(empty_vec), "\n\n")

# Summary:
cat("=== SUMMARY ===\n")
cat("Function used: length()\n")
cat("Syntax: length(vector_name)\n")
cat("Returns: An integer giving the number of elements in the vector\n")
