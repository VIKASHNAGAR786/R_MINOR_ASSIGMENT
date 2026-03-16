# Question 2: Write a R program to access the last value in a given vector.

# Sample vector
v <- c(10, 20, 30, 40, 50, 60, 70)
cat("Vector:", v, "\n\n")

# Method 1: Using length() - most common way
last_value_1 <- v[length(v)]
cat("Method 1 - Using length():", last_value_1, "\n")

# Method 2: Using tail() function - returns last n elements
last_value_2 <- tail(v, 1)
cat("Method 2 - Using tail():", last_value_2, "\n")

# Method 3: Using negative indexing with dplyr (base R with rev)
last_value_3 <- rev(v)[1]
cat("Method 3 - Using rev()[1]:", last_value_3, "\n\n")

# Another example with character vector
names_vec <- c("Alice", "Bob", "Charlie", "Diana", "Eve")
cat("Character Vector:", names_vec, "\n")
cat("Last value:", names_vec[length(names_vec)], "\n")
