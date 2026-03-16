# Question 1: Write a R program to concatenate a vector.

# Method 1: Concatenate two numeric vectors
v1 <- c(1, 2, 3, 4, 5)
v2 <- c(6, 7, 8, 9, 10)

result <- c(v1, v2)
cat("Vector 1:", v1, "\n")
cat("Vector 2:", v2, "\n")
cat("Concatenated Vector:", result, "\n\n")

# Method 2: Concatenate character vectors
fruits1 <- c("Apple", "Banana", "Cherry")
fruits2 <- c("Date", "Elderberry", "Fig")

combined_fruits <- c(fruits1, fruits2)
cat("Fruits Vector 1:", fruits1, "\n")
cat("Fruits Vector 2:", fruits2, "\n")
cat("Concatenated Fruits:", combined_fruits, "\n\n")

# Method 3: using append() function
v3 <- c(10, 20, 30)
v4 <- c(40, 50, 60)

appended_result <- append(v3, v4)
cat("Using append():", appended_result, "\n")
